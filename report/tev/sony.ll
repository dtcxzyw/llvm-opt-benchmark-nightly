Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/sony?download=true
inline.NumInlined: 115
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN6LibRaw19process_Sony_0x0116EPhty:bb.a
  %i.g = icmp ugt i16 %2, 2
  %or.cond11 = and i1 %i.g, %i.f
  br i1 %or.cond11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.a ], [ 2, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -32
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.l, 1.800000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4820
  store float %i.m, ptr %i.n, align 4, !tbaa !94
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19process_Sony_0x2010EPht(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3666
  %i.c = load i16, ptr %i.b, align 2, !tbaa !87
  switch i16 %i.c, label %.fold.split [
    i16 0, label %bb.q
    i16 5, label %bb.b
    i16 6, label %bb.e
    i16 7, label %bb.c
    i16 8, label %bb.e
    i16 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
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
  %i.j = load i8, ptr %i.i, align 1, !tbaa !93    ; 3 uses
  %i.k = icmp ult i8 %i.j, 28
  %switch.maskindex = zext nneg i8 %i.j to i32
  %switch.shifted = lshr i32 134217987, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.k, i1 %switch.lobit, i1 false
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !93
  %i.o = uitofp i8 %i.n to float
  br label %.fold.split.sink.split

switch.lookup:                                    ; preds = %bb.f
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6LibRaw19process_Sony_0x2010EPht, i64 %i.l
  %switch.load = load float, ptr %switch.gep, align 4
  br label %.fold.split.sink.split

.fold.split.sink.split:                           ; preds = %switch.lookup, %bb.g
  %.sink = phi float [ %switch.load, %switch.lookup ], [ %i.o, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3780
  store float %.sink, ptr %i.p, align 4, !tbaa !95
  br label %.fold.split

.fold.split:                                      ; preds = %.fold.split.sink.split, %bb.a, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.r = load i16, ptr %i.q, align 8, !tbaa !140  ; 3 uses
  %.not27 = icmp eq i16 %i.r, -1
  br i1 %.not27, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.fold.split
  %i.s = zext i16 %i.r to i32
  %i.t = zext i16 %2 to i32
  %i.u = add nuw nsw i32 %i.s, 2
  %.not28 = icmp samesign ugt i32 %i.u, %i.t
  br i1 %.not28, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !96
  %i.x = fcmp olt float %i.w, 1.000000e-01
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.y = zext i16 %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !93
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !93
  store i8 %i.ad, ptr %i.a, align 1, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !93
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !93
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !93
  %i.ak = call noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  %i.al = uitofp i16 %i.ak to float
  %i.am = fmul nnan float %i.al, 3.906250e-03
  %i.an = fsub float 1.600000e+01, %i.am          ; 2 uses
  %i.ao = call float @llvm.fabs.f32(float %i.an)
  %or.cond.i.i = fcmp ogt float %i.ao, 6.400000e+01
  br i1 %or.cond.i.i, label %_ZN6LibRaw14libraw_powf64lEff.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %exp2f = call float @exp2f(float %i.an)
  %i.ap = fmul float %exp2f, 1.000000e+02
  br label %_ZN6LibRaw14libraw_powf64lEff.exit

_ZN6LibRaw14libraw_powf64lEff.exit:               ; preds = %bb.j, %bb.k
  %i.aq = phi float [ %i.ap, %bb.k ], [ 0.000000e+00, %bb.j ]
  store float %i.aq, ptr %i.v, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.l:                                             ; preds = %_ZN6LibRaw14libraw_powf64lEff.exit, %bb.i, %bb.h, %.fold.split
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3674
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !141 ; 3 uses
  %.not29 = icmp eq i16 %i.as, -1
  br i1 %.not29, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %i.au = load i16, ptr %i.at, align 4, !tbaa !142 ; 2 uses
  %i.av = icmp ugt i16 %2, %i.as
  %i.aw = icmp ugt i16 %2, %i.au
  %or.cond32 = and i1 %i.av, %i.aw
  br i1 %or.cond32, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = zext i16 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !93
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !93
  %i.bd = zext i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i16 %i.bd, ptr %i.be, align 4, !tbaa !97
  %i.bf = zext i16 %i.au to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !93
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !93
  %i.bl = zext i8 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5106
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3678
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !143 ; 2 uses
  %i.bp = icmp ugt i16 %2, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = zext i16 %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !93
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !93
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5096
  store i16 %i.bw, ptr %i.bx, align 8, !tbaa !99
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.a
  ret void
}

declare noundef zeroext i16 @_ZN6LibRaw5sget2EPh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19process_Sony_0x9050EPhty(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3668 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %.pre = load i16, ptr %i.b, align 8             ; 2 uses
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.off = add i16 %.pre, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 1, ptr %i.c, align 4, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.f = phi i16 [ 1, %bb.c ], [ %i.d, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !85   ; 2 uses
  %.not127 = icmp eq i16 %i.i, 40                 ; 2 uses
  %.not127.a = icmp eq i16 %.pre, 1
  %or.cond = select i1 %.not127, i1 true, i1 %.not127.a
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.j = icmp ult i16 %2, 2
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %1, align 1, !tbaa !93      ; 2 uses
  %.not129 = icmp eq i8 %i.k, 0
  br i1 %.not129, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !93
  %i.o = uitofp i8 %i.n to float
  %i.p = fmul nnan float %i.o, 1.250000e-01
  %i.q = fadd nnan float %i.p, -1.060000e+00
  %i.r = fmul nnan float %i.q, 5.000000e-01       ; 2 uses
  %i.s = tail call float @llvm.fabs.f32(float %i.r)
  %or.cond.i.i = fcmp ogt float %i.s, 6.400000e+01
  br i1 %or.cond.i.i, label %_ZN6LibRaw14libraw_powf64lEff.exit.thread, label %_ZN6LibRaw14libraw_powf64lEff.exit

_ZN6LibRaw14libraw_powf64lEff.exit:               ; preds = %bb.f
  %exp2f = tail call float @exp2f(float %i.r)
  %i.t = fmul float %exp2f, 1.000000e+01          ; 4 uses
  %i.u = fcmp ult float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.g, label %_ZN6LibRaw14libraw_powf64lEff.exit.thread

_ZN6LibRaw14libraw_powf64lEff.exit.thread:        ; preds = %bb.f, %_ZN6LibRaw14libraw_powf64lEff.exit
  %i.v = phi float [ %i.t, %_ZN6LibRaw14libraw_powf64lEff.exit ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.w = tail call float @llvm.ceil.f32(float %i.v) ; 3 uses
  %i.x = fsub float %i.w, %i.v
  %i.y = fcmp ogt float %i.x, 5.000000e-01
  %i.z = fadd float %i.w, -1.000000e+00
  %.0.i = select i1 %i.y, float %i.z, float %i.w
  br label %_ZL9my_roundff.exit

bb.g:                                             ; preds = %_ZN6LibRaw14libraw_powf64lEff.exit
  %i.aa = fneg float %i.t
  %i.ab = tail call float @llvm.ceil.f32(float %i.aa) ; 3 uses
  %i.ac = fadd float %i.t, %i.ab
  %i.ad = fcmp ogt float %i.ac, 5.000000e-01
  %i.ae = fadd float %i.ab, -1.000000e+00
  %.1.i = select i1 %i.ad, float %i.ae, float %i.ab
  %i.af = fneg float %.1.i
  br label %_ZL9my_roundff.exit

_ZL9my_roundff.exit:                              ; preds = %_ZN6LibRaw14libraw_powf64lEff.exit.thread, %bb.g
  %.012.i = phi float [ %.0.i, %_ZN6LibRaw14libraw_powf64lEff.exit.thread ], [ %i.af, %bb.g ]
  %i.ag = fdiv float %.012.i, 1.000000e+01
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store float %i.ag, ptr %i.ah, align 8, !tbaa !144
  br label %bb.h

bb.h:                                             ; preds = %_ZL9my_roundff.exit, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !93  ; 2 uses
  %.not130 = icmp eq i8 %i.aj, 0
  br i1 %.not130, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !93
  %i.an = uitofp i8 %i.am to float
  %i.ao = fmul nnan float %i.an, 1.250000e-01
  %i.ap = fadd nnan float %i.ao, -1.060000e+00
  %i.aq = fmul nnan float %i.ap, 5.000000e-01     ; 2 uses
  %i.ar = tail call float @llvm.fabs.f32(float %i.aq)
  %or.cond.i.i149 = fcmp ogt float %i.ar, 6.400000e+01
  br i1 %or.cond.i.i149, label %_ZN6LibRaw14libraw_powf64lEff.exit150.thread, label %_ZN6LibRaw14libraw_powf64lEff.exit150

_ZN6LibRaw14libraw_powf64lEff.exit150:            ; preds = %bb.i
  %exp2f157 = tail call float @exp2f(float %i.aq)
  %i.as = fmul float %exp2f157, 1.000000e+01      ; 4 uses
  %i.at = fcmp ult float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.j, label %_ZN6LibRaw14libraw_powf64lEff.exit150.thread

_ZN6LibRaw14libraw_powf64lEff.exit150.thread:     ; preds = %bb.i, %_ZN6LibRaw14libraw_powf64lEff.exit150
  %i.au = phi float [ %i.as, %_ZN6LibRaw14libraw_powf64lEff.exit150 ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.av = tail call float @llvm.ceil.f32(float %i.au) ; 3 uses
  %i.aw = fsub float %i.av, %i.au
  %i.ax = fcmp ogt float %i.aw, 5.000000e-01
  %i.ay = fadd float %i.av, -1.000000e+00
  %.0.i151 = select i1 %i.ax, float %i.ay, float %i.av
  br label %_ZL9my_roundff.exit154

bb.j:                                             ; preds = %_ZN6LibRaw14libraw_powf64lEff.exit150
  %i.az = fneg float %i.as
  %i.ba = tail call float @llvm.ceil.f32(float %i.az) ; 3 uses
  %i.bb = fadd float %i.as, %i.ba
  %i.bc = fcmp ogt float %i.bb, 5.000000e-01
  %i.bd = fadd float %i.ba, -1.000000e+00
  %.1.i153 = select i1 %i.bc, float %i.bd, float %i.ba
  %i.be = fneg float %.1.i153
  br label %_ZL9my_roundff.exit154

_ZL9my_roundff.exit154:                           ; preds = %_ZN6LibRaw14libraw_powf64lEff.exit150.thread, %bb.j
  %.012.i152 = phi float [ %.0.i151, %_ZN6LibRaw14libraw_powf64lEff.exit150.thread ], [ %i.be, %bb.j ]
  %i.bf = fdiv float %.012.i152, 1.000000e+01
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1500
  store float %i.bf, ptr %i.bg, align 4, !tbaa !145
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZL9my_roundff.exit154, %.thread
  switch i16 %i.f, label %bb.v [
    i16 2, label %bb.l
    i16 3, label %bb.l
    i16 4, label %bb.n
    i16 1, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bh = icmp eq i64 %3, 384
  %spec.select = select i1 %i.bh, i32 138, i32 136 ; 2 uses
  %i.bi = zext i16 %2 to i32
  %i.bj = or disjoint i32 %spec.select, 5         ; 2 uses
  %.not131 = icmp samesign ult i32 %i.bj, %i.bi
  br i1 %.not131, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bk = zext nneg i32 %spec.select to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk ; 5 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !93
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !93
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !93
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !93
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !93
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !93
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !93
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !93
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !93
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !93
  %i.co = zext i8 %i.cn to i64
  %i.cp = zext nneg i32 %i.bj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !93
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !93
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.cx = shl nuw nsw i64 %i.bq, 40
  %i.cy = shl nuw nsw i64 %i.bw, 32
  %i.cz = or disjoint i64 %i.cy, %i.cx
  %i.da = shl nuw nsw i64 %i.cc, 24
  %i.db = or disjoint i64 %i.cz, %i.da
  %i.dc = shl nuw nsw i64 %i.ci, 16
  %i.dd = or disjoint i64 %i.db, %i.dc
  %i.de = shl nuw nsw i64 %i.co, 8
  %i.df = or disjoint i64 %i.dd, %i.de
  %i.dg = or disjoint i64 %i.df, %i.cv
  %i.dh = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.dg) #17 ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.di = icmp ugt i16 %2, 61
  br i1 %i.di, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !93
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !93
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !93
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !93
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !93
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !93
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !93
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !93
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !93
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !93
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !93
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !93
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.eu = shl nuw nsw i64 %i.do, 40
  %i.ev = shl nuw nsw i64 %i.du, 32
  %i.ew = or disjoint i64 %i.ev, %i.eu
  %i.ex = shl nuw nsw i64 %i.ea, 24
  %i.ey = or disjoint i64 %i.ew, %i.ex
  %i.ez = shl nuw nsw i64 %i.eg, 16
  %i.fa = or disjoint i64 %i.ey, %i.ez
  %i.fb = shl nuw nsw i64 %i.em, 8
  %i.fc = or disjoint i64 %i.fa, %i.fb
  %i.fd = or disjoint i64 %i.fc, %i.es
  %i.fe = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.fd) #17 ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %bb.k
  %i.ff = add i64 %3, -291
  %i.fg = icmp ult i64 %i.ff, -3
  %or.cond6 = and i1 %i.fg, %.not127
  br i1 %or.cond6, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fh = icmp ult i16 %2, 128
  br i1 %i.fh, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !93
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !93
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !93
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !93
  %i.ft = zext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !93
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !93
  %i.fz = zext i8 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !93
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !93
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.gh = shl nuw i32 %i.fn, 24
  %i.gi = shl nuw nsw i32 %i.ft, 16
  %i.gj = or disjoint i32 %i.gi, %i.gh
  %i.gk = shl nuw nsw i32 %i.fz, 8
  %i.gl = or disjoint i32 %i.gj, %i.gk
  %i.gm = or disjoint i32 %i.gl, %i.gf
  %i.gn = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.gm) #17 ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.go = icmp eq i16 %i.i, 25
  br i1 %i.go, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.gp = icmp ult i16 %2, 245
  br i1 %i.gp, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !93
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !93
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 241
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !93
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !93
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !93
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !93
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 243
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !93
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !93
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !93
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !93
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 5174
  %i.hv = shl nuw nsw i64 %i.gv, 32
  %i.hw = shl nuw nsw i64 %i.hb, 24
  %i.hx = or disjoint i64 %i.hw, %i.hv
  %i.hy = shl nuw nsw i64 %i.hh, 16
  %i.hz = or disjoint i64 %i.hx, %i.hy
  %i.ia = shl nuw nsw i64 %i.hn, 8
  %i.ib = or disjoint i64 %i.hz, %i.ia
  %i.ic = or disjoint i64 %i.ib, %i.ht
  %i.id = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hu, ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.ic) #17 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.r, %bb.u, %bb.s
  %i.ie = load i16, ptr %i.b, align 8, !tbaa !86
  %.not132 = icmp eq i16 %i.ie, 1
  br i1 %.not132, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.if = icmp ult i16 %2, 263
  br i1 %i.if, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !93  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !93  ; 2 uses
  %i.ik = or i8 %i.ij, %i.ih
  %.not133 = icmp eq i8 %i.ik, 0
  br i1 %.not133, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.il = zext i8 %i.ih to i64
  %i.im = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !93
  %i.io = zext i8 %i.in to i16
  %i.ip = shl nuw i16 %i.io, 8
  %i.iq = zext i8 %i.ij to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !93
  %i.it = zext i8 %i.is to i16
  %i.iu = or disjoint i16 %i.ip, %i.it
  %i.iv = uitofp i16 %i.iu to float
  %i.iw = fmul nnan float %i.iv, 3.906250e-03
  %i.ix = fadd nnan float %i.iw, -1.600000e+01
  %i.iy = fmul nnan float %i.ix, 5.000000e-01     ; 2 uses
  %i.iz = tail call float @llvm.fabs.f32(float %i.iy)
  %or.cond.i.i155 = fcmp ogt float %i.iz, 6.400000e+01
  br i1 %or.cond.i.i155, label %_ZN6LibRaw14libraw_powf64lEff.exit156, label %bb.z

bb.z:                                             ; preds = %bb.y
  %exp2f158 = tail call float @exp2f(float %i.iy)
  br label %_ZN6LibRaw14libraw_powf64lEff.exit156

_ZN6LibRaw14libraw_powf64lEff.exit156:            ; preds = %bb.y, %bb.z
  %i.ja = phi float [ %exp2f158, %bb.z ], [ 0.000000e+00, %bb.y ]
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store float %i.ja, ptr %i.jb, align 4, !tbaa !100
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6LibRaw14libraw_powf64lEff.exit156, %bb.x
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 261
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !93  ; 2 uses
  %.not134 = icmp eq i8 %i.jd, 0
  br i1 %.not134, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 2 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !84
  switch i16 %i.jf, label %bb.ac [
    i16 5, label %bb.ae
    i16 39, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.jg = zext i8 %i.jd to i64
  %i.jh = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !93
  switch i8 %i.ji, label %bb.ae [
    i8 1, label %.sink.split
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ad
  %.sink = phi i16 [ 40, %bb.ad ], [ 25, %bb.ac ]
  store i16 %.sink, ptr %i.je, align 2, !tbaa !84
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ab, %bb.ab, %bb.ac, %bb.aa
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 262
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !93  ; 2 uses
  %.not137 = icmp eq i8 %i.jk, 0
  br i1 %.not137, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jl = zext i8 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr @_ZL16SonySubstitution, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !93
  switch i8 %i.jn, label %bb.ah [
    i8 1, label %.sink.split172
    i8 2, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  br label %.sink.split172

.sink.split172:                                   ; preds = %bb.af, %bb.ag
  %.sink173 = phi i16 [ 2, %bb.ag ], [ 1, %bb.af ]
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 %.sink173, ptr %i.jo, align 8, !tbaa !101
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split172, %bb.ae, %bb.af, %bb.v
  %i.jp = load i16, ptr %i.h, align 2, !tbaa !85
  %i.jq = icmp eq i16 %i.jp, 40
  br i1 %i.jq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
end_hunk_0
