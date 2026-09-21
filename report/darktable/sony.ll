Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/sony?download=true
inline.NumInlined: 98
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6LibRaw19process_Sony_0x0116EPhty:bb.a
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
  %.not127.a = icmp eq i16 %.pre, 1
  %or.cond = select i1 %.not127, i1 true, i1 %.not127.a
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
  %i.t = select i1 %or.cond.i.i, float 0.000000e+00, float %i.s ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.t) ; 3 uses
  %i.v = fsub reassoc nsz arcp contract afn float %i.u, %i.t
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, 5.000000e-01
  %i.x = fadd reassoc nnan nsz arcp contract afn float %i.u, -1.000000e+00
  %spec.select.i = select nsz i1 %i.w, float %i.x, float %i.u
  %i.y = fmul reassoc nnan nsz arcp contract afn float %spec.select.i, 1.000000e-01
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store float %i.y, ptr %i.z, align 8, !tbaa !159
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !96  ; 2 uses
  %.not130 = icmp eq i8 %i.ab, 0
  br i1 %.not130, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !96
  %i.af = uitofp reassoc nsz arcp contract afn i8 %i.ae to float
  %i.ag = fmul reassoc nnan nsz arcp contract afn float %i.af, 6.250000e-02
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, -5.300000e-01 ; 2 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ah)
  %or.cond.i.i149 = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 6.400000e+01
  %exp2152 = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.ah)
  %i.aj = fmul reassoc nnan nsz arcp contract afn float %exp2152, 1.000000e+01
  %i.ak = select i1 %or.cond.i.i149, float 0.000000e+00, float %i.aj ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ak) ; 3 uses
  %i.am = fsub reassoc nsz arcp contract afn float %i.al, %i.ak
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, 5.000000e-01
  %i.ao = fadd reassoc nnan nsz arcp contract afn float %i.al, -1.000000e+00
  %spec.select.i150 = select nsz i1 %i.an, float %i.ao, float %i.al
  %i.ap = fmul reassoc nnan nsz arcp contract afn float %spec.select.i150, 1.000000e-01
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1500
  store float %i.ap, ptr %i.aq, align 4, !tbaa !160
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.thread
  switch i16 %i.f, label %bb.t [
    i16 2, label %bb.j
    i16 3, label %bb.j
    i16 4, label %bb.l
    i16 1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ar = icmp eq i64 %3, 384
  %spec.select = select i1 %i.ar, i32 138, i32 136 ; 2 uses
  %i.as = zext i16 %2 to i32
  %i.at = or disjoint i32 %spec.select, 5         ; 2 uses
  %.not131 = icmp samesign ult i32 %i.at, %i.as
  br i1 %.not131, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.au = zext nneg i32 %spec.select to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au ; 5 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !96
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !96
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !96
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !96
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !96
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !96
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !96
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !96
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !96
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !96
  %i.by = zext i8 %i.bx to i64
  %i.bz = zext nneg i32 %i.at to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !96
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !96
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.ch = shl nuw nsw i64 %i.ba, 40
  %i.ci = shl nuw nsw i64 %i.bg, 32
  %i.cj = or disjoint i64 %i.ci, %i.ch
  %i.ck = shl nuw nsw i64 %i.bm, 24
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = shl nuw nsw i64 %i.bs, 16
  %i.cn = or disjoint i64 %i.cl, %i.cm
  %i.co = shl nuw nsw i64 %i.by, 8
  %i.cp = or disjoint i64 %i.cn, %i.co
  %i.cq = or disjoint i64 %i.cp, %i.cf
  %i.cr = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cg, ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.cq) #19 ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %bb.i
  %i.cs = icmp ugt i16 %2, 61
  br i1 %i.cs, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !96
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !96
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !96
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !96
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !96
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !96
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !96
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !96
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !96
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !96
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !96
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !96
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.ee = shl nuw nsw i64 %i.cy, 40
  %i.ef = shl nuw nsw i64 %i.de, 32
  %i.eg = or disjoint i64 %i.ef, %i.ee
  %i.eh = shl nuw nsw i64 %i.dk, 24
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = shl nuw nsw i64 %i.dq, 16
  %i.ek = or disjoint i64 %i.ei, %i.ej
  %i.el = shl nuw nsw i64 %i.dw, 8
  %i.em = or disjoint i64 %i.ek, %i.el
  %i.en = or disjoint i64 %i.em, %i.ec
  %i.eo = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ed, ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.en) #19 ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.i
  %i.ep = add i64 %3, -291
  %i.eq = icmp ult i64 %i.ep, -3
  %or.cond6 = and i1 %i.eq, %.not127
  br i1 %or.cond6, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.er = icmp ult i16 %2, 128
  br i1 %i.er, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.et = load i8, ptr %i.es, align 1, !tbaa !96
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !96
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !96
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !96
  %i.fd = zext i8 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !96
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !96
  %i.fj = zext i8 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !96
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !96
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.fr = shl nuw i32 %i.ex, 24
  %i.fs = shl nuw nsw i32 %i.fd, 16
  %i.ft = or disjoint i32 %i.fs, %i.fr
  %i.fu = shl nuw nsw i32 %i.fj, 8
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = or disjoint i32 %i.fv, %i.fp
  %i.fx = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.fq, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.fw) #19 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.fy = icmp eq i16 %i.i, 25
  br i1 %i.fy, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fz = icmp ult i16 %2, 245
  br i1 %i.fz, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !96
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !96
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 241
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !96
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !96
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !96
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !96
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 243
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !96
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !96
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !96
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !96
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.hf = shl nuw nsw i64 %i.gf, 32
  %i.hg = shl nuw nsw i64 %i.gl, 24
  %i.hh = or disjoint i64 %i.hg, %i.hf
  %i.hi = shl nuw nsw i64 %i.gr, 16
  %i.hj = or disjoint i64 %i.hh, %i.hi
  %i.hk = shl nuw nsw i64 %i.gx, 8
  %i.hl = or disjoint i64 %i.hj, %i.hk
  %i.hm = or disjoint i64 %i.hl, %i.hd
  %i.hn = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.he, ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.hm) #19 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.p, %bb.s, %bb.q
  %i.ho = load i16, ptr %i.b, align 8, !tbaa !89
  %.not132 = icmp eq i16 %i.ho, 1
  br i1 %.not132, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hp = icmp ult i16 %2, 263
  br i1 %i.hp, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !96  ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !96  ; 2 uses
  %i.hu = or i8 %i.ht, %i.hr
  %.not133 = icmp eq i8 %i.hu, 0
  br i1 %.not133, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = zext i8 %i.hr to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !96
  %i.hy = zext i8 %i.hx to i16
  %i.hz = shl nuw i16 %i.hy, 8
  %i.ia = zext i8 %i.ht to i64
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !96
  %i.id = zext i8 %i.ic to i16
  %i.ie = or disjoint i16 %i.hz, %i.id
  %i.if = uitofp reassoc nsz arcp contract afn i16 %i.ie to float
  %i.ig = fmul reassoc nnan nsz arcp contract afn float %i.if, f0x3B000000
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, -8.000000e+00 ; 2 uses
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ih)
  %or.cond.i.i151 = fcmp reassoc nsz arcp contract afn ogt float %i.ii, 6.400000e+01
  %exp2153 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ih)
  %i.ij = select reassoc nsz arcp contract afn i1 %or.cond.i.i151, float 0.000000e+00, float %exp2153
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.ij, ptr %i.ik, align 4, !tbaa !103
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 261
  %i.im = load i8, ptr %i.il, align 1, !tbaa !96  ; 2 uses
  %.not134 = icmp eq i8 %i.im, 0
  br i1 %.not134, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !87
  switch i16 %i.io, label %bb.z [
    i16 5, label %bb.ab
    i16 39, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.ip = zext i8 %i.im to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !96
  switch i8 %i.ir, label %bb.ab [
    i8 1, label %.sink.split
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.aa
  %.sink = phi i16 [ 40, %bb.aa ], [ 25, %bb.z ]
  store i16 %.sink, ptr %i.in, align 2, !tbaa !87
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.y, %bb.y, %bb.z, %bb.x
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 262
  %i.it = load i8, ptr %i.is, align 1, !tbaa !96  ; 2 uses
  %.not137 = icmp eq i8 %i.it, 0
  br i1 %.not137, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !96
  switch i8 %i.iw, label %bb.ae [
    i8 1, label %.sink.split164
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %.sink.split164

.sink.split164:                                   ; preds = %bb.ac, %bb.ad
  %.sink165 = phi i16 [ 2, %bb.ad ], [ 1, %bb.ac ]
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 %.sink165, ptr %i.ix, align 8, !tbaa !104
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split164, %bb.ab, %bb.ac, %bb.t
  %i.iy = load i16, ptr %i.h, align 2, !tbaa !88
  %i.iz = icmp eq i16 %i.iy, 40
  br i1 %i.iz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ja = icmp ult i16 %2, 265
  br i1 %i.ja, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !96
  %i.jd = zext i8 %i.jc to i64
end_hunk_0
