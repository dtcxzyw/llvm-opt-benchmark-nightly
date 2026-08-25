Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiHyperText?download=true
inline.NumInlined: 2315
inline.NumDeleted: 795
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN10TextDrawer5placeERKN4core4rectIiEE:bb.a
bb.d:                                             ; preds = %bb.c
  br i1 %.not173, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 164
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %.sroa.speculated275 = tail call i32 @llvm.smax.i32(i32 %.0280380, i32 %i.ad)
  %i.ae = add nsw i32 %.sroa.speculated275, %.0134381
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.ae, %bb.e ], [ %.0280380, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 76
  store i32 %.sink, ptr %i.af, align 4, !tbaa !211
  switch i32 %i.ab, label %bb.h [
    i32 2, label %.thread
    i32 1, label %bb.g
  ]

.thread:                                          ; preds = %bb.f
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !209
  br label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !212
  %i.ai = load i32, ptr %1, align 4, !tbaa !214
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !135
  %i.al = load i32, ptr %i.g, align 8, !tbaa !209
  %i.am = add i32 %i.ai, %i.ak
  %i.an = add i32 %i.am, %i.al
  %i.ao = sub i32 %i.ah, %i.an
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %.thread
  %.sink432 = phi i32 [ %i.ag, %.thread ], [ %i.ao, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 72
  store i32 %.sink432, ptr %i.ap, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 64
  %i.as = load i64, ptr %i.aq, align 4            ; 4 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !207
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %i.aw = lshr i64 %i.as, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !206
  %i.ba = add i32 %i.az, %i.ax                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 164
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !126 ; 2 uses
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !204
  %.not.i = icmp eq ptr %i.z, %i.bd
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.as, ptr %i.z, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %i.av, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !41
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.ba, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !41
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 %i.bc, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !41
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 3 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !208
  br label %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !203 ; 5 uses
  %i.bh = ptrtoint ptr %i.z to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.k, label %_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #29
  unreachable

_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bl = sdiv exact i64 %i.bj, 20                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 461168601842738790)
  %i.bp = select i1 %i.bn, i64 461168601842738790, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = mul nuw nsw i64 %i.bp, 20
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #30 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj ; 4 uses
  store i64 %i.as, ptr %i.bs, align 4
  %.sroa.6.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.av, ptr %.sroa.6.0..sroa_idx243, align 4, !tbaa !41
  %.sroa.7.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %i.ba, ptr %.sroa.7.0..sroa_idx245, align 4, !tbaa !41
  %.sroa.8.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.bc, ptr %.sroa.8.0..sroa_idx247, align 4, !tbaa !41
  %.not10.i.i.i.i.i = icmp eq ptr %i.bg, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !216, !alias.scope !217
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 20 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !221

_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.br, %_ZNKSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 20 ; 3 uses
  %.not.i23.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !204
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.by) #27
  br label %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.br, ptr %i.a, align 8, !tbaa !203
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !208
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bz, ptr %i.m, align 8, !tbaa !204
  br label %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i, %bb.c
  %i.ca = phi ptr [ %i.bv, %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bf, %bb.i ], [ %i.y, %bb.c ] ; 2 uses
  %i.cb = phi ptr [ %i.bv, %_ZNSt6vectorIN10TextDrawer14RectWithMarginESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bf, %bb.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0253.0318, i64 168 ; 2 uses
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !127 ; 2 uses
  %.not = icmp eq ptr %i.cc, %i.cd
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !222

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !209 ; 3 uses
  %i.cf = load i32, ptr %i.l, align 4, !tbaa !212
  %i.cg = load i32, ptr %1, align 4, !tbaa !214
  %i.ch = add i32 %i.ce, %i.cg
  %i.ci = sub i32 %i.cf, %i.ch                    ; 2 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !210 ; 2 uses
  %.not301319 = icmp eq ptr %i.cj, %.pre395
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0268.0379, i64 24
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.2136375 = phi i32 [ %.1135, %.preheader.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %.sroa.0224.0374 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %.sroa.0224.2.lcssa427, %.loopexit ] ; 3 uses
  br i1 %.not301319, label %.split.us, label %.lr.ph325

.lr.ph325:                                        ; preds = %.preheader, %._crit_edge326
  %.0152 = phi i32 [ %.3155, %._crit_edge326 ], [ %.2136375, %.preheader ] ; 3 uses
  br label %bb.m

._crit_edge326:                                   ; preds = %.thread281
  %i.cl = icmp ne i32 %.3155, 0
  %i.cm = icmp sle i32 %.1157, %.1159
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %i.cn, label %.lr.ph325, label %.split.us, !llvm.loop !223

bb.m:                                             ; preds = %.lr.ph325, %.thread281
  %.1153323 = phi i32 [ 0, %.lr.ph325 ], [ %.3155, %.thread281 ] ; 5 uses
  %.0156322 = phi i32 [ %i.ci, %.lr.ph325 ], [ %.1157, %.thread281 ] ; 8 uses
  %.0158321 = phi i32 [ %i.ce, %.lr.ph325 ], [ %.1159, %.thread281 ] ; 6 uses
  %.sroa.0220.0320 = phi ptr [ %i.cj, %.lr.ph325 ], [ %i.do, %.thread281 ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0220.0320, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !224
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0220.0320, i64 16 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !226 ; 8 uses
  %i.cs = sub nsw i32 %i.cp, %i.cr
  %.not165 = icmp sgt i32 %i.cs, %.0152
  br i1 %.not165, label %.thread281, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0220.0320, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0220.0320, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !227 ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.cr
  %.not166 = icmp slt i32 %i.cw, %.0152
  br i1 %.not166, label %.thread281, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not167 = icmp eq i32 %.1153323, 0
  %.pre393 = load i32, ptr %i.w, align 4, !tbaa !41 ; 4 uses
  br i1 %.not167, label %._crit_edge396, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 %.pre393)
  %i.cy = add nsw i32 %i.cx, %i.cv
  %i.cz = icmp slt i32 %i.cy, %.1153323
  br i1 %i.cz, label %._crit_edge396, label %bb.q

._crit_edge396:                                   ; preds = %bb.p, %bb.o
  %i.da = icmp slt i32 %i.cr, %.pre393
  %..i177 = select i1 %i.da, ptr %i.w, ptr %i.cq
  %i.db = load i32, ptr %..i177, align 4, !tbaa !41
  %i.dc = add i32 %i.cv, 1
  %i.dd = add i32 %i.dc, %i.db
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge396, %bb.p
  %.2154 = phi i32 [ %i.dd, %._crit_edge396 ], [ %.1153323, %bb.p ] ; 4 uses
  %i.de = load i32, ptr %.sroa.0220.0320, align 4, !tbaa !228 ; 2 uses
  %i.df = sub nsw i32 %i.de, %i.cr
  %.not168 = icmp sgt i32 %i.df, %.0158321
  %i.dg = load i32, ptr %i.ct, align 4, !tbaa !229 ; 2 uses
  %i.dh = add nsw i32 %i.dg, %i.cr
  %.not169 = icmp slt i32 %i.dh, %.0156322        ; 2 uses
  br i1 %.not168, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not169, label %bb.s, label %.thread281

bb.s:                                             ; preds = %bb.r
  %i.di = icmp slt i32 %i.cr, %.pre393
  %..i178 = select i1 %i.di, ptr %i.w, ptr %i.cq
  %i.dj = load i32, ptr %..i178, align 4, !tbaa !41
  %i.dk = add nsw i32 %i.dj, %i.dg
  %spec.select290 = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 %.0158321)
  br label %.thread281

bb.t:                                             ; preds = %bb.q
  br i1 %.not169, label %.thread281, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = icmp slt i32 %i.cr, %.pre393
  %..i180 = select i1 %i.dl, ptr %i.w, ptr %i.cq
  %i.dm = load i32, ptr %..i180, align 4, !tbaa !41
  %i.dn = sub nsw i32 %i.de, %i.dm
  %spec.select291 = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %.0156322)
  br label %.thread281

.thread281:                                       ; preds = %bb.r, %bb.u, %bb.s, %bb.t, %bb.n, %bb.m
  %.1159 = phi i32 [ %.0158321, %bb.t ], [ %.0158321, %bb.n ], [ %spec.select290, %bb.s ], [ %.0158321, %bb.u ], [ %.0158321, %bb.m ], [ %.0156322, %bb.r ] ; 3 uses
  %.1157 = phi i32 [ %.0156322, %bb.t ], [ %.0156322, %bb.n ], [ %.0156322, %bb.s ], [ %spec.select291, %bb.u ], [ %.0156322, %bb.m ], [ %.0156322, %bb.r ] ; 3 uses
  %.3155 = phi i32 [ %.2154, %bb.t ], [ %.1153323, %bb.n ], [ %.2154, %bb.s ], [ %.2154, %bb.u ], [ %.1153323, %bb.m ], [ %.2154, %bb.r ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0220.0320, i64 20 ; 2 uses
  %.not301 = icmp eq ptr %i.do, %.pre395
  br i1 %.not301, label %._crit_edge326, label %bb.m

.split.us:                                        ; preds = %._crit_edge326, %.preheader
  %.us-phi = phi i32 [ %.2136375, %.preheader ], [ %.0152, %._crit_edge326 ] ; 3 uses
  %.us-phi330 = phi i32 [ %i.ce, %.preheader ], [ %.1159, %._crit_edge326 ] ; 2 uses
  %.us-phi331 = phi i32 [ %i.ci, %.preheader ], [ %.1157, %._crit_edge326 ]
  %i.dp = sub nsw i32 %.us-phi331, %.us-phi330    ; 4 uses
  %i.dq = sitofp nsz i32 %.us-phi330 to float     ; 5 uses
  %.not302332 = icmp eq ptr %.sroa.0224.0374, %.lcssa314
  br i1 %.not302332, label %.critedge, label %.lr.ph336

.lr.ph336:                                        ; preds = %.split.us, %bb.x
  %.0144334 = phi i32 [ %.1145, %bb.x ], [ 0, %.split.us ] ; 3 uses
  %.sroa.0224.1333 = phi ptr [ %i.ea, %bb.x ], [ %.sroa.0224.0374, %.split.us ] ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0224.1333, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !122
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.lr.ph336
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0224.1333, i64 84
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !134
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0224.1333, i64 80
  store i32 0, ptr %i.dx, align 8, !tbaa !230
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0224.1333, i64 68
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !136
  %spec.select292 = tail call i32 @llvm.umax.i32(i32 %.0144334, i32 %i.dz)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1145 = phi i32 [ %.0144334, %bb.v ], [ %spec.select292, %bb.w ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0224.1333, i64 168 ; 3 uses
  %.not302 = icmp eq ptr %i.ea, %.lcssa314
  br i1 %.not302, label %.critedge, label %.lr.ph336, !llvm.loop !231

.critedge:                                        ; preds = %.lr.ph336, %bb.x, %.split.us
  %.sroa.0224.1.lcssa = phi ptr [ %.sroa.0224.0374, %.split.us ], [ %i.ea, %bb.x ], [ %.sroa.0224.1333, %.lr.ph336 ] ; 8 uses
  %.0144.lcssa = phi i32 [ 0, %.split.us ], [ %.1145, %bb.x ], [ %.0144334, %.lr.ph336 ] ; 2 uses
  %.sroa.0224.1.lcssa443 = ptrtoaddr ptr %.sroa.0224.1.lcssa to i64
  %.not303342 = icmp eq ptr %.sroa.0224.1.lcssa, %.lcssa314
  br i1 %.not303342, label %.loopexit, label %.lr.ph348

.lr.ph348:                                        ; preds = %.critedge, %bb.aa
  %.0137347 = phi i32 [ %.2139, %bb.aa ], [ 0, %.critedge ] ; 3 uses
  %.0140346 = phi i32 [ %.1141, %bb.aa ], [ 0, %.critedge ] ; 4 uses
  %.2146345 = phi i32 [ %.3147, %bb.aa ], [ %.0144.lcssa, %.critedge ] ; 3 uses
  %.sroa.0213.0344 = phi ptr [ %.sroa.0213.2, %bb.aa ], [ %.lcssa314, %.critedge ] ; 3 uses
  %.sroa.0224.2343 = phi ptr [ %i.eq, %bb.aa ], [ %.sroa.0224.1.lcssa, %.critedge ] ; 8 uses
  %i.eb = icmp eq i32 %.0140346, 0
  br i1 %i.eb, label %.critedge4, label %bb.y

bb.y:                                             ; preds = %.lr.ph348
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0224.2343, i64 64
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !135
  %i.ee = add i32 %i.ed, %.0140346
  %.not162 = icmp ugt i32 %i.ee, %i.dp
  br i1 %.not162, label %.critedge2, label %.critedge4

.critedge4:                                       ; preds = %.lr.ph348, %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0224.2343, i64 84
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !134
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge4
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0224.2343, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !122
  %.not164 = icmp ne i32 %i.ej, 1                 ; 2 uses
  %spec.select293 = select i1 %.not164, ptr %.sroa.0224.2343, ptr %.sroa.0213.0344
  %i.ek = zext i1 %.not164 to i32
  %spec.select294 = add i32 %.0137347, %i.ek
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0224.2343, i64 64
  %i.em = load i32, ptr %i.el, align 8, !tbaa !135
  %i.en = add i32 %i.em, %.0140346
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0224.2343, i64 68
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !136
  %spec.select296 = tail call i32 @llvm.umax.i32(i32 %.2146345, i32 %i.ep)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge4
  %.sroa.0213.2 = phi ptr [ %.sroa.0213.0344, %.critedge4 ], [ %spec.select293, %bb.z ] ; 2 uses
  %.3147 = phi i32 [ %.2146345, %.critedge4 ], [ %spec.select296, %bb.z ] ; 2 uses
  %.1141 = phi i32 [ %.0140346, %.critedge4 ], [ %i.en, %bb.z ]
  %.2139 = phi i32 [ %.0137347, %.critedge4 ], [ %spec.select294, %bb.z ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0224.2343, i64 168 ; 3 uses
  %.not303 = icmp eq ptr %i.eq, %.lcssa314
  br i1 %.not303, label %.critedge2, label %.lr.ph348, !llvm.loop !232

.critedge2:                                       ; preds = %bb.y, %bb.aa
  %.sroa.0224.2.lcssa = phi ptr [ %i.eq, %bb.aa ], [ %.sroa.0224.2343, %bb.y ] ; 3 uses
  %.sroa.0213.0.lcssa = phi ptr [ %.sroa.0213.2, %bb.aa ], [ %.sroa.0213.0344, %bb.y ] ; 4 uses
  %.2146.lcssa = phi i32 [ %.3147, %bb.aa ], [ %.2146345, %bb.y ] ; 3 uses
  %.0137.lcssa = phi i32 [ %.2139, %bb.aa ], [ %.0137347, %bb.y ] ; 2 uses
  %.sroa.0213.0.lcssa442 = ptrtoaddr ptr %.sroa.0213.0.lcssa to i64
  %i.er = icmp eq ptr %.sroa.0213.0.lcssa, %.lcssa314
  br i1 %i.er, label %.loopexit, label %bb.ab, !llvm.loop !233

bb.ab:                                            ; preds = %.critedge2
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0213.0.lcssa, i64 168 ; 2 uses
  %.not304358 = icmp eq ptr %.sroa.0224.1.lcssa, %i.es ; 2 uses
  br i1 %.not304358, label %._crit_edge365, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %bb.ab
  %i.et = sub i64 %.sroa.0213.0.lcssa442, %.sroa.0224.1.lcssa443 ; 2 uses
  %i.eu = udiv i64 %i.et, 168                     ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %i.ew = icmp ult i64 %i.et, 168
  br i1 %i.ew, label %.lr.ph364.epil.preheader, label %.lr.ph364.preheader.new

.lr.ph364.preheader.new:                          ; preds = %.lr.ph364.preheader
  %unroll_iter = and i64 %i.ev, 288230376151711742
  br label %.lr.ph364

._crit_edge365.loopexit.unr-lcssa:                ; preds = %bb.af
  %i.ex = and i64 %i.eu, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ex, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph364.epil.preheader, label %._crit_edge365

.lr.ph364.epil.preheader:                         ; preds = %._crit_edge365.loopexit.unr-lcssa, %.lr.ph364.preheader
  %.0132361.epil.init = phi i32 [ 0, %.lr.ph364.preheader ], [ %.2.1, %._crit_edge365.loopexit.unr-lcssa ] ; 2 uses
  %.2142360.epil.init = phi i32 [ 0, %.lr.ph364.preheader ], [ %.3143.1, %._crit_edge365.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0201.0359.epil.init = phi ptr [ %.sroa.0224.1.lcssa, %.lr.ph364.preheader ], [ %i.gg, %._crit_edge365.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod446 = trunc i64 %i.ev to i1
  tail call void @llvm.assume(i1 %lcmp.mod446)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0201.0359.epil.init, i64 84
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !134
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.ac, label %._crit_edge365

bb.ac:                                            ; preds = %.lr.ph364.epil.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0201.0359.epil.init, i64 64
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !135
  %i.fd = add i32 %i.fc, %.2142360.epil.init
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0201.0359.epil.init, i64 68
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !136
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0201.0359.epil.init, i64 116
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !199
  %i.fi = sub nsw i32 %i.ff, %i.fh
  %spec.select295.epil = tail call i32 @llvm.smax.i32(i32 %.0132361.epil.init, i32 %i.fi)
  br label %._crit_edge365

._crit_edge365:                                   ; preds = %._crit_edge365.loopexit.unr-lcssa, %bb.ac, %.lr.ph364.epil.preheader, %bb.ab
  %.2142.lcssa = phi i32 [ 0, %bb.ab ], [ %.3143.1, %._crit_edge365.loopexit.unr-lcssa ], [ %.2142360.epil.init, %.lr.ph364.epil.preheader ], [ %i.fd, %bb.ac ] ; 3 uses
  %.0132.lcssa = phi i32 [ 0, %bb.ab ], [ %.2.1, %._crit_edge365.loopexit.unr-lcssa ], [ %.0132361.epil.init, %.lr.ph364.epil.preheader ], [ %spec.select295.epil, %bb.ac ]
  %i.fj = load i32, ptr %i.ck, align 8, !tbaa !54
  switch i32 %i.fj, label %.critedge6 [
    i32 0, label %bb.ag
    i32 3, label %bb.ah
    i32 2, label %bb.aj
  ]

end_hunk_0
