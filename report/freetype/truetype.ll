Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@TT_New_Context:bb.a
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186  ; 4 uses
  %i.d = call ptr @ft_mem_alloc(ptr noundef %i.c, i64 noundef 992, ptr noundef nonnull %i.a) #21 ; 7 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !187
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189  ; 2 uses
  %.not20 = icmp eq ptr %i.i, null
  %spec.select = select i1 %.not20, ptr @TT_RunIns, ptr %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %spec.select, ptr %i.j, align 8, !tbaa !190
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.k, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 716
  store i32 32, ptr %i.l, align 4, !tbaa !195
  %i.m = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 32, i64 noundef 0, i64 noundef 32, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  store ptr %i.m, ptr %i.n, align 8, !tbaa !196
  %i.o = load i32, ptr %i.a, align 4, !tbaa !187
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef nonnull %i.d) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @TT_RunIns(ptr noundef initializes((32, 36)) %0) #2 {
bb.a:
  %1 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %2 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.IUP_WorkerRec_, align 8     ; 8 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %5 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 40 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 842 ; 50 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 17 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 458 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 459 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 478 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 19 uses
  %i.am = getelementptr i8, ptr %0, i64 480       ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 482       ; 8 uses
  %i.ap = getelementptr i8, ptr %0, i64 484       ; 20 uses
  %i.aq = getelementptr i8, ptr %0, i64 486       ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 24 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 19 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 22 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 18 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 574 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 570 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 15 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 470 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 474 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 466 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 841
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.c

bb.b:                                             ; preds = %bb.xn
  %i.dt = add nuw nsw i64 %i.du, 1
  %exitcond = icmp eq i64 %i.du, 1000000
  br i1 %exitcond, label %.loopexit.sink.split, label %bb.c, !llvm.loop !313

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.du = phi i64 [ 1, %bb.a ], [ %i.dt, %bb.b ]  ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !314
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !249 ; 24 uses
  %i.dw = load i64, ptr %i.d, align 8, !tbaa !251
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !227 ; 25 uses
  store i8 %i.dy, ptr %i.e, align 8, !tbaa !315
  store i32 1, ptr %i.f, align 4, !tbaa !316
  %i.dz = load i64, ptr %i.g, align 8, !tbaa !317
  %i.ea = zext i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @Pop_Push_Count, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !227 ; 2 uses
  %i.ed = lshr i8 %i.ec, 4                        ; 3 uses
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = sub nsw i64 %i.dz, %i.ee                ; 3 uses
  store i64 %i.ef, ptr %i.h, align 8, !tbaa !318
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eh = load i8, ptr %i.i, align 2, !tbaa !198
  %.not = icmp eq i8 %i.eh, 0
  br i1 %.not, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.d
  %.not956 = icmp eq i8 %i.ed, 0
  br i1 %.not956, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !215
  %8 = shl nuw nsw i8 %i.ed, 3
  %9 = zext nneg i8 %8 to i64
  %10 = add nuw nsw i64 %9, 524280
  %11 = and i64 %10, 524280
  %12 = add nuw nsw i64 %11, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, i8 0, i64 %12, i1 false), !tbaa !226
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.preheader
  store i64 0, ptr %i.h, align 8, !tbaa !318
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  %i.ej = phi i64 [ 0, %.thread ], [ %i.ef, %bb.c ] ; 8 uses
  %i.ek = and i8 %i.ec, 15
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = add nuw nsw i64 %i.ej, %i.el            ; 16 uses
  store i64 %i.em, ptr %i.k, align 8, !tbaa !319
  %i.en = load i64, ptr %i.l, align 8, !tbaa !210 ; 4 uses
  %i.eo = icmp sgt i64 %i.em, %i.en
  br i1 %i.eo, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !215 ; 2 uses
  %i.eq = ptrtoaddr ptr %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ej ; 204 uses
  switch i8 %i.dy, label %bb.ws [
    i8 0, label %bb.g
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.s
    i8 7, label %bb.s
    i8 8, label %bb.ad
    i8 9, label %bb.ad
    i8 10, label %bb.aq
    i8 11, label %bb.ax
    i8 12, label %bb.bg
    i8 13, label %bb.bh
    i8 14, label %bb.bi
    i8 15, label %bb.bs
    i8 16, label %bb.ca
    i8 17, label %bb.cb
    i8 18, label %bb.cc
    i8 19, label %bb.cd
    i8 20, label %bb.ch
    i8 21, label %bb.cl
    i8 22, label %bb.cp
    i8 23, label %bb.ct
    i8 24, label %bb.cv
    i8 25, label %bb.cw
    i8 26, label %bb.cx
    i8 27, label %bb.cy
    i8 28, label %bb.dh
    i8 29, label %bb.dn
    i8 30, label %bb.do
    i8 31, label %bb.dp
    i8 32, label %bb.dq
    i8 33, label %Ins_SPVTL.exitthread-pre-split
    i8 34, label %bb.dr
    i8 35, label %bb.ds
    i8 36, label %bb.dt
    i8 37, label %bb.du
    i8 38, label %bb.dy
    i8 39, label %bb.eb
    i8 40, label %bb.ef
    i8 41, label %bb.eo
    i8 42, label %bb.er
    i8 43, label %bb.fg
    i8 44, label %bb.fs
    i8 45, label %bb.gi
    i8 46, label %bb.gp
    i8 47, label %bb.gp
    i8 48, label %bb.gu
    i8 49, label %bb.gu
    i8 50, label %bb.ht
    i8 51, label %bb.ht
    i8 52, label %bb.ih
    i8 53, label %bb.ih
    i8 54, label %bb.jc
    i8 55, label %bb.jc
    i8 56, label %bb.jr
    i8 57, label %bb.kp
    i8 58, label %bb.ls
    i8 59, label %bb.ls
    i8 60, label %bb.lz
    i8 61, label %bb.mg
    i8 62, label %bb.mh
    i8 63, label %bb.mh
    i8 64, label %bb.mq
    i8 65, label %bb.mt
    i8 66, label %bb.mw
    i8 67, label %bb.nc
    i8 68, label %bb.ng
    i8 69, label %bb.nj
    i8 70, label %bb.nn
    i8 71, label %bb.nn
    i8 72, label %bb.nt
    i8 73, label %bb.nx
    i8 74, label %bb.nx
    i8 75, label %bb.oj
    i8 76, label %bb.ok
    i8 77, label %bb.on
    i8 78, label %bb.oo
    i8 79, label %.loopexit.sink.split
    i8 80, label %bb.op
    i8 81, label %bb.oq
    i8 82, label %bb.or
    i8 83, label %bb.os
    i8 84, label %bb.ot
    i8 85, label %bb.ou
    i8 86, label %bb.ov
    i8 87, label %bb.ow
    i8 88, label %bb.ox
    i8 89, label %Ins_SPVTL.exitthread-pre-split
    i8 90, label %bb.pe
    i8 91, label %bb.pg
    i8 92, label %bb.pi
    i8 93, label %bb.pj
    i8 94, label %bb.pk
    i8 95, label %bb.pl
    i8 96, label %bb.pn
    i8 97, label %bb.po
    i8 98, label %bb.pp
    i8 99, label %bb.pr
    i8 100, label %bb.ps
    i8 101, label %bb.pu
    i8 102, label %bb.pv
    i8 103, label %bb.pw
    i8 104, label %bb.px
    i8 105, label %bb.px
    i8 106, label %bb.px
    i8 107, label %bb.px
    i8 108, label %bb.py
    i8 109, label %bb.py
    i8 110, label %bb.py
    i8 111, label %bb.py
    i8 112, label %bb.qb
    i8 113, label %bb.qe
    i8 114, label %bb.qe
    i8 115, label %bb.qf
    i8 116, label %bb.qf
    i8 117, label %bb.qf
    i8 118, label %switch.lookup
    i8 119, label %switch.lookup1327
    i8 120, label %bb.rd
    i8 121, label %bb.rk
    i8 122, label %bb.rr
    i8 123, label %bb.rs
    i8 124, label %bb.sb
    i8 125, label %bb.sc
    i8 126, label %Ins_SPVTL.exitthread-pre-split
    i8 127, label %Ins_SPVTL.exitthread-pre-split
    i8 -128, label %bb.sd
    i8 -127, label %bb.sk
    i8 -126, label %bb.so
    i8 -125, label %bb.ss
    i8 -124, label %bb.ss
    i8 -123, label %bb.tb
    i8 -122, label %bb.tu
    i8 -121, label %bb.tu
    i8 -120, label %bb.uh
    i8 -119, label %bb.uv
    i8 -118, label %bb.vl
    i8 -117, label %bb.vm
    i8 -116, label %bb.vo
    i8 -115, label %bb.vq
    i8 -114, label %bb.vs
    i8 -113, label %bb.wc
    i8 -112, label %bb.wc
    i8 -111, label %bb.wl
    i8 -110, label %bb.wp
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.tr.i = zext nneg i8 %i.dy to i16
  %i.es = shl i16 %.tr.i, 14
  %i.et = and i16 %i.es, 16384                    ; 5 uses
  %i.eu = xor i16 %i.et, 16384                    ; 4 uses
  %i.ev = icmp samesign ult i8 %i.dy, 4
  br i1 %i.ev, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 %i.et, ptr %i.am, align 8, !tbaa !320
  store i16 %i.eu, ptr %i.ao, align 2, !tbaa !321
  store i16 %i.et, ptr %i.ah, align 4, !tbaa !322
  store i16 %i.eu, ptr %i.aj, align 2, !tbaa !323
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ew = and i8 %i.dy, 2
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %i.ey = load <2 x i16>, ptr %i.ap, align 4, !tbaa !155
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.et, ptr %i.ap, align 4, !tbaa !324
  store i16 %i.eu, ptr %i.aq, align 2, !tbaa !325
  %i.ez = insertelement <2 x i16> poison, i16 %i.et, i64 0
  %i.fa = insertelement <2 x i16> %i.ez, i16 %i.eu, i64 1
  br label %bb.k
end_hunk_0
