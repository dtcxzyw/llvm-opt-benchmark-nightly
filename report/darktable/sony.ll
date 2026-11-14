Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/sony?download=true
inline.NumInlined: 98
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6LibRaw21parseSonyLensFeaturesEhh:bb.a

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cf = phi i64 [ 16, %bb.av ], [ %i.ce, %bb.aw ]
  %i.cg = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull @.str.15, i64 noundef %i.cf) #19 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.al, %bb.as, %bb.ax, %bb.ar, %bb.af
  %i.ch = and i32 %i.l, 1
  %.not39 = icmp eq i32 %i.ch, 0
  br i1 %.not39, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ci = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.cj = icmp ult i64 %i.ci, 16
  br i1 %i.cj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ck = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.cl = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.cm = icmp ult i64 %i.cl, 16
  br i1 %i.cm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cn = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.co = sub i64 15, %i.cn
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.cp = phi i64 [ 16, %bb.bb ], [ %i.co, %bb.bc ]
  %i.cq = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull @.str.16, i64 noundef %i.cp) #19 ; 0 uses
  br label %bb.bk

bb.be:                                            ; preds = %bb.ay
  %i.cr = and i32 %i.l, 2
  %.not40 = icmp eq i32 %i.cr, 0
  br i1 %.not40, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cs = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.ct = icmp ult i64 %i.cs, 16
  br i1 %i.ct, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.cu = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.cv = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.cw = icmp ult i64 %i.cv, 16
  br i1 %i.cw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.cx = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.cy = sub i64 15, %i.cx
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.cz = phi i64 [ 16, %bb.bh ], [ %i.cy, %bb.bi ]
  %i.da = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull @.str.17, i64 noundef %i.cz) #19 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.be, %bb.bj, %bb.bd
  %.not41 = icmp sgt i16 %i.b, -1
  br i1 %.not41, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.db = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dc = icmp ult i64 %i.db, 16
  br i1 %i.dc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.dd = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15) ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.de = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.df = icmp ult i64 %i.de, 16
  br i1 %i.df, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.dg = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dh = sub i64 15, %i.dg
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.di = phi i64 [ 16, %bb.bn ], [ %i.dh, %bb.bo ]
  %i.dj = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull @.str.18, i64 noundef %i.di) #19 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  %i.dk = and i32 %i.l, 8192
  %.not42 = icmp eq i32 %i.dk, 0
  br i1 %.not42, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dl = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dm = icmp ult i64 %i.dl, 16
  br i1 %i.dm, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.dn = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.do = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dp = icmp ult i64 %i.do, 16
  br i1 %i.dp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.dq = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dr = sub i64 15, %i.dq
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ds = phi i64 [ 16, %bb.bt ], [ %i.dr, %bb.bu ]
  %i.dt = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull @.str.19, i64 noundef %i.ds) #19 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %i.du = and i32 %i.l, 2048
  %.not43 = icmp eq i32 %i.du, 0
  br i1 %.not43, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dv = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dw = icmp ult i64 %i.dv, 16
  br i1 %i.dw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.dx = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15) ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.dy = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.dz = icmp ult i64 %i.dy, 16
  br i1 %i.dz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ea = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.eb = sub i64 15, %i.ea
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ec = phi i64 [ 16, %bb.bz ], [ %i.eb, %bb.ca ]
  %i.ed = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull @.str.20, i64 noundef %i.ec) #19 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bw
  %i.ee = load i8, ptr %i.k, align 2, !tbaa !96
  %i.ef = icmp eq i8 %i.ee, 32
  br i1 %i.ef, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1439
  %i.eh = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.k, i64 noundef 15)
  %i.ei = add i64 %i.eh, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.k, ptr nonnull align 1 %i.eg, i64 %i.ei, i1 false)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw19process_Sony_0x0116EPhty(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 257
  %i.b = icmp eq i64 %3, 262
  %or.cond = or i1 %i.a, %i.b
  %i.c = add i64 %3, -269
  %i.d = icmp ult i64 %i.c, 2
  %or.cond5 = or i1 %or.cond, %i.d
  %i.e = icmp ugt i16 %2, 1
  %or.cond8 = and i1 %i.e, %or.cond5
  br i1 %or.cond8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %3, 272
  %i.g = icmp ugt i16 %2, 2
  %or.cond11 = and i1 %i.g, %i.f
  br i1 %or.cond11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.a ], [ 2, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.i = load i8, ptr %i.h, align 1, !tbaa !96
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -32
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to float
  %i.m = fmul reassoc nnan nsz arcp contract afn float %i.l, f0x3F0E38E4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4820
  store float %i.m, ptr %i.n, align 4, !tbaa !97
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19process_Sony_0x2010EPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3666
  %i.c = load i16, ptr %i.b, align 2, !tbaa !90
  switch i16 %i.c, label %.fold.split [
    i16 0, label %bb.p
    i16 5, label %bb.b
    i16 6, label %bb.e
    i16 7, label %bb.c
    i16 8, label %bb.e
    i16 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.e = load i64, ptr %i.d, align 8, !tbaa !86
  %i.f = icmp eq i64 %i.e, 297
  %. = select i1 %i.f, i16 6792, i16 6444
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a, %bb.a
  %.0 = phi i16 [ %., %bb.b ], [ 6444, %bb.a ], [ 6284, %bb.d ], [ 6488, %bb.c ], [ 6444, %bb.a ] ; 2 uses
  %i.g = icmp ult i16 %.0, %2
  br i1 %i.g, label %bb.f, label %.fold.split

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i16 %.0 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !96    ; 3 uses
  %i.k = icmp ult i8 %i.j, 28
  %switch.maskindex = zext nneg i8 %i.j to i32
  %switch.shifted = lshr i32 134217987, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.k, i1 %switch.lobit, i1 false
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !96
  %i.o = uitofp i8 %i.n to float
  br label %.fold.split.sink.split

switch.lookup:                                    ; preds = %bb.f
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6LibRaw19process_Sony_0x2010EPht, i64 %i.l
  %switch.load = load float, ptr %switch.gep, align 4
  br label %.fold.split.sink.split

.fold.split.sink.split:                           ; preds = %switch.lookup, %bb.g
  %.sink = phi float [ %switch.load, %switch.lookup ], [ %i.o, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3780
  store float %.sink, ptr %i.p, align 4, !tbaa !98
  br label %.fold.split

.fold.split:                                      ; preds = %.fold.split.sink.split, %bb.a, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.r = load i16, ptr %i.q, align 8, !tbaa !155  ; 3 uses
  %.not27 = icmp eq i16 %i.r, -1
  br i1 %.not27, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.fold.split
  %i.s = zext i16 %i.r to i32
  %i.t = zext i16 %2 to i32
  %i.u = add nuw nsw i32 %i.s, 2
  %.not28 = icmp samesign ugt i32 %i.u, %i.t
  br i1 %.not28, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !99
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e-01
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.y = zext i16 %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !96
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !96
  store i8 %i.ad, ptr %i.a, align 1, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !96
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !96
  %i.ak = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  %i.al = uitofp reassoc nsz arcp contract afn i16 %i.ak to float
  %i.am = fmul reassoc nnan nsz arcp contract afn float %i.al, 3.906250e-03
  %i.an = fsub reassoc nsz arcp contract afn float 1.600000e+01, %i.am ; 2 uses
  %i.ao = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.an)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.ao, 6.400000e+01
  %exp2 = call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.an)
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %exp2, 1.000000e+02
  %i.aq = select i1 %or.cond.i.i, float 0.000000e+00, float %i.ap
  store float %i.aq, ptr %i.v, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.fold.split
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3674
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !156 ; 3 uses
  %.not29 = icmp eq i16 %i.as, -1
  br i1 %.not29, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %i.au = load i16, ptr %i.at, align 4, !tbaa !157 ; 2 uses
  %i.av = icmp ugt i16 %2, %i.as
  %i.aw = icmp ugt i16 %2, %i.au
  %or.cond32 = and i1 %i.av, %i.aw
  br i1 %or.cond32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = zext i16 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !96
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !96
  %i.bd = zext i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.bd, ptr %i.be, align 4, !tbaa !100
  %i.bf = zext i16 %i.au to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !96
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !96
  %i.bl = zext i8 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5106
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !101
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3678
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !158 ; 2 uses
  %i.bp = icmp ugt i16 %2, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = zext i16 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !96
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !96
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.bw, ptr %i.bx, align 8, !tbaa !102
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.a
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19process_Sony_0x9050EPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3668 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !91   ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %.pre = load i16, ptr %i.b, align 8             ; 2 uses
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.off = add i16 %.pre, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 1, ptr %i.c, align 4, !tbaa !91
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.f = phi i16 [ 1, %bb.c ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !88   ; 2 uses
  %.not127 = icmp eq i16 %i.i, 40                 ; 2 uses
  %.not128 = icmp eq i16 %.pre, 1
  %or.cond = select i1 %.not127, i1 true, i1 %.not128
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = icmp ult i16 %2, 2
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %1, align 1, !tbaa !96      ; 2 uses
  %.not129 = icmp eq i8 %i.k, 0
  br i1 %.not129, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !96
  %i.o = uitofp reassoc nsz arcp contract afn i8 %i.n to float
  %i.p = fmul reassoc nnan nsz arcp contract afn float %i.o, 6.250000e-02
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, -5.300000e-01 ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.q)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.r, 6.400000e+01
  %exp2 = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.q)
  %i.s = fmul reassoc nnan nsz arcp contract afn float %exp2, 1.000000e+01
  %4 = select i1 %or.cond.i.i, float 0.000000e+00, float %i.s ; 2 uses
  %5 = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %4) ; 3 uses
  %6 = fsub reassoc nsz arcp contract afn float %5, %4
  %7 = fcmp reassoc nsz arcp contract afn ogt float %6, 5.000000e-01
  %8 = fadd reassoc nnan nsz arcp contract afn float %5, -1.000000e+00
  %spec.select.i.a = select nsz i1 %7, float %8, float %5
  %9 = fmul reassoc nnan nsz arcp contract afn float %spec.select.i.a, 1.000000e-01
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store float %9, ptr %10, align 8, !tbaa !159
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !96    ; 2 uses
  %.not130 = icmp eq i8 %i.u, 0
  br i1 %.not130, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !96
  %i.y = uitofp reassoc nsz arcp contract afn i8 %i.x to float
  %i.z = fmul reassoc nnan nsz arcp contract afn float %i.y, 6.250000e-02
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, -5.300000e-01 ; 2 uses
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aa)
  %or.cond.i.i150 = fcmp reassoc nsz arcp contract afn ogt float %i.ab, 6.400000e+01
  %exp2153 = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.aa)
  %i.ac = fmul reassoc nnan nsz arcp contract afn float %exp2153, 1.000000e+01
  %11 = select i1 %or.cond.i.i150, float 0.000000e+00, float %i.ac ; 2 uses
  %12 = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %11) ; 3 uses
  %13 = fsub reassoc nsz arcp contract afn float %12, %11
  %14 = fcmp reassoc nsz arcp contract afn ogt float %13, 5.000000e-01
  %15 = fadd reassoc nnan nsz arcp contract afn float %12, -1.000000e+00
  %spec.select.i151.a = select nsz i1 %14, float %15, float %12
  %16 = fmul reassoc nnan nsz arcp contract afn float %spec.select.i151.a, 1.000000e-01
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 1500
  store float %16, ptr %17, align 4, !tbaa !160
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.thread
  switch i16 %i.f, label %bb.t [
    i16 2, label %bb.j
    i16 3, label %bb.j
    i16 4, label %bb.l
    i16 1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ad = icmp eq i64 %3, 384
  %spec.select = select i1 %i.ad, i32 138, i32 136 ; 2 uses
  %i.ae = zext i16 %2 to i32
  %i.af = or disjoint i32 %spec.select, 5         ; 2 uses
  %.not131 = icmp samesign ult i32 %i.af, %i.ae
  br i1 %.not131, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag ; 5 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !96
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !96
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !96
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !96
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !96
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !96
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !96
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !96
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !96
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !96
  %i.bk = zext i8 %i.bj to i64
  %i.bl = zext nneg i32 %i.af to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !96
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !96
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.bt = shl nuw nsw i64 %i.am, 40
  %i.bu = shl nuw nsw i64 %i.as, 32
  %i.bv = or disjoint i64 %i.bu, %i.bt
  %i.bw = shl nuw nsw i64 %i.ay, 24
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %i.by = shl nuw nsw i64 %i.be, 16
  %i.bz = or disjoint i64 %i.bx, %i.by
  %i.ca = shl nuw nsw i64 %i.bk, 8
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = or disjoint i64 %i.cb, %i.br
  %i.cd = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bs, ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.cc) #19 ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  %i.ce = icmp ugt i16 %2, 61
  br i1 %i.ce, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !96
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !96
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !96
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !96
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !96
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !96
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !96
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !96
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !96
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !96
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !96
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !96
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.dq = shl nuw nsw i64 %i.ck, 40
  %i.dr = shl nuw nsw i64 %i.cq, 32
  %i.ds = or disjoint i64 %i.dr, %i.dq
  %i.dt = shl nuw nsw i64 %i.cw, 24
  %i.du = or disjoint i64 %i.ds, %i.dt
  %i.dv = shl nuw nsw i64 %i.dc, 16
  %i.dw = or disjoint i64 %i.du, %i.dv
  %i.dx = shl nuw nsw i64 %i.di, 8
  %i.dy = or disjoint i64 %i.dw, %i.dx
  %i.dz = or disjoint i64 %i.dy, %i.do
  %i.ea = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.dp, ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.dz) #19 ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.i
  %i.eb = add i64 %3, -291
  %i.ec = icmp ult i64 %i.eb, -3
  %or.cond6 = and i1 %i.ec, %.not127
  br i1 %or.cond6, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ed = icmp ult i16 %2, 128
  br i1 %i.ed, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !96
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !96
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !96
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !96
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !96
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !96
  %i.ev = zext i8 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !96
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !96
  %i.fb = zext i8 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.fd = shl nuw i32 %i.ej, 24
  %i.fe = shl nuw nsw i32 %i.ep, 16
  %i.ff = or disjoint i32 %i.fe, %i.fd
  %i.fg = shl nuw nsw i32 %i.ev, 8
  %i.fh = or disjoint i32 %i.ff, %i.fg
  %i.fi = or disjoint i32 %i.fh, %i.fb
  %i.fj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fc, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.fi) #19 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.fk = icmp eq i16 %i.i, 25
  br i1 %i.fk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fl = icmp ult i16 %2, 245
  br i1 %i.fl, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !96
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !96
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 241
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !96
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !96
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !96
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !96
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 243
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !96
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !96
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !96
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !96
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.gr = shl nuw nsw i64 %i.fr, 32
  %i.gs = shl nuw nsw i64 %i.fx, 24
  %i.gt = or disjoint i64 %i.gs, %i.gr
  %i.gu = shl nuw nsw i64 %i.gd, 16
  %i.gv = or disjoint i64 %i.gt, %i.gu
  %i.gw = shl nuw nsw i64 %i.gj, 8
  %i.gx = or disjoint i64 %i.gv, %i.gw
  %i.gy = or disjoint i64 %i.gx, %i.gp
  %i.gz = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.gq, ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.gy) #19 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.p, %bb.s, %bb.q
  %i.ha = load i16, ptr %i.b, align 8, !tbaa !89
  %.not132 = icmp eq i16 %i.ha, 1
  br i1 %.not132, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hb = icmp ult i16 %2, 263
  br i1 %i.hb, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !96  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !96  ; 2 uses
  %i.hg = or i8 %i.hf, %i.hd
  %.not133 = icmp eq i8 %i.hg, 0
  br i1 %.not133, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hh = zext i8 %i.hd to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !96
  %i.hk = zext i8 %i.hj to i16
  %i.hl = shl nuw i16 %i.hk, 8
  %i.hm = zext i8 %i.hf to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !96
  %i.hp = zext i8 %i.ho to i16
  %i.hq = or disjoint i16 %i.hl, %i.hp
  %i.hr = uitofp reassoc nsz arcp contract afn i16 %i.hq to float
  %i.hs = fmul reassoc nnan nsz arcp contract afn float %i.hr, f0x3B000000
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, -8.000000e+00 ; 2 uses
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ht)
  %or.cond.i.i152 = fcmp reassoc nsz arcp contract afn ogt float %i.hu, 6.400000e+01
  %exp2154 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ht)
  %i.hv = select reassoc nsz arcp contract afn i1 %or.cond.i.i152, float 0.000000e+00, float %exp2154
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.hv, ptr %i.hw, align 4, !tbaa !103
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 261
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !96  ; 2 uses
  %.not134 = icmp eq i8 %i.hy, 0
  br i1 %.not134, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !87
  switch i16 %i.ia, label %bb.z [
    i16 5, label %bb.ab
    i16 39, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.ib = zext i8 %i.hy to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !96
  switch i8 %i.id, label %bb.ab [
    i8 1, label %.sink.split
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.aa
  %.sink = phi i16 [ 40, %bb.aa ], [ 25, %bb.z ]
  store i16 %.sink, ptr %i.hz, align 2, !tbaa !87
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.y, %bb.y, %bb.z, %bb.x
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 262
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !96  ; 2 uses
  %.not137 = icmp eq i8 %i.if, 0
  br i1 %.not137, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !96
  switch i8 %i.ii, label %bb.ae [
    i8 1, label %.sink.split165
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %.sink.split165

.sink.split165:                                   ; preds = %bb.ac, %bb.ad
  %.sink166 = phi i16 [ 2, %bb.ad ], [ 1, %bb.ac ]
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 %.sink166, ptr %i.ij, align 8, !tbaa !104
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split165, %bb.ab, %bb.ac, %bb.t
  %i.ik = load i16, ptr %i.h, align 2, !tbaa !88
  %i.il = icmp eq i16 %i.ik, 40
  br i1 %i.il, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.im = icmp ult i16 %2, 265
  br i1 %i.im, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.io = load i8, ptr %i.in, align 1, !tbaa !96
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !96
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 263
  %i.it = load i8, ptr %i.is, align 1, !tbaa !96
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !96
  tail call void @_ZN6LibRaw18parseSonyLensType2Ehh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.ir, i8 noundef zeroext %i.iw)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.ix = zext i16 %2 to i32
  %i.iy = icmp ult i16 %2, 267
  br i1 %i.iy, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iz = load i64, ptr %i.g, align 8, !tbaa !95
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.jb = load i16, ptr %i.h, align 2, !tbaa !88
  %i.jc = icmp eq i16 %i.jb, 25
  br i1 %i.jc, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 266
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !96  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 265
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !96  ; 2 uses
  %i.jh = or i8 %i.jg, %i.je
  %.not138 = icmp eq i8 %i.jh, 0
  br i1 %.not138, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ji = zext i8 %i.je to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !96
  %i.jl = zext i8 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 8
  %i.jn = zext i8 %i.jg to i64
  %i.jo = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !96
  %i.jq = zext i8 %i.jp to i64
  %i.jr = or disjoint i64 %i.jm, %i.jq
  %.fr = freeze i64 %i.jr                         ; 6 uses
  store i64 %.fr, ptr %i.g, align 8, !tbaa !95
  %i.js = add nsw i64 %.fr, -18689
  %or.cond145 = icmp ult i64 %i.js, 4096
  br i1 %or.cond145, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i64 18688, ptr %i.jt, align 8, !tbaa !94
  %i.ju = add nsw i64 %.fr, -18688
  store i64 %i.ju, ptr %i.g, align 8, !tbaa !95
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 39, ptr %i.jv, align 2, !tbaa !87
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.jw, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false) #19
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.jx = icmp ult i64 %.fr, 61185
  br i1 %i.jx, label %bb.ap, label %switch.early.test

switch.early.test:                                ; preds = %bb.an
  switch i64 %.fr, label %bb.ao [
    i64 65535, label %bb.ap
    i64 65280, label %bb.ap
  ]

bb.ao:                                            ; preds = %switch.early.test
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i64 61184, ptr %i.jy, align 8, !tbaa !94
  %i.jz = add nsw i64 %.fr, -61184
  store i64 %i.jz, ptr %i.g, align 8, !tbaa !95
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.ka, align 2, !tbaa !87
  br label %bb.ap

bb.ap:                                            ; preds = %switch.early.test, %switch.early.test, %bb.an, %bb.am, %bb.ao, %bb.ak, %bb.aj, %bb.ai
  %i.kb = add i64 %3, -286
  %or.cond8 = icmp ult i64 %i.kb, 8
  br i1 %or.cond8, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kc = icmp ult i16 %2, 279
  br i1 %i.kc, label %.critedge, label %.sink.split168

bb.ar:                                            ; preds = %bb.ap
  %i.kd = load i16, ptr %i.h, align 2, !tbaa !88
  %.not140 = icmp eq i16 %i.kd, 43
  br i1 %.not140, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ke = icmp ult i16 %2, 280
  br i1 %i.ke, label %.critedge, label %.sink.split168

.sink.split168:                                   ; preds = %bb.as, %bb.aq
  %.sink180 = phi i64 [ 277, %bb.aq ], [ 278, %bb.as ]
  %.sink175 = phi i64 [ 278, %bb.aq ], [ 279, %bb.as ]
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %.sink180
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !96
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !96
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %.sink175
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !96
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !96
  tail call void @_ZN6LibRaw21parseSonyLensFeaturesEhh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.kj, i8 noundef zeroext %i.ko)
  br label %bb.at

bb.at:                                            ; preds = %.sink.split168, %bb.ar
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %i.kq = load i16, ptr %i.kp, align 8, !tbaa !93 ; 3 uses
  %.not141 = icmp eq i16 %i.kq, -1
  %i.kr = zext i16 %i.kq to i32
  %i.ks = add nuw nsw i32 %i.kr, 4
  %.not142 = icmp samesign ugt i32 %i.ks, %i.ix
  %or.cond149 = select i1 %.not141, i1 true, i1 %.not142
end_hunk_0
begin_hunk_1_@_ZN6LibRaw19process_Sony_0x9400EPhty:bb.a
  store i8 %i.gb, ptr %i.a, align 1, !tbaa !96
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !96
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !96
  store i8 %i.gg, ptr %i.fi, align 1, !tbaa !96
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !96
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !96
  store i8 %i.gl, ptr %i.fo, align 1, !tbaa !96
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !96
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !96
  store i8 %i.gq, ptr %i.fu, align 1, !tbaa !96
  %i.gr = call noundef i32 @_ZN6LibRaw5sget4EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 3612
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !167
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !96
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !96
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 3603
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !163
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h, %bb.d
  %.sink105 = phi i64 [ 30, %bb.d ], [ 34, %bb.h ], [ 30, %bb.f ]
  %.sink100 = phi i64 [ 3616, %bb.d ], [ 3608, %bb.h ], [ 3608, %bb.f ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %.sink105
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !96
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !96
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 %.sink100
  store i8 %i.hd, ptr %i.he, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw19process_Sony_0x9402EPht(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i16 %2, 23
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.c = load i16, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  switch i16 %i.c, label %bb.c [
    i16 4, label %.thread
    i16 6, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %1, align 1, !tbaa !96
  switch i8 %i.d, label %bb.d [
    i8 5, label %.thread
    i8 -1, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !96
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !96
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !96
  %i.m = uitofp i8 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4816
  store float %i.m, ptr %i.n, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5098 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !106
  %i.q = icmp eq i16 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.s = load i8, ptr %i.r, align 1, !tbaa !96
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !96
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i16
  store i16 %i.x, ptr %i.o, align 2, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not = icmp eq i16 %2, 23
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.z = load i8, ptr %i.y, align 1, !tbaa !96
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !96
  %i.ad = zext i8 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !107
  %i.af = icmp ult i16 %2, 46
  %.not12 = icmp eq i16 %i.c, 1
  %or.cond = or i1 %i.af, %.not12
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !96
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !96
  %i.al = zext i8 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3648
  store i16 %i.al, ptr %i.am, align 8, !tbaa !108
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.c, %bb.c, %bb.b, %bb.b, %bb.i, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw19process_Sony_0x9403EPht(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i16 %2, 6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 381
  %or.cond9 = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond9, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i8, ptr %i.e, align 1, !tbaa !96
  switch i8 %i.f, label %bb.c [
    i8 61, label %bb.d
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.h = load i8, ptr %i.g, align 1, !tbaa !96
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !96
  %i.l = uitofp i8 %i.k to float
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4804
  store float %i.l, ptr %i.m, align 4, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw19process_Sony_0x9406EPht(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ult i16 %2, 6
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !96
  switch i8 %i.b, label %bb.e [
    i8 27, label %bb.c
    i8 8, label %bb.c
    i8 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !96
  switch i8 %i.d, label %bb.e [
    i8 27, label %bb.d
    i8 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !96
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !96
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -32
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to float
  %i.m = fmul reassoc nnan nsz arcp contract afn float %i.l, f0x3F0E38E4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4820
  store float %i.m, ptr %i.n, align 4, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw19process_Sony_0x940cEPht(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.b = load i16, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq i16 %i.b, 5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i16 %i.b, 3
  %i.d = icmp ult i16 %2, 11
  %or.cond14 = or i1 %i.d, %i.c
  br i1 %or.cond14, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old13 = icmp ult i16 %2, 11
  br i1 %.old13, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !87   ; 2 uses
  switch i16 %i.g, label %bb.e [
    i16 5, label %.thread
    i16 39, label %.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 1, !tbaa !96
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !96
  switch i8 %i.l, label %bb.g [
    i8 1, label %.thread.sink.split
    i8 5, label %.thread.sink.split
    i8 4, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.e
  %.not34 = icmp eq i16 %i.g, 0
  br i1 %.not34, label %bb.m, label %.thread

.thread.sink.split:                               ; preds = %bb.e, %bb.e, %bb.f
  %.sink = phi i16 [ 40, %bb.f ], [ 25, %bb.e ], [ 25, %bb.e ]
  store i16 %.sink, ptr %i.f, align 2, !tbaa !87
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.d, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = load i8, ptr %i.m, align 1, !tbaa !96
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !96    ; 2 uses
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !96
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !96    ; 2 uses
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.s, %i.y               ; 4 uses
  %cond = icmp eq i16 %i.z, 0
  br i1 %cond, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.aa = icmp ult i16 %i.z, -32752
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !95
  switch i64 %i.ab, label %bb.k [
    i64 6553, label %bb.j
    i64 65535, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.h
  tail call void @_ZN6LibRaw18parseSonyLensType2Ehh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.q, i8 noundef zeroext %i.x)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  switch i16 %i.z, label %bb.m [
    i16 239, label %bb.l
    i16 234, label %bb.l
    i16 184, label %bb.l
    i16 78, label %bb.l
    i16 44, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.ac = zext nneg i16 %i.z to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !94
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.g, %bb.l, %bb.k, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19process_Sony_0x940eEPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i16 %2 to i32
  %i.b = icmp ult i16 %2, 3
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %.not = icmp eq i16 %i.d, 4
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i16 %i.d, 6
  %i.f = icmp eq i64 %3, 280
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old1 = icmp eq i64 %3, 280
  br i1 %.old1, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = and i64 %3, -5
  %or.cond4 = icmp eq i64 %i.g, 281
  br i1 %or.cond4, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !96
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3639
  store i8 %i.l, ptr %i.m, align 1, !tbaa !169
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !110  ; 2 uses
  %i.p = icmp slt i32 %i.o, 4
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 4 uses
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.r ; 3 uses
  store i32 37902, ptr %i.s, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.u = load i16, ptr %i.t, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %i.u, ptr %i.v, align 4, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.a, ptr %i.w, align 4, !tbaa !115
  %i.x = zext i16 %2 to i64
  %i.y = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.x)
  %i.z = load i32, ptr %i.n, align 8, !tbaa !110  ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !115
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 3 uses
  %i.ag = phi i64 [ %i.ar, %.lr.ph ], [ %i.aa, %bb.g ]
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !96
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  store i8 %i.am, ptr %i.ap, align 1, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.n, align 8, !tbaa !110 ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %i.q, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !115
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.lcssa = phi i32 [ %i.z, %bb.g ], [ %i.aq, %.lr.ph ]
end_hunk_1
begin_hunk_2_@_ZN6LibRaw19process_Sony_0x940eEPhty:bb.a
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !96
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !96
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3637
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !96
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !96
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !96
  %i.dw = zext i8 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !107
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !96  ; 2 uses
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !96
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 3650 ; 2 uses
  store i8 %i.ec, ptr %i.ed, align 2, !tbaa !118
  %i.ee = icmp eq i8 %i.dz, 0
  br i1 %i.ee, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 127, ptr %i.ed, align 2, !tbaa !118
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3651
  store i8 1, ptr %i.ef, align 1, !tbaa !119
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.eg = icmp ugt i16 %2, 381
  br i1 %i.eg, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !96
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !96
  %i.em = zext i8 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.em, ptr %i.en, align 2, !tbaa !107
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !96
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !96
  %i.et = zext i8 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !106
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3626
  store i16 4, ptr %i.ev, align 2, !tbaa !117
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 3628
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 366
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !96
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !96
  store i8 %i.fb, ptr %i.ew, align 4, !tbaa !96
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 367
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !96
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !96
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 3629
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !96
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !96
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !96
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 3630
  store i8 %i.fm, ptr %i.fn, align 2, !tbaa !96
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 369
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !96
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !96
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 3631
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !96
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 381
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !96  ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !96
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 3650 ; 2 uses
  store i8 %i.fy, ptr %i.fz, align 2, !tbaa !118
  %i.ga = icmp eq i8 %i.fv, 0
  br i1 %i.ga, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 127, ptr %i.fz, align 2, !tbaa !118
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 3651
  store i8 1, ptr %i.gb, align 1, !tbaa !119
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.o, %bb.p, %bb.m, %bb.c, %bb.d, %bb.e, %bb.a
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %9, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %10, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %11, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %13, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %15, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %16, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %17, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %18, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %19, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %20, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %21, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %22, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %23) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  switch i32 %2, label %bb.al [
    i32 45056, label %.preheader875
    i32 45057, label %bb.b
    i32 45094, label %bb.aj
  ]

.preheader875:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3760 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.e = load i16, ptr %i.c, align 8, !tbaa !170
  %i.f = zext i16 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, 10
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !call_target !173
  %i.m = add nsw i32 %i.l, %i.g                   ; 2 uses
  %i.n = trunc i32 %i.m to i16
  store i16 %i.n, ptr %i.c, align 8, !tbaa !170
  %i.o = mul i32 %i.m, 10
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !call_target !173
  %i.u = add i32 %i.t, %i.o                       ; 2 uses
  %i.v = trunc i32 %i.u to i16
  store i16 %i.v, ptr %i.c, align 8, !tbaa !170
  %i.w = mul i32 %i.u, 10
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !call_target !173
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  %i.ad = trunc i32 %i.ac to i16
  store i16 %i.ad, ptr %i.c, align 8, !tbaa !170
  %i.ae = mul i32 %i.ac, 10
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !120 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !call_target !173
  %i.ak = add i32 %i.aj, %i.ae
  %i.al = trunc i32 %i.ak to i16
  store i16 %i.al, ptr %i.c, align 8, !tbaa !170
  br label %.thread867

bb.b:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.an = zext i16 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 381696 ; 5 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !174
  tail call void @_ZN6LibRaw19setSonyBodyFeaturesEy(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.an)
  %i.ap = load i16, ptr %7, align 2, !tbaa !92    ; 3 uses
  %.not798 = icmp eq i16 %i.ap, 0
  br i1 %.not798, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %6, align 8, !tbaa !175   ; 2 uses
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !174 ; 4 uses
  %i.as = icmp eq i64 %i.ar, 257
  %i.at = icmp eq i64 %i.ar, 262
  %or.cond.i = or i1 %i.as, %i.at
  %i.au = add i64 %i.ar, -269
  %i.av = icmp ult i64 %i.au, 2
  %or.cond5.i = or i1 %or.cond.i, %i.av
  %i.aw = icmp ne i16 %i.ap, 1
  %or.cond8.i = and i1 %i.aw, %or.cond5.i
  br i1 %or.cond8.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = icmp ugt i64 %i.ar, 272
  %i.ay = icmp ugt i16 %i.ap, 2
  %or.cond11.i = and i1 %i.ay, %i.ax
  br i1 %or.cond11.i, label %bb.e, label %_ZN6LibRaw19process_Sony_0x0116EPhty.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !96
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -32
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to float
  %i.be = fmul reassoc nnan nsz arcp contract afn float %i.bd, f0x3F0E38E4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4820
  store float %i.be, ptr %i.bf, align 4, !tbaa !97
  br label %_ZN6LibRaw19process_Sony_0x0116EPhty.exit

_ZN6LibRaw19process_Sony_0x0116EPhty.exit:        ; preds = %bb.d, %bb.e
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.aq)
  store i16 0, ptr %7, align 2, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %_ZN6LibRaw19process_Sony_0x0116EPhty.exit, %bb.b
  %i.bg = load i16, ptr %9, align 2, !tbaa !92    ; 2 uses
  %.not799 = icmp eq i16 %i.bg, 0
  br i1 %.not799, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %8, align 8, !tbaa !175
  tail call void @_ZN6LibRaw19process_Sony_0x2010EPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bh, i16 noundef zeroext %i.bg)
  %i.bi = load ptr, ptr %8, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bi)
  store i16 0, ptr %9, align 2, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bj = load i16, ptr %11, align 2, !tbaa !92   ; 2 uses
  %.not800 = icmp eq i16 %i.bj, 0
  br i1 %.not800, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3670
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !176
  %i.bl = load ptr, ptr %10, align 8, !tbaa !175
  %i.bm = load i16, ptr %11, align 2, !tbaa !92
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !174
  tail call void @_ZN6LibRaw19process_Sony_0x9050EPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bl, i16 noundef zeroext %i.bm, i64 noundef %i.bn)
  %i.bo = load ptr, ptr %10, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bo)
  store i16 0, ptr %11, align 2, !tbaa !92
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bp = load i16, ptr %13, align 2, !tbaa !92   ; 2 uses
  %.not801 = icmp eq i16 %i.bp, 0
  br i1 %.not801, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %12, align 8, !tbaa !175
  tail call void @_ZN6LibRaw19process_Sony_0x9400EPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bq, i16 noundef zeroext %i.bp, i64 poison)
  %i.br = load ptr, ptr %12, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.br)
  store i16 0, ptr %13, align 2, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = load i16, ptr %15, align 2, !tbaa !92   ; 4 uses
  %.not802 = icmp eq i16 %i.bs, 0
  br i1 %.not802, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %14, align 8, !tbaa !175  ; 7 uses
  %i.bu = icmp ult i16 %i.bs, 23
  br i1 %i.bu, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !89 ; 2 uses
  switch i16 %i.bw, label %bb.o [
    i16 4, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit
    i16 6, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !96
  switch i8 %i.bx, label %bb.p [
    i8 5, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit
    i8 -1, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit
  ]

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !96
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !96
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !96
  %i.cg = uitofp i8 %i.cf to float
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4816
  store float %i.cg, ptr %i.ch, align 8, !tbaa !105
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 5098 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !106
  %i.ck = icmp eq i16 %i.cj, -1
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 22
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !96
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !96
  %i.cq = and i8 %i.cp, 127
  %i.cr = zext nneg i8 %i.cq to i16
  store i16 %i.cr, ptr %i.ci, align 2, !tbaa !106
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not.i = icmp eq i16 %i.bs, 23
  br i1 %.not.i, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 23
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !96
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !96
  %i.cx = zext i8 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !107
  %i.cz = icmp ult i16 %i.bs, 46
  %.not12.i = icmp eq i16 %i.bw, 1
  %or.cond.i812 = or i1 %i.cz, %.not12.i
  br i1 %or.cond.i812, label %_ZN6LibRaw19process_Sony_0x9402EPht.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 45
  %i.db = load i8, ptr %i.da, align 1, !tbaa !96
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !96
  %i.df = zext i8 %i.de to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3648
  store i16 %i.df, ptr %i.dg, align 8, !tbaa !108
  br label %_ZN6LibRaw19process_Sony_0x9402EPht.exit

_ZN6LibRaw19process_Sony_0x9402EPht.exit:         ; preds = %bb.m, %bb.n, %bb.n, %bb.o, %bb.o, %bb.t, %bb.u, %bb.v
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bt)
  store i16 0, ptr %15, align 2, !tbaa !92
  br label %bb.w

bb.w:                                             ; preds = %_ZN6LibRaw19process_Sony_0x9402EPht.exit, %bb.l
  %i.dh = load i16, ptr %17, align 2, !tbaa !92   ; 2 uses
  %.not803 = icmp eq i16 %i.dh, 0
  br i1 %.not803, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load ptr, ptr %16, align 8, !tbaa !175  ; 3 uses
  %i.dj = icmp ult i16 %i.dh, 6
  %i.dk = load i64, ptr %i.ao, align 8
  %i.dl = icmp eq i64 %i.dk, 381
  %or.cond9.i = select i1 %i.dj, i1 true, i1 %i.dl
  br i1 %or.cond9.i, label %_ZN6LibRaw19process_Sony_0x9403EPht.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !96
  switch i8 %i.dn, label %bb.z [
    i8 61, label %_ZN6LibRaw19process_Sony_0x9403EPht.exit
    i8 0, label %_ZN6LibRaw19process_Sony_0x9403EPht.exit
  ]

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !96
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !96
  %i.dt = uitofp i8 %i.ds to float
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4804
  store float %i.dt, ptr %i.du, align 4, !tbaa !109
  br label %_ZN6LibRaw19process_Sony_0x9403EPht.exit

_ZN6LibRaw19process_Sony_0x9403EPht.exit:         ; preds = %bb.x, %bb.y, %bb.y, %bb.z
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.di)
  store i16 0, ptr %17, align 2, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6LibRaw19process_Sony_0x9403EPht.exit, %bb.w
  %i.dv = load i16, ptr %19, align 2, !tbaa !92   ; 2 uses
  %.not804 = icmp eq i16 %i.dv, 0
  br i1 %.not804, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load ptr, ptr %18, align 8, !tbaa !175  ; 4 uses
  %i.dx = icmp ult i16 %i.dv, 6
  br i1 %i.dx, label %_ZN6LibRaw19process_Sony_0x9406EPht.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !96
  switch i8 %i.dy, label %_ZN6LibRaw19process_Sony_0x9406EPht.exit [
    i8 27, label %bb.ad
    i8 8, label %bb.ad
    i8 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !96
  switch i8 %i.ea, label %_ZN6LibRaw19process_Sony_0x9406EPht.exit [
    i8 27, label %bb.ae
    i8 8, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !96
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !96
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -32
  %i.ei = sitofp reassoc nsz arcp contract afn i32 %i.eh to float
  %i.ej = fmul reassoc nnan nsz arcp contract afn float %i.ei, f0x3F0E38E4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4820
  store float %i.ej, ptr %i.ek, align 4, !tbaa !97
  br label %_ZN6LibRaw19process_Sony_0x9406EPht.exit

_ZN6LibRaw19process_Sony_0x9406EPht.exit:         ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dw)
  store i16 0, ptr %19, align 2, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %_ZN6LibRaw19process_Sony_0x9406EPht.exit, %bb.aa
  %i.el = load i16, ptr %21, align 2, !tbaa !92   ; 2 uses
  %.not805 = icmp eq i16 %i.el, 0
  br i1 %.not805, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %20, align 8, !tbaa !175
  tail call void @_ZN6LibRaw19process_Sony_0x940cEPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.em, i16 noundef zeroext %i.el)
  %i.en = load ptr, ptr %20, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.en)
  store i16 0, ptr %21, align 2, !tbaa !92
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eo = load i16, ptr %23, align 2, !tbaa !92   ; 2 uses
  %.not806 = icmp eq i16 %i.eo, 0
  br i1 %.not806, label %.thread867, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %22, align 8, !tbaa !175
  %i.eq = load i64, ptr %i.ao, align 8, !tbaa !174
  tail call void @_ZN6LibRaw19process_Sony_0x940eEPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ep, i16 noundef zeroext %i.eo, i64 noundef %i.eq)
  %i.er = load ptr, ptr %22, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.er)
  store i16 0, ptr %23, align 2, !tbaa !92
  br label %.thread867

bb.aj:                                            ; preds = %bb.a
  %i.es = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %.not797 = icmp eq i32 %i.es, -1
  br i1 %.not797, label %.thread867, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = trunc i32 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 5108
  store i16 %i.et, ptr %i.eu, align 4, !tbaa !177
  br label %.thread867

bb.al:                                            ; preds = %bb.a
  %i.ev = and i32 %2, -3
  %or.cond = icmp eq i32 %i.ev, 1
  %i.ew = icmp ugt i32 %4, 195
  %or.cond3 = and i1 %or.cond, %i.ew
  br i1 %or.cond3, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ex = zext i32 %4 to i64                      ; 2 uses
  %i.ey = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ex, i64 noundef 1) ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !120 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !122
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call noundef i32 %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef %i.ey, i64 noundef %i.ex, i64 noundef 1), !call_target !132 ; 0 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !96
  %i.fh = zext i8 %i.fg to i16
  %i.fi = shl nuw i16 %i.fh, 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 7
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !96
  %i.fl = zext i8 %i.fk to i16
  %i.fm = or disjoint i16 %i.fi, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 5096
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.fm, ptr %i.fo, align 8, !tbaa !178
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 26
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !96
  %i.fr = zext i8 %i.fq to i16
  %i.fs = shl nuw i16 %i.fr, 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 27
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !96
  %i.fv = zext i8 %i.fu to i16
  %i.fw = or disjoint i16 %i.fs, %i.fv
  store i16 %i.fw, ptr %i.fn, align 8, !tbaa !102
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ey, i64 30
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !96
  %i.fz = zext i8 %i.fy to i16
  %i.ga = shl nuw i16 %i.fz, 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ey, i64 31
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !96
  %i.gd = zext i8 %i.gc to i16
  %i.ge = or disjoint i16 %i.ga, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.ge, ptr %i.gf, align 4, !tbaa !100
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ey, i64 148
  %i.gh = load i32, ptr %i.gg, align 1            ; 2 uses
  %i.gi = tail call i32 @llvm.bswap.i32(i32 %i.gh) ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 3680
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !179
  %.not795 = icmp eq i32 %i.gh, -1
  br i1 %.not795, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gk = zext i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !86
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ey, i64 195
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !96
  %.not796 = icmp eq i8 %i.gn, 0
  %i.go = select i1 %.not796, i16 101, i16 0
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !106
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ey)
  br label %.thread867

bb.ap:                                            ; preds = %bb.al
  %i.gq = icmp eq i32 %2, 4
  %i.gr = icmp ugt i32 %4, 226
  %or.cond5 = and i1 %i.gq, %i.gr
  br i1 %or.cond5, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gs = zext i32 %4 to i64                      ; 2 uses
  %i.gt = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.gs, i64 noundef 1) ; 11 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !120 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !122
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = tail call noundef i32 %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gt, i64 noundef %i.gs, i64 noundef 1), !call_target !132 ; 0 uses
  %i.ha = load i8, ptr %i.gt, align 1, !tbaa !96
  %i.hb = zext i8 %i.ha to i16
  %i.hc = shl nuw i16 %i.hb, 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !96
  %i.hf = zext i8 %i.he to i16
  %i.hg = or disjoint i16 %i.hc, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.hg, ptr %i.hh, align 8, !tbaa !178
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 29
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !96  ; 2 uses
  %i.hk = zext i8 %i.hj to i16                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 5098 ; 2 uses
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !106
  switch i8 %i.hj, label %bb.as [
    i8 0, label %bb.ar
    i8 1, label %bb.ar
    i8 3, label %.sink.split
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.hm = add nuw nsw i16 %i.hk, 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.ar
  %.sink930 = phi i16 [ %i.hm, %bb.ar ], [ 0, %bb.aq ]
  store i16 %.sink930, ptr %i.hl, align 2, !tbaa !106
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.aq
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !96
  %i.hp = zext i8 %i.ho to i16
  %i.hq = shl nuw i16 %i.hp, 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 33
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !96
  %i.ht = zext i8 %i.hs to i16
  %i.hu = or disjoint i16 %i.hq, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 5102
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !180
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gt, i64 74
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !96
  %i.hy = zext i8 %i.hx to i16
  %i.hz = shl nuw i16 %i.hy, 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gt, i64 75
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !96
  %i.ic = zext i8 %i.ib to i16
  %trunc794 = or disjoint i16 %i.hz, %i.ic        ; 2 uses
  %i.id = icmp ult i16 %trunc794, 5
  br i1 %i.id, label %switch.lookup, label %bb.at

switch.lookup:                                    ; preds = %bb.as
  %i.ie = zext nneg i16 %trunc794 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_, i64 %i.ie
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %switch.lookup
  %.sink931 = phi i16 [ %switch.ext, %switch.lookup ], [ 255, %bb.as ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4856
  store i16 %.sink931, ptr %i.if, align 8, !tbaa !181
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gt, i64 226
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !96
  %i.ii = zext i8 %i.ih to i16
  %i.ij = shl nuw i16 %i.ii, 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gt, i64 227
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !96
end_hunk_2
begin_hunk_3_@_ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_:bb.a
  %i.jf = icmp slt i32 %i.je, 4
  br i1 %i.jf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.jh = sext i32 %i.je to i64
  %i.ji = getelementptr inbounds [24 x i8], ptr %i.jg, i64 %i.jh ; 3 uses
  store i32 16, ptr %i.ji, align 8, !tbaa !112
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.jk = load i16, ptr %i.jj, align 8, !tbaa !113
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i16 %i.jk, ptr %i.jl, align 4, !tbaa !114
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 %4, ptr %i.jm, align 4, !tbaa !115
  %i.jn = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.iv) ; 2 uses
  %i.jo = load i32, ptr %i.jd, align 8, !tbaa !110
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [24 x i8], ptr %i.jg, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store ptr %i.jn, ptr %i.jr, align 8, !tbaa !116
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !115
  %i.ju = zext i32 %i.jt to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.iw, i64 %i.ju, i1 false)
  %i.jv = load i32, ptr %i.jd, align 8, !tbaa !110
  %i.jw = add nsw i32 %i.jv, 1
  store i32 %i.jw, ptr %i.jd, align 8, !tbaa !110
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jx = load i64, ptr %i.iw, align 1
  %i.jy = icmp ne i64 %i.jx, -1
  %i.jz = zext i1 %i.jy to i32
  %.not724 = icmp eq i32 %i.jz, 0
  br i1 %.not724, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ka = load i64, ptr %i.iw, align 1
  %i.kb = icmp ne i64 %i.ka, 0
  %i.kc = zext i1 %i.kb to i32
  %.not726 = icmp eq i32 %i.kc, 0
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not729 = phi i1 [ true, %bb.ba ], [ %.not726, %bb.bb ] ; 2 uses
  %.not735 = icmp eq i32 %5, 0                    ; 2 uses
  switch i32 %4, label %bb.cc [
    i32 368, label %bb.bd
    i32 5478, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  br i1 %.not735, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kd = load i8, ptr %i.iw, align 1, !tbaa !96
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !96
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !96
  %i.ki = getelementptr inbounds nuw i8, ptr %i.iw, i64 5
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !96
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !96
  %i.km = getelementptr inbounds nuw i8, ptr %i.iw, i64 7
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !96
  %i.ko = tail call fastcc noundef zeroext i16 @_ZL18saneSonyCameraInfohhhhhh(i8 noundef zeroext %i.kd, i8 noundef zeroext %i.kf, i8 noundef zeroext %i.kh, i8 noundef zeroext %i.kj, i8 noundef zeroext %i.kl, i8 noundef zeroext %i.kn)
  %.not728 = icmp eq i16 %i.ko, 0
  br i1 %.not728, label %bb.dl, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %.not729, label %bb.ca, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kp = load i8, ptr %i.iw, align 1, !tbaa !96  ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !96  ; 3 uses
  %i.ks = or i8 %i.kr, %i.kp
  %.not730 = icmp eq i8 %i.ks, 0
  br i1 %.not730, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kt = zext i8 %i.kp to i32                    ; 2 uses
  %i.ku = lshr i32 %i.kt, 4
  %i.kv = icmp ugt i8 %i.kp, -97
  br i1 %i.kv, label %_ZL7bcd2dech.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kw = and i32 %i.kt, 15                       ; 2 uses
  %i.kx = icmp samesign ugt i32 %i.kw, 9
  br i1 %i.kx, label %_ZL7bcd2dech.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ky = mul nuw nsw i32 %i.ku, 10
  %i.kz = add nuw nsw i32 %i.ky, %i.kw
  %i.la = trunc nuw nsw i32 %i.kz to i16
  %i.lb = mul nuw nsw i16 %i.la, 100
  br label %_ZL7bcd2dech.exit

_ZL7bcd2dech.exit:                                ; preds = %bb.bh, %bb.bi, %bb.bj
  %.0.i813 = phi i16 [ %i.lb, %bb.bj ], [ 0, %bb.bh ], [ 0, %bb.bi ]
  %i.lc = zext i8 %i.kr to i32                    ; 2 uses
  %i.ld = lshr i32 %i.lc, 4
  %i.le = icmp ugt i8 %i.kr, -97
  br i1 %i.le, label %_ZL7bcd2dech.exit815, label %bb.bk

bb.bk:                                            ; preds = %_ZL7bcd2dech.exit
  %i.lf = and i32 %i.lc, 15                       ; 2 uses
  %i.lg = icmp samesign ugt i32 %i.lf, 9
  br i1 %i.lg, label %_ZL7bcd2dech.exit815, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lh = mul nuw nsw i32 %i.ld, 10
  %i.li = add nuw nsw i32 %i.lh, %i.lf
  %i.lj = trunc nuw nsw i32 %i.li to i16
  br label %_ZL7bcd2dech.exit815

_ZL7bcd2dech.exit815:                             ; preds = %_ZL7bcd2dech.exit, %bb.bk, %bb.bl
  %.0.i814 = phi i16 [ %i.lj, %bb.bl ], [ 0, %_ZL7bcd2dech.exit ], [ 0, %bb.bk ]
  %i.lk = add nuw nsw i16 %.0.i814, %.0.i813
  %i.ll = uitofp nneg i16 %i.lk to float
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store float %i.ll, ptr %i.lm, align 8, !tbaa !133
  br label %bb.bm

bb.bm:                                            ; preds = %_ZL7bcd2dech.exit815, %bb.bg
  %i.ln = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !96  ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.iw, i64 5
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !96  ; 3 uses
  %i.lr = or i8 %i.lq, %i.lo
  %.not731 = icmp eq i8 %i.lr, 0
  br i1 %.not731, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ls = zext i8 %i.lo to i32                    ; 2 uses
  %i.lt = lshr i32 %i.ls, 4
  %i.lu = icmp ugt i8 %i.lo, -97
  br i1 %i.lu, label %_ZL7bcd2dech.exit817, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lv = and i32 %i.ls, 15                       ; 2 uses
  %i.lw = icmp samesign ugt i32 %i.lv, 9
  br i1 %i.lw, label %_ZL7bcd2dech.exit817, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lx = mul nuw nsw i32 %i.lt, 10
  %i.ly = add nuw nsw i32 %i.lx, %i.lv
  %i.lz = trunc nuw nsw i32 %i.ly to i16
  %i.ma = mul nuw nsw i16 %i.lz, 100
  br label %_ZL7bcd2dech.exit817

_ZL7bcd2dech.exit817:                             ; preds = %bb.bn, %bb.bo, %bb.bp
  %.0.i816 = phi i16 [ %i.ma, %bb.bp ], [ 0, %bb.bn ], [ 0, %bb.bo ]
  %i.mb = zext i8 %i.lq to i32                    ; 2 uses
  %i.mc = lshr i32 %i.mb, 4
  %i.md = icmp ugt i8 %i.lq, -97
  br i1 %i.md, label %_ZL7bcd2dech.exit819, label %bb.bq

bb.bq:                                            ; preds = %_ZL7bcd2dech.exit817
  %i.me = and i32 %i.mb, 15                       ; 2 uses
  %i.mf = icmp samesign ugt i32 %i.me, 9
  br i1 %i.mf, label %_ZL7bcd2dech.exit819, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mg = mul nuw nsw i32 %i.mc, 10
  %i.mh = add nuw nsw i32 %i.mg, %i.me
  %i.mi = trunc nuw nsw i32 %i.mh to i16
  br label %_ZL7bcd2dech.exit819

_ZL7bcd2dech.exit819:                             ; preds = %_ZL7bcd2dech.exit817, %bb.bq, %bb.br
  %.0.i818 = phi i16 [ %i.mi, %bb.br ], [ 0, %_ZL7bcd2dech.exit817 ], [ 0, %bb.bq ]
  %i.mj = add nuw nsw i16 %.0.i818, %.0.i816
  %i.mk = uitofp nneg i16 %i.mj to float
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store float %i.mk, ptr %i.ml, align 4, !tbaa !134
  br label %bb.bs

bb.bs:                                            ; preds = %_ZL7bcd2dech.exit819, %bb.bm
  %i.mm = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !96  ; 3 uses
  %.not732 = icmp eq i8 %i.mn, 0
  br i1 %.not732, label %.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mo = zext i8 %i.mn to i32                    ; 2 uses
  %i.mp = lshr i32 %i.mo, 4
  %i.mq = icmp ugt i8 %i.mn, -97
  br i1 %i.mq, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mr = and i32 %i.mo, 15                       ; 2 uses
  %i.ms = icmp samesign ugt i32 %i.mr, 9
  br i1 %i.ms, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mt = mul nuw nsw i32 %i.mp, 10
  %i.mu = add nuw nsw i32 %i.mt, %i.mr
  %i.mv = trunc nuw nsw i32 %i.mu to i16
  %i.mw = uitofp nneg i16 %i.mv to float
  %i.mx = fmul reassoc nnan nsz arcp contract afn float %i.mw, 1.000000e-01
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.0.i820 = phi float [ %i.mx, %bb.bv ], [ 0.000000e+00, %bb.bt ], [ 0.000000e+00, %bb.bu ]
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store float %.0.i820, ptr %i.my, align 8, !tbaa !135
  %.pr = load i8, ptr %i.mm, align 1, !tbaa !96
  %.not733 = icmp eq i8 %.pr, 0
  br i1 %.not733, label %.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mz = getelementptr inbounds nuw i8, ptr %i.iw, i64 7
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !96  ; 2 uses
  %i.nb = zext i8 %i.na to i32                    ; 2 uses
  %i.nc = lshr i32 %i.nb, 4
  %i.nd = icmp ugt i8 %i.na, -97
  br i1 %i.nd, label %_ZL7bcd2dech.exit823, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ne = and i32 %i.nb, 15                       ; 2 uses
  %i.nf = icmp samesign ugt i32 %i.ne, 9
  br i1 %i.nf, label %_ZL7bcd2dech.exit823, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ng = mul nuw nsw i32 %i.nc, 10
  %i.nh = add nuw nsw i32 %i.ng, %i.ne
  %i.ni = trunc nuw nsw i32 %i.nh to i16
  %i.nj = uitofp nneg i16 %i.ni to float
  %i.nk = fmul reassoc nnan nsz arcp contract afn float %i.nj, 1.000000e-01
  br label %_ZL7bcd2dech.exit823

_ZL7bcd2dech.exit823:                             ; preds = %bb.bx, %bb.by, %bb.bz
  %.0.i822 = phi float [ %i.nk, %bb.bz ], [ 0.000000e+00, %bb.bx ], [ 0.000000e+00, %bb.by ]
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store float %.0.i822, ptr %i.nl, align 4, !tbaa !136
  br label %.thread

.thread:                                          ; preds = %bb.bs, %_ZL7bcd2dech.exit823, %bb.bw
  %i.nm = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !96
  %i.no = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  %i.np = load i8, ptr %i.no, align 1, !tbaa !96
  tail call void @_ZN6LibRaw21parseSonyLensFeaturesEhh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.nn, i8 noundef zeroext %i.np)
  br label %bb.ca

bb.ca:                                            ; preds = %.thread, %bb.bf
  %i.nq = getelementptr inbounds nuw i8, ptr %i.iw, i64 21
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !96
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 3624
  store i8 %i.nr, ptr %i.ns, align 8, !tbaa !182
  %i.nt = getelementptr inbounds nuw i8, ptr %i.iw, i64 25
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !96
  %i.nv = zext i8 %i.nu to i16
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 5102
  store i16 %i.nv, ptr %i.nw, align 2, !tbaa !180
  br i1 %i.iu, label %bb.cb, label %bb.dl

bb.cb:                                            ; preds = %bb.ca
  %i.nx = getelementptr inbounds nuw i8, ptr %i.iw, i64 304
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !96
  %i.nz = add i8 %i.ny, -20
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 3650
  store i8 %i.nz, ptr %i.oa, align 2, !tbaa !118
  %i.ob = getelementptr inbounds nuw i8, ptr %i.iw, i64 305 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !96
  %.lobit = lshr i8 %i.oc, 7
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 3651
  store i8 %.lobit, ptr %i.od, align 1, !tbaa !119
  %i.oe = load i8, ptr %i.ob, align 1, !tbaa !96
  %i.of = and i8 %i.oe, 127
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 3652
  store i8 %i.of, ptr %i.og, align 4, !tbaa !183
  br label %bb.dl

bb.cc:                                            ; preds = %bb.bc
  br i1 %.not735, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oh = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !96
  %i.oj = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !96
  %i.ol = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !96
  %i.on = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !96
  %i.op = getelementptr inbounds nuw i8, ptr %i.iw, i64 5
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !96
  %i.or = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  %i.os = load i8, ptr %i.or, align 1, !tbaa !96
  %i.ot = tail call fastcc noundef zeroext i16 @_ZL18saneSonyCameraInfohhhhhh(i8 noundef zeroext %i.oi, i8 noundef zeroext %i.ok, i8 noundef zeroext %i.om, i8 noundef zeroext %i.oo, i8 noundef zeroext %i.oq, i8 noundef zeroext %i.os)
  %.not736 = icmp eq i16 %i.ot, 0
  br i1 %.not736, label %bb.dl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  br i1 %.not729, label %bb.db, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ou = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.28, i64 noundef 6) #18
  %.not738 = icmp eq i32 %i.ou, 0
  br i1 %.not738, label %bb.db, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ov = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !96  ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !96  ; 3 uses
  %i.oz = or i8 %i.oy, %i.ow
  %.not739 = icmp eq i8 %i.oz, 0
  br i1 %.not739, label %bb.cm, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pa = zext i8 %i.ow to i32                    ; 2 uses
  %i.pb = lshr i32 %i.pa, 4
  %i.pc = icmp ugt i8 %i.ow, -97
  br i1 %i.pc, label %_ZL7bcd2dech.exit825, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pd = and i32 %i.pa, 15                       ; 2 uses
  %i.pe = icmp samesign ugt i32 %i.pd, 9
  br i1 %i.pe, label %_ZL7bcd2dech.exit825, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pf = mul nuw nsw i32 %i.pb, 10
  %i.pg = add nuw nsw i32 %i.pf, %i.pd
  %i.ph = trunc nuw nsw i32 %i.pg to i16
  %i.pi = mul nuw nsw i16 %i.ph, 100
  br label %_ZL7bcd2dech.exit825

_ZL7bcd2dech.exit825:                             ; preds = %bb.ch, %bb.ci, %bb.cj
  %.0.i824 = phi i16 [ %i.pi, %bb.cj ], [ 0, %bb.ch ], [ 0, %bb.ci ]
  %i.pj = zext i8 %i.oy to i32                    ; 2 uses
  %i.pk = lshr i32 %i.pj, 4
  %i.pl = icmp ugt i8 %i.oy, -97
  br i1 %i.pl, label %_ZL7bcd2dech.exit827, label %bb.ck

bb.ck:                                            ; preds = %_ZL7bcd2dech.exit825
  %i.pm = and i32 %i.pj, 15                       ; 2 uses
  %i.pn = icmp samesign ugt i32 %i.pm, 9
  br i1 %i.pn, label %_ZL7bcd2dech.exit827, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.po = mul nuw nsw i32 %i.pk, 10
  %i.pp = add nuw nsw i32 %i.po, %i.pm
  %i.pq = trunc nuw nsw i32 %i.pp to i16
  br label %_ZL7bcd2dech.exit827

_ZL7bcd2dech.exit827:                             ; preds = %_ZL7bcd2dech.exit825, %bb.ck, %bb.cl
  %.0.i826 = phi i16 [ %i.pq, %bb.cl ], [ 0, %_ZL7bcd2dech.exit825 ], [ 0, %bb.ck ]
  %i.pr = add nuw nsw i16 %.0.i826, %.0.i824
  %i.ps = uitofp nneg i16 %i.pr to float
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store float %i.ps, ptr %i.pt, align 8, !tbaa !133
  br label %bb.cm

bb.cm:                                            ; preds = %_ZL7bcd2dech.exit827, %bb.cg
  %i.pu = getelementptr inbounds nuw i8, ptr %i.iw, i64 3
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !96  ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !96  ; 3 uses
  %i.py = or i8 %i.px, %i.pv
  %.not740 = icmp eq i8 %i.py, 0
  br i1 %.not740, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pz = zext i8 %i.pv to i32                    ; 2 uses
  %i.qa = lshr i32 %i.pz, 4
  %i.qb = icmp ugt i8 %i.pv, -97
  br i1 %i.qb, label %_ZL7bcd2dech.exit829, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qc = and i32 %i.pz, 15                       ; 2 uses
  %i.qd = icmp samesign ugt i32 %i.qc, 9
  br i1 %i.qd, label %_ZL7bcd2dech.exit829, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qe = mul nuw nsw i32 %i.qa, 10
  %i.qf = add nuw nsw i32 %i.qe, %i.qc
  %i.qg = trunc nuw nsw i32 %i.qf to i16
  %i.qh = mul nuw nsw i16 %i.qg, 100
  br label %_ZL7bcd2dech.exit829

_ZL7bcd2dech.exit829:                             ; preds = %bb.cn, %bb.co, %bb.cp
  %.0.i828 = phi i16 [ %i.qh, %bb.cp ], [ 0, %bb.cn ], [ 0, %bb.co ]
  %i.qi = zext i8 %i.px to i32                    ; 2 uses
  %i.qj = lshr i32 %i.qi, 4
  %i.qk = icmp ugt i8 %i.px, -97
  br i1 %i.qk, label %_ZL7bcd2dech.exit831, label %bb.cq

bb.cq:                                            ; preds = %_ZL7bcd2dech.exit829
  %i.ql = and i32 %i.qi, 15                       ; 2 uses
  %i.qm = icmp samesign ugt i32 %i.ql, 9
  br i1 %i.qm, label %_ZL7bcd2dech.exit831, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qn = mul nuw nsw i32 %i.qj, 10
  %i.qo = add nuw nsw i32 %i.qn, %i.ql
  %i.qp = trunc nuw nsw i32 %i.qo to i16
  br label %_ZL7bcd2dech.exit831

_ZL7bcd2dech.exit831:                             ; preds = %_ZL7bcd2dech.exit829, %bb.cq, %bb.cr
  %.0.i830 = phi i16 [ %i.qp, %bb.cr ], [ 0, %_ZL7bcd2dech.exit829 ], [ 0, %bb.cq ]
  %i.qq = add nuw nsw i16 %.0.i830, %.0.i828
  %i.qr = uitofp nneg i16 %i.qq to float
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store float %i.qr, ptr %i.qs, align 4, !tbaa !134
  br label %bb.cs

bb.cs:                                            ; preds = %_ZL7bcd2dech.exit831, %bb.cm
  %i.qt = getelementptr inbounds nuw i8, ptr %i.iw, i64 5
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !96  ; 3 uses
  %.not741 = icmp eq i8 %i.qu, 0
  br i1 %.not741, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qv = zext i8 %i.qu to i32                    ; 2 uses
  %i.qw = lshr i32 %i.qv, 4
  %i.qx = icmp ugt i8 %i.qu, -97
  br i1 %i.qx, label %_ZL7bcd2dech.exit833, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qy = and i32 %i.qv, 15                       ; 2 uses
  %i.qz = icmp samesign ugt i32 %i.qy, 9
  br i1 %i.qz, label %_ZL7bcd2dech.exit833, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ra = mul nuw nsw i32 %i.qw, 10
  %i.rb = add nuw nsw i32 %i.ra, %i.qy
  %i.rc = trunc nuw nsw i32 %i.rb to i16
  %i.rd = uitofp nneg i16 %i.rc to float
  %i.re = fmul reassoc nnan nsz arcp contract afn float %i.rd, 1.000000e-01
  br label %_ZL7bcd2dech.exit833

_ZL7bcd2dech.exit833:                             ; preds = %bb.ct, %bb.cu, %bb.cv
  %.0.i832 = phi float [ %i.re, %bb.cv ], [ 0.000000e+00, %bb.ct ], [ 0.000000e+00, %bb.cu ]
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store float %.0.i832, ptr %i.rf, align 8, !tbaa !135
  br label %bb.cw

bb.cw:                                            ; preds = %_ZL7bcd2dech.exit833, %bb.cs
  %i.rg = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !96  ; 3 uses
  %.not742 = icmp eq i8 %i.rh, 0
  br i1 %.not742, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ri = zext i8 %i.rh to i32                    ; 2 uses
  %i.rj = lshr i32 %i.ri, 4
  %i.rk = icmp ugt i8 %i.rh, -97
  br i1 %i.rk, label %_ZL7bcd2dech.exit835, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rl = and i32 %i.ri, 15                       ; 2 uses
  %i.rm = icmp samesign ugt i32 %i.rl, 9
  br i1 %i.rm, label %_ZL7bcd2dech.exit835, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rn = mul nuw nsw i32 %i.rj, 10
  %i.ro = add nuw nsw i32 %i.rn, %i.rl
  %i.rp = trunc nuw nsw i32 %i.ro to i16
  %i.rq = uitofp nneg i16 %i.rp to float
  %i.rr = fmul reassoc nnan nsz arcp contract afn float %i.rq, 1.000000e-01
  br label %_ZL7bcd2dech.exit835

_ZL7bcd2dech.exit835:                             ; preds = %bb.cx, %bb.cy, %bb.cz
  %.0.i834 = phi float [ %i.rr, %bb.cz ], [ 0.000000e+00, %bb.cx ], [ 0.000000e+00, %bb.cy ]
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store float %.0.i834, ptr %i.rs, align 4, !tbaa !136
  br label %bb.da

bb.da:                                            ; preds = %_ZL7bcd2dech.exit835, %bb.cw
  %i.rt = load i8, ptr %i.iw, align 1, !tbaa !96
  %i.ru = getelementptr inbounds nuw i8, ptr %i.iw, i64 7
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !96
  tail call void @_ZN6LibRaw21parseSonyLensFeaturesEhh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.rt, i8 noundef zeroext %i.rv)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cf, %bb.ce
  switch i32 %4, label %bb.dd [
    i32 6118, label %bb.dc
    i32 5506, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db, %bb.db
  %i.rw = getelementptr inbounds nuw i8, ptr %i.iw, i64 20
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !96
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 3624
  store i8 %i.rx, ptr %i.ry, align 8, !tbaa !182
  br label %bb.dl

bb.dd:                                            ; preds = %bb.db
  %i.rz = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.29, i64 noundef 9) #18
  %.not743 = icmp eq i32 %i.rz, 0
  br i1 %.not743, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sa = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.30, i64 noundef 9) #18
  %.not744 = icmp eq i32 %i.sa, 0
  br i1 %.not744, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.sb = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.31, i64 noundef 9) #18
  %.not745 = icmp eq i32 %i.sb, 0
  br i1 %.not745, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %i.sc = getelementptr inbounds nuw i8, ptr %i.iw, i64 20
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !96
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 3624
  store i8 %i.sd, ptr %i.se, align 8, !tbaa !182
  %i.sf = getelementptr inbounds nuw i8, ptr %i.iw, i64 21
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !96  ; 2 uses
  %.not746 = icmp eq i8 %i.sg, 0
  %i.sh = zext i8 %i.sg to i16
  %i.si = add nuw nsw i16 %i.sh, 1
  %.sink = select i1 %.not746, i16 0, i16 %i.si
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %.sink, ptr %i.sj, align 2, !tbaa !106
  %i.sk = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !96
  %i.sm = zext i8 %i.sl to i16
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 5102
  store i16 %i.sm, ptr %i.sn, align 2, !tbaa !180
  br label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.so = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.32, i64 noundef 4) #18
  %.not747 = icmp eq i32 %i.so, 0
  br i1 %.not747, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sp = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.33, i64 noundef 9) #18
  %.not748 = icmp eq i32 %i.sp, 0
  br i1 %.not748, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sq = tail call i32 @strncasecmp(ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.34, i64 noundef 9) #18
  %.not749 = icmp eq i32 %i.sq, 0
  br i1 %.not749, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %i.sr = getelementptr inbounds nuw i8, ptr %i.iw, i64 28
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !96
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 3624
  store i8 %i.ss, ptr %i.st, align 8, !tbaa !182
  %i.su = getelementptr inbounds nuw i8, ptr %i.iw, i64 29
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !96  ; 2 uses
  %.not750 = icmp eq i8 %i.sv, 0
  %i.sw = zext i8 %i.sv to i16
  %i.sx = add nuw nsw i16 %i.sw, 1
  %.sink883 = select i1 %.not750, i16 0, i16 %i.sx
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 5098
  store i16 %.sink883, ptr %i.sy, align 2, !tbaa !106
  %i.sz = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !96
  %i.tb = zext i8 %i.ta to i16
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 5102
  store i16 %i.tb, ptr %i.tc, align 2, !tbaa !180
  br label %bb.dl

bb.dl:                                            ; preds = %bb.cd, %bb.dg, %bb.dk, %bb.dj, %bb.dc, %bb.be, %bb.cb, %bb.ca
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.iw)
  br label %.thread867

bb.dm:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au
  %.not751 = icmp eq i32 %5, 0                    ; 2 uses
  br i1 %.not751, label %bb.dn, label %bb.ef

bb.dn:                                            ; preds = %bb.dm
  switch i32 %2, label %.thread862 [
    i32 -1339555808, label %bb.do
    i32 32, label %bb.do
    i32 258, label %bb.eg
    i32 260, label %bb.eh
    i32 261, label %bb.ei
    i32 263, label %bb.ej
    i32 -1339555704, label %bb.en
    i32 -1339555703, label %bb.eo
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 11 uses
  %i.te = tail call i32 @strncasecmp(ptr noundef nonnull %i.td, ptr noundef nonnull @.str.24, i64 noundef 9) #18
  %.not752 = icmp eq i32 %i.te, 0
  br i1 %.not752, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !120 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !122
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = tail call noundef i32 %i.tj(ptr noundef nonnull align 8 dereferenceable(8) %i.tg, i64 noundef 18908, i32 noundef 1), !call_target !142 ; 0 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.tm = load ptr, ptr %i.tf, align 8, !tbaa !120
  %i.tn = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.tl, i64 noundef 13, ptr noundef %i.tm) ; 0 uses
  br label %.thread867

bb.dq:                                            ; preds = %bb.do
  switch i32 %4, label %.thread867 [
    i32 19154, label %bb.dr
    i32 19148, label %bb.dr
    i32 20480, label %bb.ds
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %i.to = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 128, i64 noundef 1) ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 3 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !120 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !122
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = tail call noundef i32 %i.tt(ptr noundef nonnull align 8 dereferenceable(8) %i.tq, ptr noundef %i.to, i64 noundef 128, i64 noundef 1), !call_target !132 ; 0 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.to, i64 14
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !96
  %i.tx = zext i8 %i.tw to i16
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.tx, ptr %i.ty, align 8, !tbaa !102
  %i.tz = getelementptr inbounds nuw i8, ptr %i.to, i64 63
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !96
  %i.ub = zext i8 %i.ua to i16
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 5106
  store i16 %i.ub, ptr %i.uc, align 2, !tbaa !101
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.to)
  %i.ud = load ptr, ptr %i.tp, align 8, !tbaa !120 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !122
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.ug = load ptr, ptr %i.uf, align 8
  %i.uh = tail call noundef i32 %i.ug(ptr noundef nonnull align 8 dereferenceable(8) %i.ud, i64 noundef 2363, i32 noundef 1), !call_target !142 ; 0 uses
  %i.ui = load ptr, ptr %i.tp, align 8, !tbaa !120 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !122
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  %i.ul = load ptr, ptr %i.uk, align 8
  %i.um = tail call noundef i32 %i.ul(ptr noundef nonnull align 8 dereferenceable(8) %i.ui), !call_target !173
  %i.un = trunc i32 %i.um to i16
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 3648
  store i16 %i.un, ptr %i.uo, align 8, !tbaa !108
  br label %.thread867

bb.ds:                                            ; preds = %bb.dq
  %i.up = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.uq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.ur = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.us = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ut = icmp ne i16 %i.up, 0
  %i.uu = icmp eq i16 %i.ur, 1
  %or.cond22 = and i1 %i.ut, %i.uu
  br i1 %or.cond22, label %bb.dt, label %.thread867

bb.dt:                                            ; preds = %bb.ds
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !120 ; 2 uses
  %i.ux = zext i16 %i.us to i64
  %i.uy = add nsw i64 %i.ux, -8
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !122
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = tail call noundef i32 %i.vb(ptr noundef nonnull align 8 dereferenceable(8) %i.uw, i64 noundef %i.uy, i32 noundef 1), !call_target !142 ; 0 uses
  %i.vd = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 256, i64 noundef 1) ; 8 uses
  %i.ve = load ptr, ptr %i.uv, align 8, !tbaa !120 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !122
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
end_hunk_3
begin_hunk_4_@_ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_:bb.a
  %i.xk = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 193496
  store i32 %i.xk, ptr %i.xl, align 8, !tbaa !188
  br label %.thread867

.thread862:                                       ; preds = %bb.dn, %bb.ef
  %i.xm = icmp eq i32 %2, 276
  %i.xn = icmp eq i32 %2, -1339555564
  %or.cond28 = or i1 %i.xm, %i.xn
  %i.xo = icmp ult i32 %4, 256000                 ; 12 uses
  %or.cond30 = and i1 %or.cond28, %i.xo
  br i1 %or.cond30, label %bb.ep, label %bb.gb

bb.ep:                                            ; preds = %.thread862
  %i.xp = zext nneg i32 %4 to i64                 ; 2 uses
  %i.xq = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.xp, i64 noundef 1) ; 49 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !120 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !122
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8
  %i.xw = tail call noundef i32 %i.xv(ptr noundef nonnull align 8 dereferenceable(8) %i.xs, ptr noundef %i.xq, i64 noundef %i.xp, i64 noundef 1), !call_target !132 ; 0 uses
  switch i32 %4, label %bb.ga [
    i32 260, label %bb.eq
    i32 448, label %bb.ey
    i32 280, label %bb.fa
    i32 364, label %bb.fa
    i32 332, label %bb.fn
    i32 1536, label %bb.ft
    i32 2048, label %bb.ft
  ]

bb.eq:                                            ; preds = %bb.ep
  %i.xx = load i8, ptr %i.xq, align 1, !tbaa !96
  %i.xy = zext i8 %i.xx to i16
  %i.xz = shl nuw i16 %i.xy, 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 1
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !96
  %i.yc = zext i8 %i.yb to i16
  %i.yd = or disjoint i16 %i.xz, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 5096
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.yd, ptr %i.yf, align 8, !tbaa !178
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xq, i64 20
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !96
  %i.yi = zext i8 %i.yh to i16
  %i.yj = shl nuw i16 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xq, i64 21
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !96
  %i.ym = zext i8 %i.yl to i16
  %i.yn = or disjoint i16 %i.yj, %i.ym
  store i16 %i.yn, ptr %i.ye, align 8, !tbaa !102
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !96
  %i.yq = zext i8 %i.yp to i16
  %i.yr = shl nuw i16 %i.yq, 8
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xq, i64 25
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !96
  %i.yu = zext i8 %i.yt to i16
  %i.yv = or disjoint i16 %i.yr, %i.yu            ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 5098 ; 2 uses
  store i16 %i.yv, ptr %i.yw, align 2, !tbaa !106
  switch i16 %i.yv, label %bb.et [
    i16 0, label %.sink.split940
    i16 1, label %bb.er
    i16 5, label %bb.es
  ]

bb.er:                                            ; preds = %bb.eq
  br label %.sink.split940

bb.es:                                            ; preds = %bb.eq
  br label %.sink.split940

.sink.split940:                                   ; preds = %bb.eq, %bb.er, %bb.es
  %.sink941 = phi i16 [ 0, %bb.es ], [ 3, %bb.er ], [ 2, %bb.eq ]
  store i16 %.sink941, ptr %i.yw, align 2, !tbaa !106
  br label %bb.et

bb.et:                                            ; preds = %.sink.split940, %bb.eq
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xq, i64 27
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !96
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 3624
  store i8 %i.yy, ptr %i.yz, align 8, !tbaa !182
  %i.za = getelementptr inbounds nuw i8, ptr %i.xq, i64 29
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !96
  %i.zc = zext i8 %i.zb to i16
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.zc, ptr %i.zd, align 2, !tbaa !107
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xq, i64 36
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !96
  %i.zg = zext i8 %i.zf to i16
  %i.zh = shl nuw i16 %i.zg, 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xq, i64 37
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !96
  %i.zk = zext i8 %i.zj to i16
  %i.zl = or disjoint i16 %i.zh, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.zl, ptr %i.zm, align 4, !tbaa !100
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xq, i64 46
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !96
  %i.zp = zext i8 %i.zo to i16
  %i.zq = shl nuw i16 %i.zp, 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xq, i64 47
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !96
  %i.zt = zext i8 %i.zs to i16
  %trunc793 = or disjoint i16 %i.zq, %i.zt
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 4856 ; 4 uses
  switch i16 %trunc793, label %bb.ex [
    i16 0, label %bb.eu
    i16 2, label %bb.ev
    i16 5, label %bb.ew
  ]

bb.eu:                                            ; preds = %bb.et
  store i16 1, ptr %i.zu, align 8, !tbaa !181
  br label %bb.ga

bb.ev:                                            ; preds = %bb.et
  store i16 12, ptr %i.zu, align 8, !tbaa !181
  br label %bb.ga

bb.ew:                                            ; preds = %bb.et
  store i16 2, ptr %i.zu, align 8, !tbaa !181
  br label %bb.ga

bb.ex:                                            ; preds = %bb.et
  store i16 255, ptr %i.zu, align 8, !tbaa !181
  br label %bb.ga

bb.ey:                                            ; preds = %bb.ep
  %i.zv = getelementptr inbounds nuw i8, ptr %i.xq, i64 20
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !96
  %i.zx = zext i8 %i.zw to i16
  %i.zy = shl nuw i16 %i.zx, 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.xq, i64 21
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !96
  %i.aab = zext i8 %i.aaa to i16
  %i.aac = or disjoint i16 %i.zy, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.aac, ptr %i.aad, align 8, !tbaa !178
  %i.aae = getelementptr inbounds nuw i8, ptr %i.xq, i64 74
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !96
  %i.aag = zext i8 %i.aaf to i16
  %i.aah = shl nuw i16 %i.aag, 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.xq, i64 75
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !96
  %i.aak = zext i8 %i.aaj to i16
  %i.aal = or disjoint i16 %i.aah, %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.aal, ptr %i.aam, align 4, !tbaa !100
  %i.aan = getelementptr inbounds nuw i8, ptr %i.xq, i64 94
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !96
  %i.aap = zext i8 %i.aao to i16
  %i.aaq = shl nuw i16 %i.aap, 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.xq, i64 95
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !96
  %i.aat = zext i8 %i.aas to i16
  %trunc792 = or disjoint i16 %i.aaq, %i.aat      ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 4856
  %i.aav = icmp ult i16 %trunc792, 6
  br i1 %i.aav, label %switch.lookup972, label %bb.ez

switch.lookup972:                                 ; preds = %bb.ey
  %i.aaw = zext nneg i16 %trunc792 to i64
  %switch.gep973 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_.2, i64 %i.aaw
  %switch.load974 = load i8, ptr %switch.gep973, align 1
  %switch.ext975 = zext i8 %switch.load974 to i16
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %switch.lookup972
  %.sink942 = phi i16 [ %switch.ext975, %switch.lookup972 ], [ 255, %bb.ey ]
  store i16 %.sink942, ptr %i.aau, align 8, !tbaa !181
  %i.aax = getelementptr inbounds nuw i8, ptr %i.xq, i64 378
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !96
  %i.aaz = zext i8 %i.aay to i16
  %i.aba = shl nuw i16 %i.aaz, 8
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xq, i64 379
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !96
  %i.abd = zext i8 %i.abc to i16
  %i.abe = or disjoint i16 %i.aba, %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 5108
  store i16 %i.abe, ptr %i.abf, align 4, !tbaa !177
  br label %bb.ga

bb.fa:                                            ; preds = %bb.ep, %bb.ep
  %i.abg = getelementptr inbounds nuw i8, ptr %i.xq, i64 2
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !96 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.xq, i64 3
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !96 ; 2 uses
  %i.abk = or i8 %i.abj, %i.abh
  %.not789 = icmp eq i8 %i.abk, 0
  br i1 %.not789, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.abl = zext i8 %i.abh to i16
  %i.abm = shl nuw i16 %i.abl, 8
  %i.abn = zext i8 %i.abj to i16
  %i.abo = or disjoint i16 %i.abm, %i.abn
  %i.abp = uitofp reassoc nsz arcp contract afn i16 %i.abo to float
  %i.abq = fmul reassoc nnan nsz arcp contract afn float %i.abp, 6.250000e-02
  %i.abr = fadd reassoc nsz arcp contract afn float %i.abq, -5.000000e-01 ; 2 uses
  %i.abs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.abr)
  %or.cond.i.i = fcmp reassoc nsz arcp contract afn ogt float %i.abs, 6.400000e+01
  %exp2873 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.abr)
  %i.abt = select reassoc nsz arcp contract afn i1 %or.cond.i.i, float 0.000000e+00, float %exp2873
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.abt, ptr %i.abu, align 4, !tbaa !103
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.abv = getelementptr inbounds nuw i8, ptr %i.xq, i64 9
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !96
  %i.abx = zext i8 %i.abw to i16
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.abx, ptr %i.aby, align 8, !tbaa !102
  %i.abz = getelementptr inbounds nuw i8, ptr %i.xq, i64 35
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !96
  %i.acb = zext i8 %i.aca to i16
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.acb, ptr %i.acc, align 2, !tbaa !107
  %i.acd = getelementptr inbounds nuw i8, ptr %i.xq, i64 54
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !96
  %i.acf = zext i8 %i.ace to i16
  %i.acg = shl nuw i16 %i.acf, 8
  %i.ach = getelementptr inbounds nuw i8, ptr %i.xq, i64 55
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !96
  %i.acj = zext i8 %i.aci to i16
  %trunc = or disjoint i16 %i.acg, %i.acj
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 4856
  switch i16 %trunc, label %bb.fe [
    i16 0, label %bb.ff
    i16 1, label %bb.fd
    i16 5, label %bb.fd
  ]

bb.fd:                                            ; preds = %bb.fc, %bb.fc
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fe, %bb.fd
  %.sink943 = phi i16 [ 255, %bb.fe ], [ 2, %bb.fd ], [ 1, %bb.fc ]
  %switch = phi i1 [ false, %bb.fe ], [ true, %bb.fd ], [ true, %bb.fc ]
  store i16 %.sink943, ptr %i.ack, align 8, !tbaa !181
  %i.acl = getelementptr inbounds nuw i8, ptr %i.xq, i64 154
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !96
  %i.acn = zext i8 %i.acm to i16
  %i.aco = shl nuw i16 %i.acn, 8
  %i.acp = getelementptr inbounds nuw i8, ptr %i.xq, i64 155
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !96
  %i.acr = zext i8 %i.acq to i16
  %i.acs = or disjoint i16 %i.aco, %i.acr         ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 5098
  %switch.tableidx976 = add i16 %i.acs, -1        ; 2 uses
  %i.acu = icmp ult i16 %switch.tableidx976, 4
  %i.acv = shl nuw nsw i16 %switch.tableidx976, 4
  %switch.shiftamt = zext nneg i16 %i.acv to i64
  %switch.downshift = lshr i64 1688867040329730, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %storemerge990 = select i1 %i.acu, i16 %switch.masked, i16 %i.acs
  store i16 %storemerge990, ptr %i.act, align 2, !tbaa !106
  %i.acw = getelementptr inbounds nuw i8, ptr %i.xq, i64 170
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !96
  %i.acy = zext i8 %i.acx to i16
  %i.acz = shl nuw i16 %i.acy, 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.xq, i64 171
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !96
  %i.adc = zext i8 %i.adb to i16
  %i.add = or disjoint i16 %i.acz, %i.adc         ; 2 uses
  switch i16 %i.add, label %bb.fh [
    i16 1, label %bb.fi
    i16 2, label %bb.fg
  ]

bb.fg:                                            ; preds = %bb.ff
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.ade = uitofp reassoc nsz arcp contract afn i16 %i.add to float
  br label %bb.fi

bb.fi:                                            ; preds = %bb.ff, %bb.fh, %bb.fg
  %.sink946 = phi float [ %i.ade, %bb.fh ], [ 1.777000e+03, %bb.fg ], [ 1.500000e+03, %bb.ff ]
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 3780
  store float %.sink946, ptr %i.adf, align 4, !tbaa !98
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 4856 ; 3 uses
  br i1 %switch, label %bb.ga, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.adh = getelementptr inbounds nuw i8, ptr %i.xq, i64 262
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !96
  %i.adj = zext i8 %i.adi to i16
  %i.adk = shl nuw i16 %i.adj, 8
  %i.adl = getelementptr inbounds nuw i8, ptr %i.xq, i64 263
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !96
  %i.adn = zext i8 %i.adm to i16
  %trunc791 = or disjoint i16 %i.adk, %i.adn
  switch i16 %trunc791, label %bb.fm [
    i16 6, label %bb.fk
    i16 5, label %bb.fl
  ]

bb.fk:                                            ; preds = %bb.fj
  store i16 1, ptr %i.adg, align 8, !tbaa !181
  br label %bb.ga

bb.fl:                                            ; preds = %bb.fj
  store i16 2, ptr %i.adg, align 8, !tbaa !181
  br label %bb.ga

bb.fm:                                            ; preds = %bb.fj
  store i16 255, ptr %i.adg, align 8, !tbaa !181
  br label %bb.ga

bb.fn:                                            ; preds = %bb.ep
  %i.ado = getelementptr inbounds nuw i8, ptr %i.xq, i64 2
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !96 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.xq, i64 3
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !96 ; 2 uses
  %i.ads = or i8 %i.adr, %i.adp
  %.not788 = icmp eq i8 %i.ads, 0
  br i1 %.not788, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.adt = zext i8 %i.adp to i16
  %i.adu = shl nuw i16 %i.adt, 8
  %i.adv = zext i8 %i.adr to i16
  %i.adw = or disjoint i16 %i.adu, %i.adv
  %i.adx = uitofp reassoc nsz arcp contract afn i16 %i.adw to float
  %i.ady = fmul reassoc nnan nsz arcp contract afn float %i.adx, 6.250000e-02
  %i.adz = fadd reassoc nsz arcp contract afn float %i.ady, -5.000000e-01 ; 2 uses
  %i.aea = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.adz)
  %or.cond.i.i836 = fcmp reassoc nsz arcp contract afn ogt float %i.aea, 6.400000e+01
  %exp2872 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.adz)
  %i.aeb = select reassoc nsz arcp contract afn i1 %or.cond.i.i836, float 0.000000e+00, float %exp2872
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.aeb, ptr %i.aec, align 4, !tbaa !103
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aed = getelementptr inbounds nuw i8, ptr %i.xq, i64 33
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !96
  %i.aef = zext i8 %i.aee to i16
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.aef, ptr %i.aeg, align 2, !tbaa !107
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.xq, i64 154
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !96
  %i.aej = zext i8 %i.aei to i16
  %i.aek = shl nuw i16 %i.aej, 8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.xq, i64 155
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !96
  %i.aen = zext i8 %i.aem to i16
  %i.aeo = or disjoint i16 %i.aek, %i.aen         ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 5096
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 5098
  %switch.tableidx978 = add i16 %i.aeo, -1        ; 2 uses
  %i.aer = icmp ult i16 %switch.tableidx978, 4
  %i.aes = shl nuw nsw i16 %switch.tableidx978, 4
  %switch.shiftamt981 = zext nneg i16 %i.aes to i64
  %switch.downshift982 = lshr i64 1688867040329730, %switch.shiftamt981
  %switch.masked983 = trunc i64 %switch.downshift982 to i16
  %storemerge = select i1 %i.aer, i16 %switch.masked983, i16 %i.aeo
  store i16 %storemerge, ptr %i.aeq, align 2, !tbaa !106
  %i.aet = getelementptr inbounds nuw i8, ptr %i.xq, i64 170
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !96
  %i.aev = zext i8 %i.aeu to i16
  %i.aew = shl nuw i16 %i.aev, 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.xq, i64 171
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !96
  %i.aez = zext i8 %i.aey to i16
  %i.afa = or disjoint i16 %i.aew, %i.aez         ; 2 uses
  switch i16 %i.afa, label %bb.fr [
    i16 1, label %bb.fs
    i16 2, label %bb.fq
  ]

bb.fq:                                            ; preds = %bb.fp
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.afb = uitofp reassoc nsz arcp contract afn i16 %i.afa to float
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fp, %bb.fr, %bb.fq
  %.sink950 = phi float [ %i.afb, %bb.fr ], [ 1.777000e+03, %bb.fq ], [ 1.500000e+03, %bb.fp ]
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 3780
  store float %.sink950, ptr %i.afc, align 4, !tbaa !98
  %i.afd = getelementptr inbounds nuw i8, ptr %i.xq, i64 253
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !96
  %i.aff = zext i8 %i.afe to i16
  store i16 %i.aff, ptr %i.aep, align 8, !tbaa !102
  br label %bb.ga

bb.ft:                                            ; preds = %bb.ep, %bb.ep
  %i.afg = getelementptr inbounds nuw i8, ptr %i.xq, i64 10
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !96 ; 2 uses
  switch i8 %i.afh, label %bb.fv [
    i8 4, label %bb.fw
    i8 8, label %bb.fu
  ]

bb.fu:                                            ; preds = %bb.ft
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.afi = uitofp reassoc nsz arcp contract afn i8 %i.afh to float
  br label %bb.fw

bb.fw:                                            ; preds = %bb.ft, %bb.fv, %bb.fu
  %.sink952 = phi float [ %i.afi, %bb.fv ], [ 1.777000e+03, %bb.fu ], [ 1.500000e+03, %bb.ft ]
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 3780
  store float %.sink952, ptr %i.afj, align 4, !tbaa !98
  %i.afk = getelementptr inbounds nuw i8, ptr %i.xq, i64 14
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !96 ; 2 uses
  %switch.selectcmp963 = icmp eq i8 %i.afl, 2
  %switch.select964 = select i1 %switch.selectcmp963, i16 2, i16 255
  %switch.selectcmp965 = icmp eq i8 %i.afl, 1
  %switch.select966 = select i1 %switch.selectcmp965, i16 1, i16 %switch.select964
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 4856
  store i16 %switch.select966, ptr %i.afm, align 8, !tbaa !181
  %i.afn = getelementptr inbounds nuw i8, ptr %i.xq, i64 36
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !96
  %i.afp = zext i8 %i.afo to i16
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.afp, ptr %i.afq, align 2, !tbaa !107
  %i.afr = getelementptr inbounds nuw i8, ptr %i.xq, i64 52
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !96
  %i.aft = zext i8 %i.afs to i16
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.aft, ptr %i.afu, align 8, !tbaa !102
  %i.afv = getelementptr inbounds nuw i8, ptr %i.xq, i64 1016
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !96
  %i.afx = getelementptr inbounds nuw i8, ptr %i.xq, i64 1015
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !96
  tail call void @_ZN6LibRaw18parseSonyLensType2Ehh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.afw, i8 noundef zeroext %i.afy)
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 3 uses
  %i.aga = load i16, ptr %i.afz, align 2, !tbaa !87
  %.not787 = icmp eq i16 %i.aga, 5
  br i1 %.not787, label %bb.ga, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xq, i64 153
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !96
  switch i8 %i.agc, label %bb.ga [
    i8 16, label %bb.fy
    i8 17, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  store i16 25, ptr %i.afz, align 2, !tbaa !87
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  store i16 40, ptr %i.afz, align 2, !tbaa !87
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fi, %bb.fw, %bb.fz, %bb.fy, %bb.fx, %bb.fm, %bb.fl, %bb.fk, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.fs, %bb.ez, %bb.ep
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.xq)
  br label %.thread867

bb.gb:                                            ; preds = %.thread862
  %i.agd = icmp eq i32 %2, 12288
  %or.cond32 = and i1 %i.agd, %i.xo
  br i1 %or.cond32, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.age = zext nneg i32 %4 to i64                ; 2 uses
  %i.agf = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.age, i64 noundef 1) ; 26 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !120 ; 2 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !122
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 24
  %i.agk = load ptr, ptr %i.agj, align 8
  %i.agl = tail call noundef i32 %i.agk(ptr noundef nonnull align 8 dereferenceable(8) %i.agh, ptr noundef %i.agf, i64 noundef %i.age, i64 noundef 1), !call_target !132 ; 0 uses
  %i.agm = icmp samesign ugt i32 %4, 24
  br i1 %i.agm, label %.preheader, label %.thread864

.preheader:                                       ; preds = %bb.gc
  %i.agn = ptrtoaddr ptr %i.agf to i64            ; 2 uses
  %i.ago = add i64 %i.agn, 6
  %i.agp = add i64 %i.agn, 26
  %i.agq = add nuw i64 %i.a, 3702
  %i.agr = add nuw i64 %i.a, 3722
  %rt.bound0 = icmp ult i64 %i.agq, %i.agp
  %rt.bound1 = icmp ult i64 %i.ago, %i.agr
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader.rtscalar, label %.preheader.rtvec, !prof !189

bb.gd:                                            ; preds = %.preheader.rtcont
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 3762
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agf, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(15) %i.ags, ptr noundef nonnull align 1 dereferenceable(15) %i.agt, i64 15, i1 false)
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 3777
  store i8 0, ptr %i.agu, align 1, !tbaa !96
  br label %.thread864

.thread864:                                       ; preds = %bb.gc, %bb.gd, %.preheader.rtcont
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.agf)
  br label %.thread867

bb.ge:                                            ; preds = %bb.gb
  %i.agv = icmp eq i32 %2, 278
  %or.cond34 = and i1 %i.agv, %i.xo
  br i1 %or.cond34, label %bb.gf, label %bb.gj

bb.gf:                                            ; preds = %bb.ge
  %i.agw = zext nneg i32 %4 to i64                ; 2 uses
  %i.agx = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.agw, i64 noundef 1) ; 2 uses
  store ptr %i.agx, ptr %6, align 8, !tbaa !175
  %i.agy = trunc i32 %4 to i16
  store i16 %i.agy, ptr %7, align 2, !tbaa !92
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !120 ; 2 uses
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !122
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 24
  %i.ahd = load ptr, ptr %i.ahc, align 8
  %i.ahe = tail call noundef i32 %i.ahd(ptr noundef nonnull align 8 dereferenceable(8) %i.aha, ptr noundef %i.agx, i64 noundef %i.agw, i64 noundef 1), !call_target !132 ; 0 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !86 ; 5 uses
  %.not786 = icmp eq i64 %i.ahg, 0
  br i1 %.not786, label %.thread867, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ahh = load ptr, ptr %6, align 8, !tbaa !175  ; 2 uses
  %i.ahi = load i16, ptr %7, align 2, !tbaa !92   ; 2 uses
  %i.ahj = icmp eq i64 %i.ahg, 257
  %i.ahk = icmp eq i64 %i.ahg, 262
  %or.cond.i837 = or i1 %i.ahj, %i.ahk
  %i.ahl = add i64 %i.ahg, -269
  %i.ahm = icmp ult i64 %i.ahl, 2
  %or.cond5.i838 = or i1 %or.cond.i837, %i.ahm
  %i.ahn = icmp ugt i16 %i.ahi, 1
  %or.cond8.i839 = and i1 %or.cond5.i838, %i.ahn
  br i1 %or.cond8.i839, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aho = icmp ugt i64 %i.ahg, 272
  %i.ahp = icmp ugt i16 %i.ahi, 2
  %or.cond11.i840 = and i1 %i.aho, %i.ahp
  br i1 %or.cond11.i840, label %bb.gi, label %_ZN6LibRaw19process_Sony_0x0116EPhty.exit842

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.0.i841 = phi i64 [ 1, %bb.gg ], [ 2, %bb.gh ]
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %.0.i841
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !96
  %i.ahs = zext i8 %i.ahr to i32
  %i.aht = add nsw i32 %i.ahs, -32
  %i.ahu = sitofp reassoc nsz arcp contract afn i32 %i.aht to float
  %i.ahv = fmul reassoc nnan nsz arcp contract afn float %i.ahu, f0x3F0E38E4
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 4820
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !97
  br label %_ZN6LibRaw19process_Sony_0x0116EPhty.exit842

_ZN6LibRaw19process_Sony_0x0116EPhty.exit842:     ; preds = %bb.gh, %bb.gi
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ahh)
  store i16 0, ptr %7, align 2, !tbaa !92
  br label %.thread867

bb.gj:                                            ; preds = %bb.ge
  switch i32 %2, label %bb.gn [
    i32 8200, label %bb.gk
    i32 8201, label %bb.gl
    i32 8202, label %bb.gm
  ]

bb.gk:                                            ; preds = %bb.gj
  %i.ahx = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 3656
  store i32 %i.ahx, ptr %i.ahy, align 8, !tbaa !190
  br label %.thread867

bb.gl:                                            ; preds = %bb.gj
  %i.ahz = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 3660
  store i16 %i.ahz, ptr %i.aia, align 4, !tbaa !191
  br label %.thread867

bb.gm:                                            ; preds = %bb.gj
  %i.aib = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 3662
  store i16 %i.aib, ptr %i.aic, align 2, !tbaa !92
  %i.aid = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 3664
  store i16 %i.aid, ptr %i.aie, align 8, !tbaa !92
  br label %.thread867

bb.gn:                                            ; preds = %bb.gj
  %i.aif = icmp eq i32 %2, 8208
  %or.cond36 = and i1 %i.aif, %i.xo
  br i1 %or.cond36, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %bb.gn
  %i.aig = zext nneg i32 %4 to i64                ; 2 uses
  %i.aih = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.aig, i64 noundef 1) ; 2 uses
  store ptr %i.aih, ptr %8, align 8, !tbaa !175
  %i.aii = trunc i32 %4 to i16
  store i16 %i.aii, ptr %9, align 2, !tbaa !92
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !120 ; 2 uses
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !122
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 24
  %i.ain = load ptr, ptr %i.aim, align 8
  %i.aio = tail call noundef i32 %i.ain(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, ptr noundef %i.aih, i64 noundef %i.aig, i64 noundef 1), !call_target !132 ; 0 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !86
  %.not785 = icmp eq i64 %i.aiq, 0
  br i1 %.not785, label %.thread867, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.air = load ptr, ptr %8, align 8, !tbaa !175
  %i.ais = load i16, ptr %9, align 2, !tbaa !92
  tail call void @_ZN6LibRaw19process_Sony_0x2010EPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.air, i16 noundef zeroext %i.ais)
  %i.ait = load ptr, ptr %8, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ait)
  store i16 0, ptr %9, align 2, !tbaa !92
  br label %.thread867

bb.gq:                                            ; preds = %bb.gn
  switch i32 %2, label %bb.gw [
    i32 8218, label %bb.gr
    i32 8219, label %bb.gs
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.aiu = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 3696
  store i32 %i.aiu, ptr %i.aiv, align 8, !tbaa !192
  br label %.thread867

bb.gs:                                            ; preds = %bb.gq
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.aix = load i16, ptr %i.aiw, align 8, !tbaa !89
  %.not783 = icmp eq i16 %i.aix, 1
  br i1 %.not783, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 3666
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !90
  %i.aja = icmp eq i16 %i.aiz, 9
  br i1 %i.aja, label %bb.gu, label %.thread867

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.ajb = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !120 ; 2 uses
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !122
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 56
  %i.ajf = load ptr, ptr %i.aje, align 8
  %i.ajg = tail call noundef i32 %i.ajf(ptr noundef nonnull align 8 dereferenceable(8) %i.ajc), !call_target !173 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 5098 ; 2 uses
  %i.aji = load i16, ptr %i.ajh, align 2, !tbaa !106
  %i.ajj = sext i16 %i.aji to i32
  %sext = shl i32 %i.ajg, 16
  %i.ajk = ashr exact i32 %sext, 16
  %.not784 = icmp eq i32 %i.ajk, %i.ajj
  br i1 %.not784, label %.thread867, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ajl = trunc i32 %i.ajg to i16
  store i16 %i.ajl, ptr %i.ajh, align 2, !tbaa !106
  br label %.thread867

bb.gw:                                            ; preds = %bb.gq
  %i.ajm = icmp eq i32 %2, 8220
  %i.ajn = icmp eq i32 %4, 1                      ; 2 uses
  %i.ajo = icmp eq i32 %3, 1
  %i.ajp = and i1 %i.ajm, %i.ajo
  %or.cond40 = and i1 %i.ajp, %i.ajn
  br i1 %or.cond40, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !120 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !122
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 56
  %i.aju = load ptr, ptr %i.ajt, align 8
  %i.ajv = tail call noundef i32 %i.aju(ptr noundef nonnull align 8 dereferenceable(8) %i.ajr), !call_target !173
  %i.ajw = trunc i32 %i.ajv to i8
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 3617
  store i8 %i.ajw, ptr %i.ajx, align 1, !tbaa !193
  br label %.thread867

bb.gy:                                            ; preds = %bb.gw
  %i.ajy = icmp eq i32 %2, 8221
  %i.ajz = icmp eq i32 %4, 2                      ; 2 uses
  %or.cond42 = and i1 %i.ajy, %i.ajz
  %i.aka = icmp eq i32 %3, 3                      ; 2 uses
  %or.cond44 = and i1 %i.aka, %or.cond42
  br i1 %or.cond44, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.akb = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 3620
  store i16 %i.akb, ptr %i.akc, align 4, !tbaa !92
  %i.akd = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 3622
  store i16 %i.akd, ptr %i.ake, align 2, !tbaa !92
  br label %.thread867

bb.ha:                                            ; preds = %bb.gy
  switch i32 %2, label %bb.ht [
    i32 8222, label %bb.hb
    i32 8224, label %bb.hd
    i32 8225, label %bb.hg
    i32 8226, label %bb.hj
    i32 8231, label %.preheader874
    i32 8232, label %bb.hl
    i32 8233, label %bb.hn
    i32 8236, label %bb.ho
    i32 8234, label %bb.hp
    i32 8238, label %bb.hr
    i32 8239, label %bb.hs
  ]

.preheader874:                                    ; preds = %bb.ha
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.akg = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.akg, ptr %i.akf, align 8, !tbaa !92
  %i.akh = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 3642
  store i16 %i.akh, ptr %i.aki, align 2, !tbaa !92
  %i.akj = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 3644
  store i16 %i.akj, ptr %i.akk, align 4, !tbaa !92
  %i.akl = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 3646
  store i16 %i.akl, ptr %i.akm, align 2, !tbaa !92
  br label %.thread867

bb.hb:                                            ; preds = %bb.ha
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.ako = load i16, ptr %i.akn, align 8, !tbaa !89
  %.not782 = icmp eq i16 %i.ako, 1
  br i1 %.not782, label %.thread867, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.akp = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !120 ; 2 uses
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !122
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 56
  %i.akt = load ptr, ptr %i.aks, align 8
  %i.aku = tail call noundef i32 %i.akt(ptr noundef nonnull align 8 dereferenceable(8) %i.akq), !call_target !173
  %i.akv = trunc i32 %i.aku to i8                 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 3625
  store i8 %i.akv, ptr %i.akw, align 1, !tbaa !194
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 3624
  store i8 %i.akv, ptr %i.akx, align 8, !tbaa !182
  br label %.thread867

bb.hd:                                            ; preds = %bb.ha
end_hunk_4
begin_hunk_5_@_ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_:bb.a
  %i.aqt = icmp eq i32 %2, 36944
  %or.cond46 = and i1 %i.aqt, %i.xo
  br i1 %or.cond46, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.aqu = zext nneg i32 %4 to i64                ; 2 uses
  %i.aqv = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.aqu, i64 noundef 1) ; 2 uses
  store ptr %i.aqv, ptr %10, align 8, !tbaa !175
  %i.aqw = trunc i32 %4 to i16
  store i16 %i.aqw, ptr %11, align 2, !tbaa !92
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !120 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !122
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 24
  %i.arb = load ptr, ptr %i.ara, align 8
  %i.arc = tail call noundef i32 %i.arb(ptr noundef nonnull align 8 dereferenceable(8) %i.aqy, ptr noundef %i.aqv, i64 noundef %i.aqu, i64 noundef 1), !call_target !132 ; 0 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.are = load i64, ptr %i.ard, align 8, !tbaa !86 ; 2 uses
  %.not778 = icmp eq i64 %i.are, 0
  br i1 %.not778, label %.thread867, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.arf = load i16, ptr %11, align 2, !tbaa !92  ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 3670
  store i16 %i.arf, ptr %i.arg, align 2, !tbaa !176
  %i.arh = load ptr, ptr %10, align 8, !tbaa !175
  tail call void @_ZN6LibRaw19process_Sony_0x9050EPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.arh, i16 noundef zeroext %i.arf, i64 noundef %i.are)
  %i.ari = load ptr, ptr %10, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ari)
  store i16 0, ptr %11, align 2, !tbaa !92
  br label %.thread867

bb.hw:                                            ; preds = %bb.ht
  %i.arj = icmp eq i32 %2, 37888
  %or.cond48 = and i1 %i.arj, %i.xo
  br i1 %or.cond48, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.ark = zext nneg i32 %4 to i64                ; 2 uses
  %i.arl = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ark, i64 noundef 1) ; 2 uses
  store ptr %i.arl, ptr %12, align 8, !tbaa !175
  %i.arm = trunc i32 %4 to i16
  store i16 %i.arm, ptr %13, align 2, !tbaa !92
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !120 ; 2 uses
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !122
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 24
  %i.arr = load ptr, ptr %i.arq, align 8
  %i.ars = tail call noundef i32 %i.arr(ptr noundef nonnull align 8 dereferenceable(8) %i.aro, ptr noundef %i.arl, i64 noundef %i.ark, i64 noundef 1), !call_target !132 ; 0 uses
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !86
  %.not777 = icmp eq i64 %i.aru, 0
  br i1 %.not777, label %.thread867, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.arv = load ptr, ptr %12, align 8, !tbaa !175
  %i.arw = load i16, ptr %13, align 2, !tbaa !92
  tail call void @_ZN6LibRaw19process_Sony_0x9400EPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.arv, i16 noundef zeroext %i.arw, i64 poison)
  %i.arx = load ptr, ptr %12, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.arx)
  store i16 0, ptr %13, align 2, !tbaa !92
  br label %.thread867

bb.hz:                                            ; preds = %bb.hw
  %i.ary = icmp eq i32 %2, 37890
  %or.cond50 = and i1 %i.ary, %i.xo
  br i1 %or.cond50, label %bb.ia, label %bb.ic

bb.ia:                                            ; preds = %bb.hz
  %i.arz = zext nneg i32 %4 to i64                ; 2 uses
  %i.asa = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.arz, i64 noundef 1) ; 2 uses
  store ptr %i.asa, ptr %14, align 8, !tbaa !175
  %i.asb = trunc i32 %4 to i16
  store i16 %i.asb, ptr %15, align 2, !tbaa !92
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !120 ; 2 uses
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !122
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 24
  %i.asg = load ptr, ptr %i.asf, align 8
  %i.ash = tail call noundef i32 %i.asg(ptr noundef nonnull align 8 dereferenceable(8) %i.asd, ptr noundef %i.asa, i64 noundef %i.arz, i64 noundef 1), !call_target !132 ; 0 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !86
  %.not776 = icmp eq i64 %i.asj, 0
  br i1 %.not776, label %.thread867, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ask = load ptr, ptr %14, align 8, !tbaa !175
  %i.asl = load i16, ptr %15, align 2, !tbaa !92
  tail call void @_ZN6LibRaw19process_Sony_0x9402EPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ask, i16 noundef zeroext %i.asl)
  %i.asm = load ptr, ptr %14, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.asm)
  store i16 0, ptr %15, align 2, !tbaa !92
  br label %.thread867

bb.ic:                                            ; preds = %bb.hz
  %i.asn = icmp eq i32 %2, 37891
  %or.cond52 = and i1 %i.asn, %i.xo
  br i1 %or.cond52, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %bb.ic
  %i.aso = zext nneg i32 %4 to i64                ; 2 uses
  %i.asp = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.aso, i64 noundef 1) ; 2 uses
  store ptr %i.asp, ptr %16, align 8, !tbaa !175
  %i.asq = trunc i32 %4 to i16
  store i16 %i.asq, ptr %17, align 2, !tbaa !92
  %i.asr = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !120 ; 2 uses
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !122
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 24
  %i.asv = load ptr, ptr %i.asu, align 8
  %i.asw = tail call noundef i32 %i.asv(ptr noundef nonnull align 8 dereferenceable(8) %i.ass, ptr noundef %i.asp, i64 noundef %i.aso, i64 noundef 1), !call_target !132 ; 0 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !86
  %.not775 = icmp eq i64 %i.asy, 0
  br i1 %.not775, label %.thread867, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.asz = load ptr, ptr %16, align 8, !tbaa !175 ; 3 uses
  %i.ata = load i16, ptr %17, align 2, !tbaa !92
  %i.atb = icmp ult i16 %i.ata, 6
  %i.atc = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.atd = load i64, ptr %i.atc, align 8
  %i.ate = icmp eq i64 %i.atd, 381
  %or.cond9.i843 = select i1 %i.atb, i1 true, i1 %i.ate
  br i1 %or.cond9.i843, label %_ZN6LibRaw19process_Sony_0x9403EPht.exit844, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !96
  switch i8 %i.atg, label %bb.ig [
    i8 61, label %_ZN6LibRaw19process_Sony_0x9403EPht.exit844
    i8 0, label %_ZN6LibRaw19process_Sony_0x9403EPht.exit844
  ]

bb.ig:                                            ; preds = %bb.if
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asz, i64 5
  %i.ati = load i8, ptr %i.ath, align 1, !tbaa !96
  %i.atj = zext i8 %i.ati to i64
  %i.atk = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.atj
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !96
  %i.atm = uitofp i8 %i.atl to float
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 4804
  store float %i.atm, ptr %i.atn, align 4, !tbaa !109
  br label %_ZN6LibRaw19process_Sony_0x9403EPht.exit844

_ZN6LibRaw19process_Sony_0x9403EPht.exit844:      ; preds = %bb.ie, %bb.if, %bb.if, %bb.ig
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.asz)
  store i16 0, ptr %17, align 2, !tbaa !92
  br label %.thread867

bb.ih:                                            ; preds = %bb.ic
  %i.ato = icmp eq i32 %2, 37893
  %i.atp = add i32 %4, -101
  %i.atq = icmp ult i32 %i.atp, 255899
  %or.cond56 = and i1 %i.ato, %i.atq
  br i1 %or.cond56, label %bb.ii, label %bb.im

bb.ii:                                            ; preds = %bb.ih
  %i.atr = zext nneg i32 %4 to i64                ; 2 uses
  %i.ats = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.atr, i64 noundef 1) ; 5 uses
  %i.att = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !120 ; 2 uses
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !122
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 24
  %i.atx = load ptr, ptr %i.atw, align 8
  %i.aty = tail call noundef i32 %i.atx(ptr noundef nonnull align 8 dereferenceable(8) %i.atu, ptr noundef %i.ats, i64 noundef %i.atr, i64 noundef 1), !call_target !132 ; 0 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.aua = load float, ptr %i.atz, align 8, !tbaa !99
  %i.aub = fcmp reassoc nsz arcp contract afn olt float %i.aua, 1.000000e-01
  br i1 %i.aub, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %bb.ii
  %i.auc = load i8, ptr %i.ats, align 1, !tbaa !96
  switch i8 %i.auc, label %bb.il [
    i8 -31, label %bb.ik
    i8 -77, label %bb.ik
    i8 -102, label %bb.ik
    i8 -117, label %bb.ik
    i8 126, label %bb.ik
    i8 118, label %bb.ik
    i8 58, label %bb.ik
    i8 37, label %bb.ik
  ]

bb.ik:                                            ; preds = %bb.ij, %bb.ij, %bb.ij, %bb.ij, %bb.ij, %bb.ij, %bb.ij, %bb.ij
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ats, i64 4
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !96
  %i.auf = zext i8 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.auf
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !96
  store i8 %i.auh, ptr %i.b, align 1, !tbaa !96
  %i.aui = getelementptr inbounds nuw i8, ptr %i.ats, i64 5
  %i.auj = load i8, ptr %i.aui, align 1, !tbaa !96
  %i.auk = zext i8 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.auk
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !96
  %i.aun = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.aum, ptr %i.aun, align 1, !tbaa !96
  %i.auo = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  %i.aup = uitofp reassoc nsz arcp contract afn i16 %i.auo to float
  %i.auq = fmul reassoc nnan nsz arcp contract afn float %i.aup, 3.906250e-03
  %i.aur = fsub reassoc nsz arcp contract afn float 1.600000e+01, %i.auq ; 2 uses
  %i.aus = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aur)
  %or.cond.i.i845 = fcmp reassoc nsz arcp contract afn ogt float %i.aus, 6.400000e+01
  %exp2871 = call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.aur)
  %i.aut = fmul reassoc nnan nsz arcp contract afn float %exp2871, 1.000000e+02
  %i.auu = select i1 %or.cond.i.i845, float 0.000000e+00, float %i.aut
  store float %i.auu, ptr %i.atz, align 8, !tbaa !99
  br label %bb.il

bb.il:                                            ; preds = %bb.ij, %bb.ik, %bb.ii
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ats)
  br label %.thread867

bb.im:                                            ; preds = %bb.ih
  %i.auv = icmp eq i32 %2, 37892
  %i.auw = add i32 %4, -34
  %i.aux = icmp ult i32 %i.auw, 255966
  %or.cond81 = and i1 %i.auv, %i.aux
  br i1 %or.cond81, label %bb.in, label %bb.is

bb.in:                                            ; preds = %bb.im
  %i.auy = zext nneg i32 %4 to i64                ; 2 uses
  %i.auz = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.auy, i64 noundef 1) ; 5 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !120 ; 2 uses
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !122
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 24
  %i.ave = load ptr, ptr %i.avd, align 8
  %i.avf = tail call noundef i32 %i.ave(ptr noundef nonnull align 8 dereferenceable(8) %i.avb, ptr noundef %i.auz, i64 noundef %i.auy, i64 noundef 1), !call_target !132 ; 0 uses
  %i.avg = load i8, ptr %i.auz, align 1, !tbaa !96
  switch i8 %i.avg, label %bb.ir [
    i8 -22, label %bb.io
    i8 -25, label %bb.io
    i8 -51, label %bb.io
    i8 -118, label %bb.io
    i8 112, label %bb.io
  ]

bb.io:                                            ; preds = %bb.in, %bb.in, %bb.in, %bb.in, %bb.in
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auz, i64 3
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !96
  %i.avj = icmp eq i8 %i.avi, 8
  br i1 %i.avj, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %bb.io
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.avl = load i16, ptr %i.avk, align 8, !tbaa !89
  switch i16 %i.avl, label %bb.ir [
    i16 6, label %bb.iq
    i16 4, label %bb.iq
  ]

bb.iq:                                            ; preds = %bb.ip, %bb.ip
  %i.avm = getelementptr inbounds nuw i8, ptr %i.auz, i64 32
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !96
  %i.avo = zext i8 %i.avn to i64
  %i.avp = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.avo
  %i.avq = load i8, ptr %i.avp, align 1, !tbaa !96
  %i.avr = zext i8 %i.avq to i16
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 3648
  store i16 %i.avr, ptr %i.avs, align 8, !tbaa !108
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ip, %bb.in, %bb.iq, %bb.io
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.auz)
  br label %.thread867

bb.is:                                            ; preds = %bb.im
  %i.avt = icmp eq i32 %2, 37894
  %or.cond95 = and i1 %i.avt, %i.xo
  br i1 %or.cond95, label %bb.it, label %bb.iv

bb.it:                                            ; preds = %bb.is
  %i.avu = zext nneg i32 %4 to i64                ; 2 uses
  %i.avv = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.avu, i64 noundef 1) ; 2 uses
  store ptr %i.avv, ptr %18, align 8, !tbaa !175
  %i.avw = trunc i32 %4 to i16
  store i16 %i.avw, ptr %19, align 2, !tbaa !92
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !120 ; 2 uses
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !122
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 24
  %i.awb = load ptr, ptr %i.awa, align 8
  %i.awc = tail call noundef i32 %i.awb(ptr noundef nonnull align 8 dereferenceable(8) %i.avy, ptr noundef %i.avv, i64 noundef %i.avu, i64 noundef 1), !call_target !132 ; 0 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !86
  %.not774 = icmp eq i64 %i.awe, 0
  br i1 %.not774, label %.thread867, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.awf = load ptr, ptr %18, align 8, !tbaa !175
  %i.awg = load i16, ptr %19, align 2, !tbaa !92
  tail call void @_ZN6LibRaw19process_Sony_0x9406EPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.awf, i16 noundef zeroext %i.awg)
  %i.awh = load ptr, ptr %18, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.awh)
  store i16 0, ptr %19, align 2, !tbaa !92
  br label %.thread867

bb.iv:                                            ; preds = %bb.is
  %i.awi = icmp eq i32 %2, 37900
  %or.cond97 = and i1 %i.awi, %i.xo
  br i1 %or.cond97, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %bb.iv
  %i.awj = zext nneg i32 %4 to i64                ; 2 uses
  %i.awk = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.awj, i64 noundef 1) ; 2 uses
  store ptr %i.awk, ptr %20, align 8, !tbaa !175
  %i.awl = trunc i32 %4 to i16
  store i16 %i.awl, ptr %21, align 2, !tbaa !92
  %i.awm = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !120 ; 2 uses
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !122
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 24
  %i.awq = load ptr, ptr %i.awp, align 8
  %i.awr = tail call noundef i32 %i.awq(ptr noundef nonnull align 8 dereferenceable(8) %i.awn, ptr noundef %i.awk, i64 noundef %i.awj, i64 noundef 1), !call_target !132 ; 0 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.awt = load i64, ptr %i.aws, align 8, !tbaa !86
  %.not773 = icmp eq i64 %i.awt, 0
  br i1 %.not773, label %.thread867, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.awu = load ptr, ptr %20, align 8, !tbaa !175
  %i.awv = load i16, ptr %21, align 2, !tbaa !92
  tail call void @_ZN6LibRaw19process_Sony_0x940cEPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.awu, i16 noundef zeroext %i.awv)
  %i.aww = load ptr, ptr %20, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.aww)
  store i16 0, ptr %21, align 2, !tbaa !92
  br label %.thread867

bb.iy:                                            ; preds = %bb.iv
  %i.awx = icmp eq i32 %2, 37902
  %or.cond99 = and i1 %i.awx, %i.xo
  br i1 %or.cond99, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %i.awy = zext nneg i32 %4 to i64                ; 2 uses
  %i.awz = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.awy, i64 noundef 1) ; 2 uses
  store ptr %i.awz, ptr %22, align 8, !tbaa !175
  %i.axa = trunc i32 %4 to i16
  store i16 %i.axa, ptr %23, align 2, !tbaa !92
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !120 ; 2 uses
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !122
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 24
  %i.axf = load ptr, ptr %i.axe, align 8
  %i.axg = tail call noundef i32 %i.axf(ptr noundef nonnull align 8 dereferenceable(8) %i.axc, ptr noundef %i.awz, i64 noundef %i.awy, i64 noundef 1), !call_target !132 ; 0 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.axi = load i64, ptr %i.axh, align 8, !tbaa !86 ; 2 uses
  %.not772 = icmp eq i64 %i.axi, 0
  br i1 %.not772, label %.thread867, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.axj = load ptr, ptr %22, align 8, !tbaa !175
  %i.axk = load i16, ptr %23, align 2, !tbaa !92
  tail call void @_ZN6LibRaw19process_Sony_0x940eEPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.axj, i16 noundef zeroext %i.axk, i64 noundef %i.axi)
  %i.axl = load ptr, ptr %22, align 8, !tbaa !175
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.axl)
  store i16 0, ptr %23, align 2, !tbaa !92
  br label %.thread867

bb.jb:                                            ; preds = %bb.iy
  %i.axm = icmp eq i32 %2, 37910
  %i.axn = add i32 %4, -119
  %i.axo = icmp ult i32 %i.axn, 255881
  %or.cond103 = and i1 %i.axm, %i.axo
  br i1 %or.cond103, label %bb.jc, label %bb.jl

bb.jc:                                            ; preds = %bb.jb
  %i.axp = zext nneg i32 %4 to i64                ; 2 uses
  %i.axq = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.axp, i64 noundef 1) ; 9 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !120 ; 2 uses
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !122
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 24
  %i.axv = load ptr, ptr %i.axu, align 8
  %i.axw = tail call noundef i32 %i.axv(ptr noundef nonnull align 8 dereferenceable(8) %i.axs, ptr noundef %i.axq, i64 noundef %i.axp, i64 noundef 1), !call_target !132 ; 0 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.axy = load float, ptr %i.axx, align 8, !tbaa !99
  %i.axz = fcmp reassoc nsz arcp contract afn olt float %i.axy, 1.000000e-01
  br i1 %i.axz, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axq, i64 4
  %i.ayb = load i8, ptr %i.aya, align 1, !tbaa !96
  %i.ayc = zext i8 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ayc
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !96
  store i8 %i.aye, ptr %i.b, align 1, !tbaa !96
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axq, i64 5
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !96
  %i.ayh = zext i8 %i.ayg to i64
  %i.ayi = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ayh
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !96
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ayj, ptr %i.ayk, align 1, !tbaa !96
  %i.ayl = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  %i.aym = uitofp reassoc nsz arcp contract afn i16 %i.ayl to float
  %i.ayn = fmul reassoc nnan nsz arcp contract afn float %i.aym, 3.906250e-03
  %i.ayo = fsub reassoc nsz arcp contract afn float 1.600000e+01, %i.ayn ; 2 uses
  %i.ayp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ayo)
  %or.cond.i.i846 = fcmp reassoc nsz arcp contract afn ogt float %i.ayp, 6.400000e+01
  %exp2 = call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.ayo)
  %i.ayq = fmul reassoc nnan nsz arcp contract afn float %exp2, 1.000000e+02
  %i.ayr = select i1 %or.cond.i.i846, float 0.000000e+00, float %i.ayq
  store float %i.ayr, ptr %i.axx, align 8, !tbaa !99
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axq, i64 53
  %i.ayt = load i8, ptr %i.ays, align 1, !tbaa !96
  %i.ayu = zext i8 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ayu
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !96
  %i.ayx = zext i8 %i.ayw to i16
  %i.ayy = getelementptr inbounds nuw i8, ptr %0, i64 5106
  store i16 %i.ayx, ptr %i.ayy, align 2, !tbaa !101
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 2 uses
  %i.aza = load i16, ptr %i.ayz, align 2, !tbaa !87 ; 4 uses
  switch i16 %i.aza, label %bb.jf [
    i16 5, label %bb.jg
    i16 39, label %bb.jg
  ]

bb.jf:                                            ; preds = %bb.je
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axq, i64 72
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !96
  %i.azd = zext i8 %i.azc to i64
  %i.aze = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.azd
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !96
  %switch.tableidx984 = add i8 %i.azf, -1         ; 2 uses
  %i.azg = icmp ult i8 %switch.tableidx984, 3
  br i1 %i.azg, label %switch.lookup985, label %bb.jg

switch.lookup985:                                 ; preds = %bb.jf
  %i.azh = shl nuw nsw i8 %switch.tableidx984, 4
  %switch.shiftamt987 = zext nneg i8 %i.azh to i48
  %switch.downshift988 = lshr i48 107376803865, %switch.shiftamt987
  %switch.masked989 = trunc i48 %switch.downshift988 to i16 ; 2 uses
  store i16 %switch.masked989, ptr %i.ayz, align 2, !tbaa !87
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %switch.lookup985, %bb.je, %bb.je
  %i.azi = phi i16 [ %i.aza, %bb.je ], [ %i.aza, %bb.je ], [ %i.aza, %bb.jf ], [ %switch.masked989, %switch.lookup985 ]
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axq, i64 73
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !96
  %i.azl = zext i8 %i.azk to i64
  %i.azm = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.azl
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !96
  switch i8 %i.azn, label %bb.ji [
    i8 1, label %.sink.split958
    i8 2, label %bb.jh
  ]

bb.jh:                                            ; preds = %bb.jg
  br label %.sink.split958

.sink.split958:                                   ; preds = %bb.jg, %bb.jh
  %.sink959 = phi i16 [ 2, %bb.jh ], [ 1, %bb.jg ]
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 %.sink959, ptr %i.azo, align 8, !tbaa !104
  br label %bb.ji

bb.ji:                                            ; preds = %.sink.split958, %bb.jg
  %i.azp = icmp eq i16 %i.azi, 40
  br i1 %i.azp, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.azq = getelementptr inbounds nuw i8, ptr %i.axq, i64 76
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !96
  %i.azs = zext i8 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.azs
  %i.azu = load i8, ptr %i.azt, align 1, !tbaa !96
  %i.azv = getelementptr inbounds nuw i8, ptr %i.axq, i64 75
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !96
  %i.azx = zext i8 %i.azw to i64
  %i.azy = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.azx
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !96
  call void @_ZN6LibRaw18parseSonyLensType2Ehh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.azu, i8 noundef zeroext %i.azz)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.axq)
  br label %.thread867

bb.jl:                                            ; preds = %bb.jb
  switch i32 %2, label %bb.jt [
    i32 45095, label %bb.jm
    i32 268, label %bb.jm
  ]

bb.jm:                                            ; preds = %bb.jl, %bb.jl
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.bab = load i64, ptr %i.baa, align 8, !tbaa !95
  %i.bac = icmp eq i64 %i.bab, -1
  br i1 %i.bac, label %bb.jn, label %.thread865

bb.jn:                                            ; preds = %bb.jm
  %i.bad = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 5 uses
  %i.bae = zext i32 %i.bad to i64                 ; 3 uses
  store i64 %i.bae, ptr %i.baa, align 8, !tbaa !95
  %i.baf = add i32 %i.bad, -18689
  %or.cond808 = icmp ult i32 %i.baf, 4096
  br i1 %or.cond808, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i64 18688, ptr %i.bag, align 8, !tbaa !94
  %i.bah = add nsw i64 %i.bae, -18688
  store i64 %i.bah, ptr %i.baa, align 8, !tbaa !95
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 39, ptr %i.bai, align 2, !tbaa !87
  %i.baj = getelementptr inbounds nuw i8, ptr %0, i64 1664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.baj, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false) #19
  br label %.thread867

bb.jp:                                            ; preds = %bb.jn
  %i.bak = add i32 %i.bad, -65535
  %or.cond809 = icmp ult i32 %i.bak, -4350
  %.not768 = icmp eq i32 %i.bad, 65280            ; 2 uses
  %or.cond810 = or i1 %.not768, %or.cond809
  br i1 %or.cond810, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i64 61184, ptr %i.bal, align 8, !tbaa !94
  %i.bam = add nsw i64 %i.bae, -61184
  store i64 %i.bam, ptr %i.baa, align 8, !tbaa !95
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 5, ptr %i.ban, align 2, !tbaa !87
  br label %.thread867

bb.jr:                                            ; preds = %bb.jp
  %i.bao = icmp ult i32 %i.bad, 61184
  %brmerge = or i1 %i.bao, %.not768
  br i1 %brmerge, label %bb.js, label %.thread867

bb.js:                                            ; preds = %bb.jr
  %i.bap = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 25, ptr %i.bap, align 2, !tbaa !87
  br label %.thread867

bb.jt:                                            ; preds = %bb.jl
  %i.baq = icmp eq i32 %2, 45098
  %or.cond107 = and i1 %i.baq, %i.xo
  br i1 %or.cond107, label %bb.ju, label %.thread865

bb.ju:                                            ; preds = %bb.jt
  %i.bar = zext nneg i32 %4 to i64                ; 2 uses
  %i.bas = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.bar, i64 noundef 1) ; 14 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !120 ; 2 uses
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !122
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 24
  %i.bax = load ptr, ptr %i.baw, align 8
  %i.bay = tail call noundef i32 %i.bax(ptr noundef nonnull align 8 dereferenceable(8) %i.bau, ptr noundef %i.bas, i64 noundef %i.bar, i64 noundef 1), !call_target !132 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bas, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !96 ; 4 uses
  %.phi.trans.insert884 = getelementptr inbounds nuw i8, ptr %i.bas, i64 2
  %.pre885 = load i8, ptr %.phi.trans.insert884, align 1, !tbaa !96 ; 4 uses
  br i1 %.not751, label %._crit_edge, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bas, i64 3
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !96
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  %i.bbc = load i8, ptr %i.bbb, align 1, !tbaa !96
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bas, i64 5
  %i.bbe = load i8, ptr %i.bbd, align 1, !tbaa !96
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bas, i64 6
  %i.bbg = load i8, ptr %i.bbf, align 1, !tbaa !96
  %i.bbh = tail call fastcc noundef zeroext i16 @_ZL18saneSonyCameraInfohhhhhh(i8 noundef zeroext %.pre, i8 noundef zeroext %.pre885, i8 noundef zeroext %i.bba, i8 noundef zeroext %i.bbc, i8 noundef zeroext %i.bbe, i8 noundef zeroext %i.bbg)
  %.not763 = icmp eq i16 %i.bbh, 0
  br i1 %.not763, label %bb.kq, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ju, %bb.jv
  %i.bbi = or i8 %.pre885, %.pre
  %.not764 = icmp eq i8 %i.bbi, 0
  br i1 %.not764, label %bb.kb, label %bb.jw

bb.jw:                                            ; preds = %._crit_edge
  %i.bbj = zext i8 %.pre to i32                   ; 2 uses
  %i.bbk = lshr i32 %i.bbj, 4
  %i.bbl = icmp ugt i8 %.pre, -97
  br i1 %i.bbl, label %_ZL7bcd2dech.exit848, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.bbm = and i32 %i.bbj, 15                     ; 2 uses
  %i.bbn = icmp samesign ugt i32 %i.bbm, 9
  br i1 %i.bbn, label %_ZL7bcd2dech.exit848, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bbo = mul nuw nsw i32 %i.bbk, 10
  %i.bbp = add nuw nsw i32 %i.bbo, %i.bbm
  %i.bbq = trunc nuw nsw i32 %i.bbp to i16
  %i.bbr = mul nuw nsw i16 %i.bbq, 100
  br label %_ZL7bcd2dech.exit848

_ZL7bcd2dech.exit848:                             ; preds = %bb.jw, %bb.jx, %bb.jy
  %.0.i847 = phi i16 [ %i.bbr, %bb.jy ], [ 0, %bb.jw ], [ 0, %bb.jx ]
  %i.bbs = zext i8 %.pre885 to i32                ; 2 uses
  %i.bbt = lshr i32 %i.bbs, 4
  %i.bbu = icmp ugt i8 %.pre885, -97
  br i1 %i.bbu, label %_ZL7bcd2dech.exit850, label %bb.jz

bb.jz:                                            ; preds = %_ZL7bcd2dech.exit848
  %i.bbv = and i32 %i.bbs, 15                     ; 2 uses
  %i.bbw = icmp samesign ugt i32 %i.bbv, 9
  br i1 %i.bbw, label %_ZL7bcd2dech.exit850, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bbx = mul nuw nsw i32 %i.bbt, 10
  %i.bby = add nuw nsw i32 %i.bbx, %i.bbv
  %i.bbz = trunc nuw nsw i32 %i.bby to i16
  br label %_ZL7bcd2dech.exit850

_ZL7bcd2dech.exit850:                             ; preds = %_ZL7bcd2dech.exit848, %bb.jz, %bb.ka
  %.0.i849 = phi i16 [ %i.bbz, %bb.ka ], [ 0, %_ZL7bcd2dech.exit848 ], [ 0, %bb.jz ]
  %i.bca = add nuw nsw i16 %.0.i849, %.0.i847
  %i.bcb = uitofp nneg i16 %i.bca to float
  %i.bcc = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store float %i.bcb, ptr %i.bcc, align 8, !tbaa !133
  br label %bb.kb

bb.kb:                                            ; preds = %_ZL7bcd2dech.exit850, %._crit_edge
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bas, i64 3
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !96 ; 3 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bas, i64 4
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !96 ; 3 uses
  %i.bch = or i8 %i.bcg, %i.bce
  %.not765 = icmp eq i8 %i.bch, 0
  br i1 %.not765, label %bb.kh, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bci = zext i8 %i.bce to i32                  ; 2 uses
  %i.bcj = lshr i32 %i.bci, 4
  %i.bck = icmp ugt i8 %i.bce, -97
  br i1 %i.bck, label %_ZL7bcd2dech.exit852, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bcl = and i32 %i.bci, 15                     ; 2 uses
  %i.bcm = icmp samesign ugt i32 %i.bcl, 9
  br i1 %i.bcm, label %_ZL7bcd2dech.exit852, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bcn = mul nuw nsw i32 %i.bcj, 10
  %i.bco = add nuw nsw i32 %i.bcn, %i.bcl
  %i.bcp = trunc nuw nsw i32 %i.bco to i16
  %i.bcq = mul nuw nsw i16 %i.bcp, 100
  br label %_ZL7bcd2dech.exit852

_ZL7bcd2dech.exit852:                             ; preds = %bb.kc, %bb.kd, %bb.ke
  %.0.i851 = phi i16 [ %i.bcq, %bb.ke ], [ 0, %bb.kc ], [ 0, %bb.kd ]
  %i.bcr = zext i8 %i.bcg to i32                  ; 2 uses
  %i.bcs = lshr i32 %i.bcr, 4
  %i.bct = icmp ugt i8 %i.bcg, -97
  br i1 %i.bct, label %_ZL7bcd2dech.exit854, label %bb.kf

bb.kf:                                            ; preds = %_ZL7bcd2dech.exit852
  %i.bcu = and i32 %i.bcr, 15                     ; 2 uses
  %i.bcv = icmp samesign ugt i32 %i.bcu, 9
  br i1 %i.bcv, label %_ZL7bcd2dech.exit854, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bcw = mul nuw nsw i32 %i.bcs, 10
  %i.bcx = add nuw nsw i32 %i.bcw, %i.bcu
  %i.bcy = trunc nuw nsw i32 %i.bcx to i16
  br label %_ZL7bcd2dech.exit854

_ZL7bcd2dech.exit854:                             ; preds = %_ZL7bcd2dech.exit852, %bb.kf, %bb.kg
  %.0.i853 = phi i16 [ %i.bcy, %bb.kg ], [ 0, %_ZL7bcd2dech.exit852 ], [ 0, %bb.kf ]
  %i.bcz = add nuw nsw i16 %.0.i853, %.0.i851
  %i.bda = uitofp nneg i16 %i.bcz to float
  %i.bdb = getelementptr inbounds nuw i8, ptr %0, i64 1460
  store float %i.bda, ptr %i.bdb, align 4, !tbaa !134
  br label %bb.kh

bb.kh:                                            ; preds = %_ZL7bcd2dech.exit854, %bb.kb
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bas, i64 5
  %i.bdd = load i8, ptr %i.bdc, align 1, !tbaa !96 ; 3 uses
  %.not766 = icmp eq i8 %i.bdd, 0
  br i1 %.not766, label %bb.kl, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bde = zext i8 %i.bdd to i32                  ; 2 uses
  %i.bdf = lshr i32 %i.bde, 4
  %i.bdg = icmp ugt i8 %i.bdd, -97
  br i1 %i.bdg, label %_ZL7bcd2dech.exit856, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bdh = and i32 %i.bde, 15                     ; 2 uses
  %i.bdi = icmp samesign ugt i32 %i.bdh, 9
  br i1 %i.bdi, label %_ZL7bcd2dech.exit856, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.bdj = mul nuw nsw i32 %i.bdf, 10
  %i.bdk = add nuw nsw i32 %i.bdj, %i.bdh
  %i.bdl = trunc nuw nsw i32 %i.bdk to i16
  %i.bdm = uitofp nneg i16 %i.bdl to float
  %i.bdn = fmul reassoc nnan nsz arcp contract afn float %i.bdm, 1.000000e-01
  br label %_ZL7bcd2dech.exit856

_ZL7bcd2dech.exit856:                             ; preds = %bb.ki, %bb.kj, %bb.kk
  %.0.i855 = phi float [ %i.bdn, %bb.kk ], [ 0.000000e+00, %bb.ki ], [ 0.000000e+00, %bb.kj ]
  %i.bdo = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store float %.0.i855, ptr %i.bdo, align 8, !tbaa !135
  br label %bb.kl

bb.kl:                                            ; preds = %_ZL7bcd2dech.exit856, %bb.kh
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bas, i64 6
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !96 ; 3 uses
  %.not767 = icmp eq i8 %i.bdq, 0
  br i1 %.not767, label %bb.kp, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bdr = zext i8 %i.bdq to i32                  ; 2 uses
  %i.bds = lshr i32 %i.bdr, 4
  %i.bdt = icmp ugt i8 %i.bdq, -97
  br i1 %i.bdt, label %_ZL7bcd2dech.exit858, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bdu = and i32 %i.bdr, 15                     ; 2 uses
  %i.bdv = icmp samesign ugt i32 %i.bdu, 9
  br i1 %i.bdv, label %_ZL7bcd2dech.exit858, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bdw = mul nuw nsw i32 %i.bds, 10
  %i.bdx = add nuw nsw i32 %i.bdw, %i.bdu
  %i.bdy = trunc nuw nsw i32 %i.bdx to i16
  %i.bdz = uitofp nneg i16 %i.bdy to float
  %i.bea = fmul reassoc nnan nsz arcp contract afn float %i.bdz, 1.000000e-01
  br label %_ZL7bcd2dech.exit858

_ZL7bcd2dech.exit858:                             ; preds = %bb.km, %bb.kn, %bb.ko
  %.0.i857 = phi float [ %i.bea, %bb.ko ], [ 0.000000e+00, %bb.km ], [ 0.000000e+00, %bb.kn ]
  %i.beb = getelementptr inbounds nuw i8, ptr %0, i64 1468
  store float %.0.i857, ptr %i.beb, align 4, !tbaa !136
  br label %bb.kp

bb.kp:                                            ; preds = %_ZL7bcd2dech.exit858, %bb.kl
  %i.bec = load i8, ptr %i.bas, align 1, !tbaa !96
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bas, i64 7
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !96
  tail call void @_ZN6LibRaw21parseSonyLensFeaturesEhh(ptr noundef nonnull align 8 dereferenceable(768512) %0, i8 noundef zeroext %i.bec, i8 noundef zeroext %i.bee)
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.jv
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bas)
  br label %.thread867

.thread865:                                       ; preds = %bb.jm, %bb.jt
  switch i32 %2, label %bb.ku [
    i32 45099, label %bb.kr
    i32 45121, label %bb.kt
  ]

bb.kr:                                            ; preds = %.thread865
  %i.bef = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  %i.beg = load i16, ptr %i.bef, align 2, !tbaa !205
  %i.beh = icmp eq i16 %i.beg, 0
  %or.cond109 = and i1 %i.ajz, %i.beh
  br i1 %or.cond109, label %bb.ks, label %.thread867

bb.ks:                                            ; preds = %bb.kr
  %i.bei = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bej = trunc i32 %i.bei to i16
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.bej, ptr %i.bek, align 4, !tbaa !206
  %i.bel = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bem = trunc i32 %i.bel to i16
  store i16 %i.bem, ptr %i.bef, align 2, !tbaa !205
  br label %.thread867

bb.kt:                                            ; preds = %.thread865
  %i.ben = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 5104
  store i16 %i.ben, ptr %i.beo, align 8, !tbaa !178
  br label %.thread867

bb.ku:                                            ; preds = %.thread865
  %i.bep = icmp eq i32 %2, 45123
  %or.cond111 = and i1 %i.bep, %i.ajn
  %or.cond113 = and i1 %i.aka, %or.cond111
  br i1 %or.cond113, label %bb.kv, label %.thread867

bb.kv:                                            ; preds = %bb.ku
  %i.beq = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 3618
  store i16 %i.beq, ptr %i.ber, align 2, !tbaa !107
  br label %.thread867

.thread867:                                       ; preds = %.preheader875, %.preheader874, %bb.jr, %bb.kr, %bb.gu, %bb.gv, %bb.dq, %bb.ai, %bb.ah, %bb.ao, %bb.dl, %bb.eg, %bb.ei, %bb.en, %bb.ga, %_ZN6LibRaw19process_Sony_0x0116EPhty.exit842, %bb.gf, %bb.gl, %bb.gp, %bb.go, %bb.gt, %bb.gz, %bb.he, %bb.hf, %bb.hd, %bb.hk, %bb.hj, %bb.hm, %bb.hl, %bb.ho, %bb.hr, %bb.hv, %bb.hu, %bb.ib, %bb.ia, %bb.il, %bb.iu, %bb.it, %bb.ja, %bb.iz, %bb.jq, %bb.js, %bb.jo, %bb.ks, %bb.ku, %bb.kv, %bb.kt, %bb.kq, %bb.jk, %bb.iw, %bb.ix, %bb.ir, %bb.id, %_ZN6LibRaw19process_Sony_0x9403EPht.exit844, %bb.hx, %bb.hy, %bb.hs, %bb.hp, %bb.hq, %bb.hn, %bb.hh, %bb.hi, %bb.hb, %bb.hc, %bb.gx, %bb.gr, %bb.gm, %bb.gk, %.thread864, %bb.eo, %bb.ek, %bb.em, %bb.el, %bb.eh, %bb.dp, %bb.ee, %bb.ds, %bb.dr, %bb.at, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.preheader.rtvec:                                 ; preds = %.preheader
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 3702
  %i.bet = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  %i.beu = load <16 x i8>, ptr %i.bet, align 1, !tbaa !96
  store <16 x i8> %i.beu, ptr %i.bes, align 2, !tbaa !96
  %i.bev = getelementptr inbounds nuw i8, ptr %i.agf, i64 22
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 3718
  %i.bex = load <4 x i8>, ptr %i.bev, align 1, !tbaa !96
  store <4 x i8> %i.bex, ptr %i.bew, align 2, !tbaa !96
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 3702
  %i.bez = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !96
  store i8 %i.bfa, ptr %i.bey, align 2, !tbaa !96
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.agf, i64 7
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !96
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 3703
  store i8 %i.bfc, ptr %i.bfd, align 1, !tbaa !96
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !96
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i8 %i.bff, ptr %i.bfg, align 8, !tbaa !96
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.agf, i64 9
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !96
  %i.bfj = getelementptr inbounds nuw i8, ptr %0, i64 3705
  store i8 %i.bfi, ptr %i.bfj, align 1, !tbaa !96
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.agf, i64 10
  %i.bfl = load i8, ptr %i.bfk, align 1, !tbaa !96
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 3706
  store i8 %i.bfl, ptr %i.bfm, align 2, !tbaa !96
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.agf, i64 11
  %i.bfo = load i8, ptr %i.bfn, align 1, !tbaa !96
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 3707
  store i8 %i.bfo, ptr %i.bfp, align 1, !tbaa !96
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.agf, i64 12
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !96
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 3708
  store i8 %i.bfr, ptr %i.bfs, align 4, !tbaa !96
  %i.bft = getelementptr inbounds nuw i8, ptr %i.agf, i64 13
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !96
  %i.bfv = getelementptr inbounds nuw i8, ptr %0, i64 3709
  store i8 %i.bfu, ptr %i.bfv, align 1, !tbaa !96
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.agf, i64 14
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !96
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 3710
  store i8 %i.bfx, ptr %i.bfy, align 2, !tbaa !96
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.agf, i64 15
  %i.bga = load i8, ptr %i.bfz, align 1, !tbaa !96
  %i.bgb = getelementptr inbounds nuw i8, ptr %0, i64 3711
  store i8 %i.bga, ptr %i.bgb, align 1, !tbaa !96
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !96
  %i.bge = getelementptr inbounds nuw i8, ptr %0, i64 3712
  store i8 %i.bgd, ptr %i.bge, align 8, !tbaa !96
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.agf, i64 17
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !96
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 3713
  store i8 %i.bgg, ptr %i.bgh, align 1, !tbaa !96
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.agf, i64 18
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !96
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 3714
  store i8 %i.bgj, ptr %i.bgk, align 2, !tbaa !96
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.agf, i64 19
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !96
  %i.bgn = getelementptr inbounds nuw i8, ptr %0, i64 3715
  store i8 %i.bgm, ptr %i.bgn, align 1, !tbaa !96
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.agf, i64 20
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !96
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 3716
  store i8 %i.bgp, ptr %i.bgq, align 4, !tbaa !96
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.agf, i64 21
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !96
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 3717
  store i8 %i.bgs, ptr %i.bgt, align 1, !tbaa !96
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.agf, i64 22
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !96
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 3718
  store i8 %i.bgv, ptr %i.bgw, align 2, !tbaa !96
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.agf, i64 23
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !96
  %i.bgz = getelementptr inbounds nuw i8, ptr %0, i64 3719
  store i8 %i.bgy, ptr %i.bgz, align 1, !tbaa !96
  %i.bha = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !96
  %i.bhc = getelementptr inbounds nuw i8, ptr %0, i64 3720
  store i8 %i.bhb, ptr %i.bhc, align 8, !tbaa !96
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.agf, i64 25
  %i.bhe = load i8, ptr %i.bhd, align 1, !tbaa !96
  %i.bhf = getelementptr inbounds nuw i8, ptr %0, i64 3721
  store i8 %i.bhe, ptr %i.bhf, align 1, !tbaa !96
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  %.rtmerge = icmp ugt i32 %4, 66
  br i1 %.rtmerge, label %bb.gd, label %.thread864
}

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext range(i16 0, 2) i16 @_ZL18saneSonyCameraInfohhhhhh(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #10 {
bb.a:
  %i.a = and i8 %0, 14
  %i.b = and i8 %1, 14
  %i.c = and i8 %2, 14
  %i.d = and i8 %3, 14
  %i.e = insertelement <8 x i8> poison, i8 %0, i64 0
  %i.f = insertelement <8 x i8> %i.e, i8 %i.a, i64 1
  %i.g = insertelement <8 x i8> %i.f, i8 %1, i64 2
  %i.h = insertelement <8 x i8> %i.g, i8 %i.b, i64 3
  %i.i = insertelement <8 x i8> %i.h, i8 %2, i64 4
  %i.j = insertelement <8 x i8> %i.i, i8 %i.c, i64 5
  %i.k = insertelement <8 x i8> %i.j, i8 %3, i64 6
  %i.l = insertelement <8 x i8> %i.k, i8 %i.d, i64 7
  %i.m = icmp ugt <8 x i8> %i.l, <i8 -97, i8 9, i8 -97, i8 9, i8 -97, i8 9, i8 -97, i8 9>
  %i.n = icmp ult i8 %4, -96
  %i.o = and i8 %4, 14
  %i.p = icmp samesign ult i8 %i.o, 10
  %i.q = icmp ult i8 %5, -96
  %i.r = bitcast <8 x i1> %i.m to i8
  %i.s = icmp eq i8 %i.r, 0
  %op.rdx.not37 = and i1 %i.s, %i.q
end_hunk_5
