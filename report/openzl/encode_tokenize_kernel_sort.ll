Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_tokenize_kernel_sort?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
begin_hunk_0_@pdqsort_loop:bb.a

vsfComparator.exit.i:                             ; preds = %bb.h, %bb.g
  %.1.i.i = phi i32 [ %i.au, %bb.g ], [ %.0.i.i, %bb.h ]
  %i.bc = icmp slt i32 %.1.i.i, 0
  br i1 %i.bc, label %bb.f, label %vsfComparator.exit.i..critedge.i_crit_edge, !llvm.loop !20

vsfComparator.exit.i..critedge.i_crit_edge:       ; preds = %vsfComparator.exit.i
  br label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %bb.f, %vsfComparator.exit.i..critedge.i_crit_edge, %bb.e
  %.017.i.lcssa = phi ptr [ %.017.i40, %vsfComparator.exit.i..critedge.i_crit_edge ], [ %.01833.i, %bb.e ], [ %i.ao, %bb.f ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ao, %vsfComparator.exit.i..critedge.i_crit_edge ], [ %0, %bb.e ], [ %0, %bb.f ]
  store ptr %.sroa.0.0.copyload.i, ptr %.lcssa.i, align 8, !tbaa !16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %.017.i.lcssa, i64 -8
  store i32 %i.u, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !17
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %.017.i.lcssa, i64 -4
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %vsfComparator.exit25.i
  %.018.i = getelementptr inbounds nuw i8, ptr %.01833.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.018.i, %1
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !21

._crit_edge.thread:                               ; preds = %insertion_sort.exit, %._crit_edge
  %.0114.lcssa317 = phi ptr [ %0, %._crit_edge ], [ %.3117, %insertion_sort.exit ] ; 3 uses
  %i.bd = icmp eq ptr %.0114.lcssa317, %1
  %.01626.i = getelementptr inbounds nuw i8, ptr %.0114.lcssa317, i64 16 ; 2 uses
  %.not27.i = icmp eq ptr %.01626.i, %1
  %or.cond.i124 = select i1 %i.bd, i1 true, i1 %.not27.i
  br i1 %or.cond.i124, label %.loopexit, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %._crit_edge.thread, %bb.q
  %.01629.i = phi ptr [ %.016.i, %bb.q ], [ %.01626.i, %._crit_edge.thread ] ; 5 uses
  %.pn28.i = phi ptr [ %.01629.i, %bb.q ], [ %.0114.lcssa317, %._crit_edge.thread ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pn28.i, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !14 ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn28.i, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !14 ; 3 uses
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i125
  %i.bj = zext i32 %i.bf to i64
  %i.bk = load ptr, ptr %.01629.i, align 8, !tbaa !15 ; 2 uses
  %i.bl = load ptr, ptr %.pn28.i, align 8, !tbaa !15
  %i.bm = call i32 @memcmp(ptr noundef %i.bk, ptr noundef %i.bl, i64 noundef %i.bj) #8
  br label %vsfComparator.exit21.i

bb.k:                                             ; preds = %.lr.ph.i125
  %i.bn = call i32 @llvm.umin.i32(i32 %i.bf, i32 %i.bh)
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %.01629.i, align 8, !tbaa !15 ; 2 uses
  %i.bq = load ptr, ptr %.pn28.i, align 8, !tbaa !15
  %i.br = call i32 @memcmp(ptr noundef %i.bp, ptr noundef %i.bq, i64 noundef %i.bo) #8 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = icmp ult i32 %i.bf, %i.bh
  %i.bu = select i1 %i.bt, i32 -1, i32 1
  %.0.i19.i = select i1 %i.bs, i32 %i.bu, i32 %i.br
  br label %vsfComparator.exit21.i

vsfComparator.exit21.i:                           ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload.i126 = phi ptr [ %i.bk, %bb.j ], [ %i.bp, %bb.k ] ; 3 uses
  %.1.i20.i = phi i32 [ %i.bm, %bb.j ], [ %.0.i19.i, %bb.k ]
  %i.bv = icmp slt i32 %.1.i20.i, 0
  br i1 %i.bv, label %bb.l, label %bb.q

bb.l:                                             ; preds = %vsfComparator.exit21.i
  %.sroa.7.0..016.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn28.i, i64 28
  %.sroa.7.0.copyload.i128 = load i32, ptr %.sroa.7.0..016.sroa_idx.i, align 4
  %i.bw = zext i32 %i.bf to i64
  br label %bb.m

bb.m:                                             ; preds = %vsfComparator.exit.i131, %bb.l
  %.015.i = phi ptr [ %.01629.i, %bb.l ], [ %i.bx, %vsfComparator.exit.i131 ] ; 4 uses
  %.0.i129 = phi ptr [ %.pn28.i, %bb.l ], [ %i.by, %vsfComparator.exit.i131 ] ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.015.i, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i129, i64 16, i1 false), !tbaa.struct !18
  %i.by = getelementptr inbounds i8, ptr %.0.i129, i64 -16 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.0.i129, i64 -8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %i.cb = icmp eq i32 %i.bf, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.cd = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i126, ptr noundef %i.cc, i64 noundef %i.bw) #8
  br label %vsfComparator.exit.i131

bb.o:                                             ; preds = %bb.m
  %i.ce = call i32 @llvm.umin.i32(i32 %i.bf, i32 %i.ca)
  %i.cf = zext i32 %i.ce to i64
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ch = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i126, ptr noundef %i.cg, i64 noundef %i.cf) #8 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = icmp ult i32 %i.bf, %i.ca
  %i.ck = select i1 %i.cj, i32 -1, i32 1
  %.0.i.i130 = select i1 %i.ci, i32 %i.ck, i32 %i.ch
  br label %vsfComparator.exit.i131

vsfComparator.exit.i131:                          ; preds = %bb.o, %bb.n
  %.1.i.i132 = phi i32 [ %i.cd, %bb.n ], [ %.0.i.i130, %bb.o ]
  %i.cl = icmp slt i32 %.1.i.i132, 0
  br i1 %i.cl, label %bb.m, label %bb.p, !llvm.loop !22

bb.p:                                             ; preds = %vsfComparator.exit.i131
  store ptr %.sroa.0.0.copyload.i126, ptr %i.bx, align 8, !tbaa !16
  %.sroa.6.0..sroa_idx.i133 = getelementptr inbounds i8, ptr %.015.i, i64 -8
  store i32 %i.bf, ptr %.sroa.6.0..sroa_idx.i133, align 8, !tbaa !17
  %.sroa.7.0..sroa_idx.i134 = getelementptr inbounds i8, ptr %.015.i, i64 -4
  store i32 %.sroa.7.0.copyload.i128, ptr %.sroa.7.0..sroa_idx.i134, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %vsfComparator.exit21.i
  %.016.i = getelementptr inbounds nuw i8, ptr %.01629.i, i64 16 ; 2 uses
  %.not.i127 = icmp eq ptr %.016.i, %1
  br i1 %.not.i127, label %.loopexit, label %.lr.ph.i125, !llvm.loop !23

bb.r:                                             ; preds = %.lr.ph, %insertion_sort.exit
  %i.cm = phi i64 [ %i.f, %.lr.ph ], [ %.pre-phi250, %insertion_sort.exit ] ; 5 uses
  %i.cn = phi i64 [ %i.d, %.lr.ph ], [ %.pre-phi, %insertion_sort.exit ]
  %.0107203 = phi i1 [ %3, %.lr.ph ], [ false, %insertion_sort.exit ] ; 2 uses
  %.0110202 = phi i32 [ %2, %.lr.ph ], [ %.4, %insertion_sort.exit ] ; 5 uses
  %.0114200 = phi ptr [ %0, %.lr.ph ], [ %.3117, %insertion_sort.exit ] ; 35 uses
  %i.co = lshr i64 %i.cm, 1                       ; 3 uses
  %i.cp = icmp ugt i64 %i.cm, 128
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.0114200, i64 %i.co ; 7 uses
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call fastcc void @sort3(ptr noundef %.0114200, ptr noundef %i.cq, ptr noundef nonnull %i.h)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0114200, i64 16
  %i.cs = getelementptr i8, ptr %i.cq, i64 -16    ; 2 uses
  call fastcc void @sort3(ptr noundef nonnull %i.cr, ptr noundef %i.cs, ptr noundef nonnull %i.i)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0114200, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  call fastcc void @sort3(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.j)
  call fastcc void @sort3(ptr noundef %i.cs, ptr noundef %i.cq, ptr noundef nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %.0114200, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0114200, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call fastcc void @sort3(ptr noundef %i.cq, ptr noundef %.0114200, ptr noundef nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %.0107203, label %._crit_edge244, label %bb.v

._crit_edge244:                                   ; preds = %bb.u
  %.sroa.0.0.copyload.i143.pre = load ptr, ptr %.0114200, align 8, !tbaa !16
  %.sroa.46.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0114200, i64 8
  %.sroa.46.0.copyload.i.pre = load i32, ptr %.sroa.46.0..sroa_idx.i.phi.trans.insert, align 8, !tbaa !17
  br label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds i8, ptr %.0114200, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.0114200, i64 -8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !14 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0114200, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !14 ; 21 uses
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = zext i32 %i.cx to i64
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.dd = load ptr, ptr %.0114200, align 8, !tbaa !15 ; 2 uses
  %i.de = call i32 @memcmp(ptr noundef %i.dc, ptr noundef %i.dd, i64 noundef %i.db) #8
  br label %vsfComparator.exit

bb.x:                                             ; preds = %bb.v
  %i.df = call i32 @llvm.umin.i32(i32 %i.cx, i32 %i.cz)
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.di = load ptr, ptr %.0114200, align 8, !tbaa !15 ; 2 uses
  %i.dj = call i32 @memcmp(ptr noundef %i.dh, ptr noundef %i.di, i64 noundef %i.dg) #8 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ult i32 %i.cx, %i.cz
  %i.dm = select i1 %i.dl, i32 -1, i32 1
  %.0.i = select i1 %i.dk, i32 %i.dm, i32 %i.dj
  br label %vsfComparator.exit

vsfComparator.exit:                               ; preds = %bb.w, %bb.x
  %.sroa.0.0.copyload.i135 = phi ptr [ %i.dd, %bb.w ], [ %i.di, %bb.x ] ; 12 uses
  %.1.i = phi i32 [ %i.de, %bb.w ], [ %.0.i, %bb.x ]
  %i.dn = icmp slt i32 %.1.i, 0
  br i1 %i.dn, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %vsfComparator.exit
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0114200, i64 12
  %.sroa.19.0.copyload.i = load i32, ptr %.sroa.19.0..sroa_idx.i, align 4
  %i.do = zext i32 %i.cz to i64                   ; 5 uses
  br label %bb.z

bb.z:                                             ; preds = %vsfComparator.exit35.i, %bb.y
  %.021.i = phi ptr [ %1, %bb.y ], [ %i.dp, %vsfComparator.exit35.i ] ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.021.i, i64 -16 ; 7 uses
  %i.dq = getelementptr inbounds i8, ptr %.021.i, i64 -8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !14 ; 3 uses
  %i.ds = icmp eq i32 %i.cz, %i.dr
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !15
  %i.du = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.dt, i64 noundef %i.do) #8
  br label %vsfComparator.exit35.i

bb.ab:                                            ; preds = %bb.z
  %i.dv = call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.dr)
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !15
  %i.dy = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.dx, i64 noundef %i.dw) #8 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = icmp ult i32 %i.cz, %i.dr
  %i.eb = select i1 %i.ea, i32 -1, i32 1
  %.0.i33.i = select i1 %i.dz, i32 %i.eb, i32 %i.dy
  br label %vsfComparator.exit35.i

vsfComparator.exit35.i:                           ; preds = %bb.ab, %bb.aa
  %.1.i34.i = phi i32 [ %i.du, %bb.aa ], [ %.0.i33.i, %bb.ab ]
  %i.ec = icmp slt i32 %.1.i34.i, 0
  br i1 %i.ec, label %bb.z, label %bb.ac, !llvm.loop !24

bb.ac:                                            ; preds = %vsfComparator.exit35.i
  %i.ed = icmp eq ptr %.021.i, %1
  br i1 %i.ed, label %.preheader52.i, label %.preheader53.i

.preheader52.i:                                   ; preds = %bb.ac, %vsfComparator.exit32.i
  %.0.i142 = phi ptr [ %i.ef, %vsfComparator.exit32.i ], [ %.0114200, %bb.ac ] ; 4 uses
  %i.ee = icmp ult ptr %.0.i142, %i.dp
  br i1 %i.ee, label %bb.ad, label %.critedge.i137

bb.ad:                                            ; preds = %.preheader52.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i142, i64 16 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i142, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !14 ; 3 uses
  %i.ei = icmp eq i32 %i.cz, %i.eh
  br i1 %i.ei, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !15
  %i.ek = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.ej, i64 noundef %i.do) #8
  br label %vsfComparator.exit32.i

bb.af:                                            ; preds = %bb.ad
  %i.el = call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.eh)
  %i.em = zext i32 %i.el to i64
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !15
  %i.eo = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.en, i64 noundef %i.em) #8 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  %i.eq = icmp ult i32 %i.cz, %i.eh
  %i.er = select i1 %i.eq, i32 -1, i32 1
  %.0.i30.i = select i1 %i.ep, i32 %i.er, i32 %i.eo
  br label %vsfComparator.exit32.i

vsfComparator.exit32.i:                           ; preds = %bb.af, %bb.ae
  %.1.i31.i = phi i32 [ %i.ek, %bb.ae ], [ %.0.i30.i, %bb.af ]
  %i.es = icmp sgt i32 %.1.i31.i, -1
  br i1 %i.es, label %.preheader52.i, label %.critedge.i137, !llvm.loop !25

.preheader53.i:                                   ; preds = %bb.ac, %vsfComparator.exit29.i
  %.1.i136 = phi ptr [ %i.et, %vsfComparator.exit29.i ], [ %.0114200, %bb.ac ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1.i136, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.1.i136, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !14 ; 3 uses
  %i.ew = icmp eq i32 %i.cz, %i.ev
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.preheader53.i
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !15
  %i.ey = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.ex, i64 noundef %i.do) #8
  br label %vsfComparator.exit29.i

bb.ah:                                            ; preds = %.preheader53.i
  %i.ez = call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.ev)
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !15
  %i.fc = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.fb, i64 noundef %i.fa) #8 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = icmp ult i32 %i.cz, %i.ev
  %i.ff = select i1 %i.fe, i32 -1, i32 1
  %.0.i27.i = select i1 %i.fd, i32 %i.ff, i32 %i.fc
  br label %vsfComparator.exit29.i

vsfComparator.exit29.i:                           ; preds = %bb.ah, %bb.ag
  %.1.i28.i = phi i32 [ %i.ey, %bb.ag ], [ %.0.i27.i, %bb.ah ]
  %i.fg = icmp sgt i32 %.1.i28.i, -1
  br i1 %i.fg, label %.preheader53.i, label %.critedge.i137, !llvm.loop !26

.critedge.i137:                                   ; preds = %vsfComparator.exit29.i, %vsfComparator.exit32.i, %.preheader52.i
  %.2.i = phi ptr [ %i.ef, %vsfComparator.exit32.i ], [ %.0.i142, %.preheader52.i ], [ %i.et, %vsfComparator.exit29.i ] ; 2 uses
  %i.fh = icmp ult ptr %.2.i, %i.dp
  br i1 %i.fh, label %.lr.ph.i138, label %partition_left.exit

.lr.ph.i138:                                      ; preds = %.critedge.i137, %bb.an
  %.359.i = phi ptr [ %i.fw, %bb.an ], [ %.2.i, %.critedge.i137 ] ; 3 uses
  %.12258.i = phi ptr [ %i.fi, %bb.an ], [ %i.dp, %.critedge.i137 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %.359.i, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.359.i, ptr noundef nonnull align 8 dereferenceable(16) %.12258.i, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.12258.i, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.ai

bb.ai:                                            ; preds = %vsfComparator.exit26.i, %.lr.ph.i138
  %.223.i = phi ptr [ %.12258.i, %.lr.ph.i138 ], [ %i.fi, %vsfComparator.exit26.i ] ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.223.i, i64 -16 ; 6 uses
  %i.fj = getelementptr inbounds i8, ptr %.223.i, i64 -8
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !14 ; 3 uses
  %i.fl = icmp eq i32 %i.cz, %i.fk
  br i1 %i.fl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !15
  %i.fn = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.fm, i64 noundef %i.do) #8
  br label %vsfComparator.exit26.i

bb.ak:                                            ; preds = %bb.ai
  %i.fo = call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.fk)
  %i.fp = zext i32 %i.fo to i64
  %i.fq = load ptr, ptr %i.fi, align 8, !tbaa !15
  %i.fr = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.fq, i64 noundef %i.fp) #8 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = icmp ult i32 %i.cz, %i.fk
  %i.fu = select i1 %i.ft, i32 -1, i32 1
  %.0.i24.i = select i1 %i.fs, i32 %i.fu, i32 %i.fr
  br label %vsfComparator.exit26.i

vsfComparator.exit26.i:                           ; preds = %bb.ak, %bb.aj
  %.1.i25.i = phi i32 [ %i.fn, %bb.aj ], [ %.0.i24.i, %bb.ak ]
  %i.fv = icmp slt i32 %.1.i25.i, 0
  br i1 %i.fv, label %bb.ai, label %.preheader.i, !llvm.loop !27

.preheader.i:                                     ; preds = %vsfComparator.exit26.i, %vsfComparator.exit.i140
  %.4.i = phi ptr [ %i.fw, %vsfComparator.exit.i140 ], [ %.359.i, %vsfComparator.exit26.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.4.i, i64 16 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.4.i, i64 24
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !14 ; 3 uses
  %i.fz = icmp eq i32 %i.cz, %i.fy
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader.i
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !15
  %i.gb = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.ga, i64 noundef %i.do) #8
  br label %vsfComparator.exit.i140

bb.am:                                            ; preds = %.preheader.i
  %i.gc = call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.fy)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = load ptr, ptr %i.fw, align 8, !tbaa !15
  %i.gf = call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i135, ptr noundef %i.ge, i64 noundef %i.gd) #8 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = icmp ult i32 %i.cz, %i.fy
  %i.gi = select i1 %i.gh, i32 -1, i32 1
  %.0.i.i139 = select i1 %i.gg, i32 %i.gi, i32 %i.gf
  br label %vsfComparator.exit.i140

vsfComparator.exit.i140:                          ; preds = %bb.am, %bb.al
  %.1.i.i141 = phi i32 [ %i.gb, %bb.al ], [ %.0.i.i139, %bb.am ]
  %i.gj = icmp sgt i32 %.1.i.i141, -1
  br i1 %i.gj, label %.preheader.i, label %bb.an, !llvm.loop !28

bb.an:                                            ; preds = %vsfComparator.exit.i140
  %i.gk = icmp ult ptr %i.fw, %i.fi
  br i1 %i.gk, label %.lr.ph.i138, label %partition_left.exit, !llvm.loop !29

partition_left.exit:                              ; preds = %bb.an, %.critedge.i137
  %.122.lcssa.i = phi ptr [ %i.dp, %.critedge.i137 ], [ %i.fi, %bb.an ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0114200, ptr noundef nonnull align 8 dereferenceable(16) %.122.lcssa.i, i64 16, i1 false), !tbaa.struct !18
  store ptr %.sroa.0.0.copyload.i135, ptr %.122.lcssa.i, align 8, !tbaa !16
  %.sroa.14.0..122.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.122.lcssa.i, i64 8
  store i32 %i.cz, ptr %.sroa.14.0..122.sroa_idx.i, align 8, !tbaa !17
  %.sroa.19.0..122.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.122.lcssa.i, i64 12
  store i32 %.sroa.19.0.copyload.i, ptr %.sroa.19.0..122.sroa_idx.i, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.122.lcssa.i, i64 16 ; 2 uses
  %.pre = ptrtoint ptr %i.gl to i64               ; 2 uses
  %.pre247 = sub i64 %i.c, %.pre
  %.pre249 = ashr exact i64 %.pre247, 4
  br label %insertion_sort.exit

bb.ao:                                            ; preds = %._crit_edge244, %vsfComparator.exit
  %.sroa.46.0.copyload.i = phi i32 [ %.sroa.46.0.copyload.i.pre, %._crit_edge244 ], [ %i.cz, %vsfComparator.exit ] ; 65 uses
  %.sroa.0.0.copyload.i143 = phi ptr [ %.sroa.0.0.copyload.i143.pre, %._crit_edge244 ], [ %.sroa.0.0.copyload.i135, %vsfComparator.exit ] ; 43 uses
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0114200, i64 12
  %.sroa.67.0.copyload.i = load i32, ptr %.sroa.67.0..sroa_idx.i, align 4
  %i.gm = zext i32 %.sroa.46.0.copyload.i to i64  ; 21 uses
  br label %bb.ap

bb.ap:                                            ; preds = %vsfComparator.exit291.i, %bb.ao
  %.0.i144 = phi ptr [ %.0114200, %bb.ao ], [ %i.gn, %vsfComparator.exit291.i ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i144, i64 16 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i144, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !14 ; 3 uses
  %i.gq = icmp eq i32 %i.gp, %.sroa.46.0.copyload.i
  br i1 %i.gq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !15
  %i.gs = call i32 @memcmp(ptr noundef %i.gr, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit291.i

bb.ar:                                            ; preds = %bb.ap
  %i.gt = call i32 @llvm.umin.i32(i32 %i.gp, i32 %.sroa.46.0.copyload.i)
  %i.gu = zext i32 %i.gt to i64
  %i.gv = load ptr, ptr %i.gn, align 8, !tbaa !15
  %i.gw = call i32 @memcmp(ptr noundef %i.gv, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gu) #8 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  %i.gy = icmp ult i32 %i.gp, %.sroa.46.0.copyload.i
  %i.gz = select i1 %i.gy, i32 -1, i32 1
  %.0.i289.i = select i1 %i.gx, i32 %i.gz, i32 %i.gw
  br label %vsfComparator.exit291.i

vsfComparator.exit291.i:                          ; preds = %bb.ar, %bb.aq
  %.1.i290.i = phi i32 [ %i.gs, %bb.aq ], [ %.0.i289.i, %bb.ar ]
  %i.ha = icmp slt i32 %.1.i290.i, 0
  br i1 %i.ha, label %bb.ap, label %bb.as, !llvm.loop !30

bb.as:                                            ; preds = %vsfComparator.exit291.i
  %i.hb = icmp eq ptr %.0.i144, %.0114200
  br i1 %i.hb, label %.preheader366.i.a, label %.preheader367.i

.preheader366.i.a:                                ; preds = %bb.as, %vsfComparator.exit288.i
  %.0208.i = phi ptr [ %i.hd, %vsfComparator.exit288.i ], [ %1, %bb.as ] ; 4 uses
  %i.hc = icmp ult ptr %i.gn, %.0208.i
  br i1 %i.hc, label %bb.at, label %.critedge.i145

bb.at:                                            ; preds = %.preheader366.i.a
  %i.hd = getelementptr inbounds i8, ptr %.0208.i, i64 -16 ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %.0208.i, i64 -8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !14 ; 3 uses
  %i.hg = icmp eq i32 %i.hf, %.sroa.46.0.copyload.i
  br i1 %i.hg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hh = load ptr, ptr %i.hd, align 8, !tbaa !15
  %i.hi = call i32 @memcmp(ptr noundef %i.hh, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit288.i

bb.av:                                            ; preds = %bb.at
  %i.hj = call i32 @llvm.umin.i32(i32 %i.hf, i32 %.sroa.46.0.copyload.i)
  %i.hk = zext i32 %i.hj to i64
  %i.hl = load ptr, ptr %i.hd, align 8, !tbaa !15
  %i.hm = call i32 @memcmp(ptr noundef %i.hl, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.hk) #8 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = icmp ult i32 %i.hf, %.sroa.46.0.copyload.i
  %i.hp = select i1 %i.ho, i32 -1, i32 1
  %.0.i286.i = select i1 %i.hn, i32 %i.hp, i32 %i.hm
  br label %vsfComparator.exit288.i

vsfComparator.exit288.i:                          ; preds = %bb.av, %bb.au
  %.1.i287.i = phi i32 [ %i.hi, %bb.au ], [ %.0.i286.i, %bb.av ]
  %i.hq = icmp sgt i32 %.1.i287.i, -1
  br i1 %i.hq, label %.preheader366.i.a, label %.critedge.i145, !llvm.loop !31

.preheader367.i:                                  ; preds = %bb.as, %vsfComparator.exit285.i
  %.1209.i = phi ptr [ %i.hr, %vsfComparator.exit285.i ], [ %1, %bb.as ] ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %.1209.i, i64 -16 ; 4 uses
  %i.hs = getelementptr inbounds i8, ptr %.1209.i, i64 -8
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !14 ; 3 uses
  %i.hu = icmp eq i32 %i.ht, %.sroa.46.0.copyload.i
  br i1 %i.hu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.preheader367.i
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !15
  %i.hw = call i32 @memcmp(ptr noundef %i.hv, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit285.i

bb.ax:                                            ; preds = %.preheader367.i
  %i.hx = call i32 @llvm.umin.i32(i32 %i.ht, i32 %.sroa.46.0.copyload.i)
  %i.hy = zext i32 %i.hx to i64
  %i.hz = load ptr, ptr %i.hr, align 8, !tbaa !15
  %i.ia = call i32 @memcmp(ptr noundef %i.hz, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.hy) #8 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  %i.ic = icmp ult i32 %i.ht, %.sroa.46.0.copyload.i
  %i.id = select i1 %i.ic, i32 -1, i32 1
  %.0.i283.i = select i1 %i.ib, i32 %i.id, i32 %i.ia
  br label %vsfComparator.exit285.i

vsfComparator.exit285.i:                          ; preds = %bb.ax, %bb.aw
  %.1.i284.i = phi i32 [ %i.hw, %bb.aw ], [ %.0.i283.i, %bb.ax ]
  %i.ie = icmp sgt i32 %.1.i284.i, -1
  br i1 %i.ie, label %.preheader367.i, label %.critedge.i145, !llvm.loop !32

.critedge.i145:                                   ; preds = %vsfComparator.exit285.i, %vsfComparator.exit288.i, %.preheader366.i.a
  %.2210.i = phi ptr [ %i.hd, %vsfComparator.exit288.i ], [ %.0208.i, %.preheader366.i.a ], [ %i.hr, %vsfComparator.exit285.i ] ; 6 uses
  %.not = icmp ult ptr %i.gn, %.2210.i            ; 2 uses
  br i1 %.not, label %bb.ay, label %partition_right_branchless.exit

bb.ay:                                            ; preds = %.critedge.i145
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %.2210.i, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.2210.i, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i144, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ig = icmp ult ptr %i.if, %.2210.i
  br i1 %i.ig, label %.lr.ph397.i, label %.loopexit.i

.lr.ph397.i:                                      ; preds = %bb.ay, %swap_offsets.exit.i
  %.1396.i = phi ptr [ %.4.i147, %swap_offsets.exit.i ], [ %i.if, %bb.ay ] ; 4 uses
  %.0190395.i = phi i64 [ %.1191.i, %swap_offsets.exit.i ], [ 0, %bb.ay ] ; 2 uses
  %.0192394.i = phi i64 [ %spec.select231.i, %swap_offsets.exit.i ], [ 0, %bb.ay ] ; 2 uses
  %.0194393.i = phi i64 [ %i.wk, %swap_offsets.exit.i ], [ 0, %bb.ay ] ; 4 uses
  %.0199392.i = phi i64 [ %i.wj, %swap_offsets.exit.i ], [ 0, %bb.ay ] ; 4 uses
  %.0204390.i = phi ptr [ %.1205.i, %swap_offsets.exit.i ], [ %.2210.i, %bb.ay ] ; 5 uses
  %.0206388.i = phi ptr [ %spec.select.i, %swap_offsets.exit.i ], [ %i.if, %bb.ay ] ; 5 uses
  %.3211387.i = phi ptr [ %.6214.i, %swap_offsets.exit.i ], [ %.2210.i, %bb.ay ] ; 4 uses
  %i.ih = ptrtoint ptr %.3211387.i to i64
  %i.ii = ptrtoint ptr %.1396.i to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = ashr exact i64 %i.ij, 4                 ; 2 uses
  %i.il = icmp eq i64 %.0199392.i, 0
  %i.im = icmp eq i64 %.0194393.i, 0              ; 2 uses
  %i.in = zext i1 %i.im to i64
  %i.io = lshr i64 %i.ik, %i.in
  %i.ip = select i1 %i.il, i64 %i.io, i64 0       ; 4 uses
  %i.iq = sub i64 %i.ik, %i.ip
  %i.ir = select i1 %i.im, i64 %i.iq, i64 0       ; 3 uses
  %i.is = icmp ugt i64 %i.ip, 63
  br i1 %i.is, label %.preheader362.i.a, label %.preheader364.i.a

.preheader364.i.a:                                ; preds = %.lr.ph397.i
  %.not410.i = icmp eq i64 %i.ip, 0
  br i1 %.not410.i, label %.loopexit363.i, label %.lr.ph.i146

.preheader362.i.a:                                ; preds = %.lr.ph397.i, %vsfComparator.exit261.i
  %.2377.i = phi ptr [ %i.oh, %vsfComparator.exit261.i ], [ %.1396.i, %.lr.ph397.i ] ; 18 uses
  %.0189376.i = phi i64 [ %i.np, %vsfComparator.exit261.i ], [ 0, %.lr.ph397.i ] ; 3 uses
  %.1200375.i = phi i64 [ %i.og, %vsfComparator.exit261.i ], [ %.0199392.i, %.lr.ph397.i ] ; 2 uses
  %i.it = trunc nuw nsw i64 %.0189376.i to i8     ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.n, i64 %.1200375.i
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !44
  %i.iv = getelementptr inbounds nuw i8, ptr %.2377.i, i64 8
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !14 ; 3 uses
  %i.ix = icmp eq i32 %i.iw, %.sroa.46.0.copyload.i
  br i1 %i.ix, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.preheader362.i.a
  %i.iy = load ptr, ptr %.2377.i, align 8, !tbaa !15
  %i.iz = call i32 @memcmp(ptr noundef %i.iy, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit282.i

bb.ba:                                            ; preds = %.preheader362.i.a
  %i.ja = call i32 @llvm.umin.i32(i32 %i.iw, i32 %.sroa.46.0.copyload.i)
  %i.jb = zext i32 %i.ja to i64
  %i.jc = load ptr, ptr %.2377.i, align 8, !tbaa !15
  %i.jd = call i32 @memcmp(ptr noundef %i.jc, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.jb) #8 ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  %i.jf = icmp ult i32 %i.iw, %.sroa.46.0.copyload.i
  %i.jg = select i1 %i.jf, i32 -1, i32 1
  %.0.i280.i = select i1 %i.je, i32 %i.jg, i32 %i.jd
  br label %vsfComparator.exit282.i

vsfComparator.exit282.i:                          ; preds = %bb.ba, %bb.az
  %.1.i281.i = phi i32 [ %i.iz, %bb.az ], [ %.0.i280.i, %bb.ba ]
  %i.jh = icmp sgt i32 %.1.i281.i, -1
  %i.ji = zext i1 %i.jh to i64
  %i.jj = add i64 %.1200375.i, %i.ji              ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.2377.i, i64 16 ; 2 uses
  %i.jl = or disjoint i8 %i.it, 1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %.2377.i, i64 24
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !14 ; 3 uses
  %i.jp = icmp eq i32 %i.jo, %.sroa.46.0.copyload.i
  br i1 %i.jp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %vsfComparator.exit282.i
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !15
  %i.jr = call i32 @memcmp(ptr noundef %i.jq, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit279.i

bb.bc:                                            ; preds = %vsfComparator.exit282.i
  %i.js = call i32 @llvm.umin.i32(i32 %i.jo, i32 %.sroa.46.0.copyload.i)
  %i.jt = zext i32 %i.js to i64
  %i.ju = load ptr, ptr %i.jk, align 8, !tbaa !15
  %i.jv = call i32 @memcmp(ptr noundef %i.ju, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.jt) #8 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, 0
  %i.jx = icmp ult i32 %i.jo, %.sroa.46.0.copyload.i
  %i.jy = select i1 %i.jx, i32 -1, i32 1
  %.0.i277.i = select i1 %i.jw, i32 %i.jy, i32 %i.jv
  br label %vsfComparator.exit279.i

vsfComparator.exit279.i:                          ; preds = %bb.bc, %bb.bb
  %.1.i278.i = phi i32 [ %i.jr, %bb.bb ], [ %.0.i277.i, %bb.bc ]
  %i.jz = icmp sgt i32 %.1.i278.i, -1
  %i.ka = zext i1 %i.jz to i64
  %i.kb = add i64 %i.jj, %i.ka                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.2377.i, i64 32 ; 2 uses
  %i.kd = or disjoint i8 %i.it, 2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.kb
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !44
  %i.kf = getelementptr inbounds nuw i8, ptr %.2377.i, i64 40
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !14 ; 3 uses
  %i.kh = icmp eq i32 %i.kg, %.sroa.46.0.copyload.i
  br i1 %i.kh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %vsfComparator.exit279.i
  %i.ki = load ptr, ptr %i.kc, align 8, !tbaa !15
  %i.kj = call i32 @memcmp(ptr noundef %i.ki, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit276.i

bb.be:                                            ; preds = %vsfComparator.exit279.i
  %i.kk = call i32 @llvm.umin.i32(i32 %i.kg, i32 %.sroa.46.0.copyload.i)
  %i.kl = zext i32 %i.kk to i64
  %i.km = load ptr, ptr %i.kc, align 8, !tbaa !15
  %i.kn = call i32 @memcmp(ptr noundef %i.km, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.kl) #8 ; 2 uses
  %i.ko = icmp eq i32 %i.kn, 0
  %i.kp = icmp ult i32 %i.kg, %.sroa.46.0.copyload.i
  %i.kq = select i1 %i.kp, i32 -1, i32 1
  %.0.i274.i = select i1 %i.ko, i32 %i.kq, i32 %i.kn
  br label %vsfComparator.exit276.i

vsfComparator.exit276.i:                          ; preds = %bb.be, %bb.bd
  %.1.i275.i = phi i32 [ %i.kj, %bb.bd ], [ %.0.i274.i, %bb.be ]
  %i.kr = icmp sgt i32 %.1.i275.i, -1
  %i.ks = zext i1 %i.kr to i64
  %i.kt = add i64 %i.kb, %i.ks                    ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.2377.i, i64 48 ; 2 uses
  %i.kv = or disjoint i8 %i.it, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.kt
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !44
  %i.kx = getelementptr inbounds nuw i8, ptr %.2377.i, i64 56
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !14 ; 3 uses
  %i.kz = icmp eq i32 %i.ky, %.sroa.46.0.copyload.i
  br i1 %i.kz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %vsfComparator.exit276.i
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !15
  %i.lb = call i32 @memcmp(ptr noundef %i.la, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit273.i

bb.bg:                                            ; preds = %vsfComparator.exit276.i
  %i.lc = call i32 @llvm.umin.i32(i32 %i.ky, i32 %.sroa.46.0.copyload.i)
  %i.ld = zext i32 %i.lc to i64
  %i.le = load ptr, ptr %i.ku, align 8, !tbaa !15
  %i.lf = call i32 @memcmp(ptr noundef %i.le, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.ld) #8 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 0
  %i.lh = icmp ult i32 %i.ky, %.sroa.46.0.copyload.i
  %i.li = select i1 %i.lh, i32 -1, i32 1
  %.0.i271.i = select i1 %i.lg, i32 %i.li, i32 %i.lf
  br label %vsfComparator.exit273.i

vsfComparator.exit273.i:                          ; preds = %bb.bg, %bb.bf
  %.1.i272.i = phi i32 [ %i.lb, %bb.bf ], [ %.0.i271.i, %bb.bg ]
  %i.lj = icmp sgt i32 %.1.i272.i, -1
  %i.lk = zext i1 %i.lj to i64
  %i.ll = add i64 %i.kt, %i.lk                    ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.2377.i, i64 64 ; 2 uses
  %i.ln = or disjoint i8 %i.it, 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ll
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !44
  %i.lp = getelementptr inbounds nuw i8, ptr %.2377.i, i64 72
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !14 ; 3 uses
  %i.lr = icmp eq i32 %i.lq, %.sroa.46.0.copyload.i
  br i1 %i.lr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %vsfComparator.exit273.i
  %i.ls = load ptr, ptr %i.lm, align 8, !tbaa !15
  %i.lt = call i32 @memcmp(ptr noundef %i.ls, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit270.i

bb.bi:                                            ; preds = %vsfComparator.exit273.i
  %i.lu = call i32 @llvm.umin.i32(i32 %i.lq, i32 %.sroa.46.0.copyload.i)
  %i.lv = zext i32 %i.lu to i64
  %i.lw = load ptr, ptr %i.lm, align 8, !tbaa !15
  %i.lx = call i32 @memcmp(ptr noundef %i.lw, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.lv) #8 ; 2 uses
  %i.ly = icmp eq i32 %i.lx, 0
  %i.lz = icmp ult i32 %i.lq, %.sroa.46.0.copyload.i
  %i.ma = select i1 %i.lz, i32 -1, i32 1
  %.0.i268.i = select i1 %i.ly, i32 %i.ma, i32 %i.lx
  br label %vsfComparator.exit270.i

vsfComparator.exit270.i:                          ; preds = %bb.bi, %bb.bh
  %.1.i269.i = phi i32 [ %i.lt, %bb.bh ], [ %.0.i268.i, %bb.bi ]
  %i.mb = icmp sgt i32 %.1.i269.i, -1
  %i.mc = zext i1 %i.mb to i64
  %i.md = add i64 %i.ll, %i.mc                    ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.2377.i, i64 80 ; 2 uses
  %i.mf = or disjoint i8 %i.it, 5
  %i.mg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.md
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !44
  %i.mh = getelementptr inbounds nuw i8, ptr %.2377.i, i64 88
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !14 ; 3 uses
end_hunk_0
begin_hunk_1_@pdqsort_loop:bb.a
  %i.uc = call i32 @llvm.umin.i32(i32 %i.ty, i32 %.sroa.46.0.copyload.i)
  %i.ud = zext i32 %i.uc to i64
  %i.ue = load ptr, ptr %i.tw, align 8, !tbaa !15
  %i.uf = call i32 @memcmp(ptr noundef %i.ue, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.ud) #8 ; 2 uses
  %i.ug = icmp eq i32 %i.uf, 0
  %i.uh = icmp ult i32 %i.ty, %.sroa.46.0.copyload.i
  %i.ui = select i1 %i.uh, i32 -1, i32 1
  %.0.i232.i = select i1 %i.ug, i32 %i.ui, i32 %i.uf
  br label %vsfComparator.exit234.i

vsfComparator.exit234.i:                          ; preds = %bb.cg, %bb.cf
  %.1.i233.i = phi i32 [ %i.ub, %bb.cf ], [ %.0.i232.i, %bb.cg ]
  %.lobit230.i = lshr i32 %.1.i233.i, 31
  %i.uj = zext nneg i32 %.lobit230.i to i64
  %i.uk = add i64 %i.ts, %i.uj                    ; 2 uses
  %i.ul = icmp samesign ult i64 %.0187386.i, 56
  br i1 %i.ul, label %.preheader.i152, label %.loopexit359.i, !llvm.loop !35

.lr.ph381.i:                                      ; preds = %.preheader360.i, %vsfComparator.exit.i149
  %.0186380.i = phi i64 [ %i.um, %vsfComparator.exit.i149 ], [ 0, %.preheader360.i ]
  %.2196379.i = phi i64 [ %i.vd, %vsfComparator.exit.i149 ], [ %.0194393.i, %.preheader360.i ] ; 2 uses
  %.5213378.i = phi ptr [ %i.up, %vsfComparator.exit.i149 ], [ %.3211387.i, %.preheader360.i ] ; 2 uses
  %i.um = add nuw nsw i64 %.0186380.i, 1          ; 3 uses
  %i.un = trunc nuw nsw i64 %i.um to i8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.r, i64 %.2196379.i
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !44
  %i.up = getelementptr inbounds i8, ptr %.5213378.i, i64 -16 ; 4 uses
  %i.uq = getelementptr inbounds i8, ptr %.5213378.i, i64 -8
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !14 ; 3 uses
  %i.us = icmp eq i32 %i.ur, %.sroa.46.0.copyload.i
  br i1 %i.us, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph381.i
  %i.ut = load ptr, ptr %i.up, align 8, !tbaa !15
  %i.uu = call i32 @memcmp(ptr noundef %i.ut, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.gm) #8
  br label %vsfComparator.exit.i149

bb.ci:                                            ; preds = %.lr.ph381.i
  %i.uv = call i32 @llvm.umin.i32(i32 %i.ur, i32 %.sroa.46.0.copyload.i)
  %i.uw = zext i32 %i.uv to i64
  %i.ux = load ptr, ptr %i.up, align 8, !tbaa !15
  %i.uy = call i32 @memcmp(ptr noundef %i.ux, ptr noundef %.sroa.0.0.copyload.i143, i64 noundef %i.uw) #8 ; 2 uses
  %i.uz = icmp eq i32 %i.uy, 0
  %i.va = icmp ult i32 %i.ur, %.sroa.46.0.copyload.i
  %i.vb = select i1 %i.va, i32 -1, i32 1
  %.0.i.i148 = select i1 %i.uz, i32 %i.vb, i32 %i.uy
  br label %vsfComparator.exit.i149

vsfComparator.exit.i149:                          ; preds = %bb.ci, %bb.ch
  %.1.i.i150 = phi i32 [ %i.uu, %bb.ch ], [ %.0.i.i148, %bb.ci ]
  %.lobit.i = lshr i32 %.1.i.i150, 31
  %i.vc = zext nneg i32 %.lobit.i to i64
  %i.vd = add i64 %.2196379.i, %i.vc              ; 2 uses
  %exitcond429.not.i = icmp eq i64 %i.um, %i.ir
  br i1 %exitcond429.not.i, label %.loopexit359.i, label %.lr.ph381.i, !llvm.loop !36

.loopexit359.i:                                   ; preds = %vsfComparator.exit.i149, %vsfComparator.exit234.i, %.preheader360.i
  %.6214.i = phi ptr [ %i.tw, %vsfComparator.exit234.i ], [ %.3211387.i, %.preheader360.i ], [ %i.up, %vsfComparator.exit.i149 ] ; 4 uses
  %.3197.i = phi i64 [ %i.uk, %vsfComparator.exit234.i ], [ %.0194393.i, %.preheader360.i ], [ %i.vd, %vsfComparator.exit.i149 ] ; 3 uses
  %i.ve = call i64 @llvm.umin.i64(i64 %.3202.i, i64 %.3197.i) ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0192394.i ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0190395.i ; 3 uses
  %i.vh = icmp eq i64 %.3202.i, %.3197.i
  %.not39.i.i = icmp eq i64 %i.ve, 0              ; 2 uses
  br i1 %i.vh, label %.preheader.i.i, label %bb.cj

.preheader.i.i:                                   ; preds = %.loopexit359.i
  br i1 %.not39.i.i, label %swap_offsets.exit.i, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph37.i.i
  %.03236.i.i = phi i64 [ %i.vr, %.lr.ph37.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.03236.i.i
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !44
  %i.vk = zext i8 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %.0206388.i, i64 %i.vk ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.03236.i.i
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !44
  %i.vo = zext i8 %i.vn to i64
  %i.vp = sub nsw i64 0, %i.vo
  %i.vq = getelementptr inbounds [16 x i8], ptr %.0204390.i, i64 %i.vp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, ptr noundef nonnull align 8 dereferenceable(16) %i.vq, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vq, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.vr = add nuw i64 %.03236.i.i, 1              ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %i.vr, %i.ve
  br i1 %exitcond40.not.i.i, label %swap_offsets.exit.i, label %.lr.ph37.i.i, !llvm.loop !37

bb.cj:                                            ; preds = %.loopexit359.i
  br i1 %.not39.i.i, label %swap_offsets.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vs = load i8, ptr %i.vf, align 1, !tbaa !44
  %i.vt = zext i8 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %.0206388.i, i64 %i.vt ; 2 uses
  %i.vv = load i8, ptr %i.vg, align 1, !tbaa !44
  %i.vw = zext i8 %i.vv to i64
  %i.vx = sub nsw i64 0, %i.vw
  %i.vy = getelementptr inbounds [16 x i8], ptr %.0204390.i, i64 %i.vx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %i.vu, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vu, ptr noundef nonnull align 8 dereferenceable(16) %i.vy, i64 16, i1 false), !tbaa.struct !18
  %.not38.i.i = icmp eq i64 %i.ve, 1
  br i1 %.not38.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ck
  %.031.lcssa.i.i = phi ptr [ %i.vy, %bb.ck ], [ %i.wh, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.031.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %swap_offsets.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ck, %.lr.ph.i.i
  %.035.i.i = phi i64 [ %i.wi, %.lr.ph.i.i ], [ 1, %bb.ck ] ; 3 uses
  %.03134.i.i = phi ptr [ %i.wh, %.lr.ph.i.i ], [ %i.vy, %bb.ck ]
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.035.i.i
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !44
  %i.wb = zext i8 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %.0206388.i, i64 %i.wb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03134.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.wc, i64 16, i1 false), !tbaa.struct !18
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.035.i.i
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !44
  %i.wf = zext i8 %i.we to i64
  %i.wg = sub nsw i64 0, %i.wf
  %i.wh = getelementptr inbounds [16 x i8], ptr %.0204390.i, i64 %i.wg ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wc, ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i64 16, i1 false), !tbaa.struct !18
  %i.wi = add nuw i64 %.035.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.wi, %i.ve
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !38

swap_offsets.exit.i:                              ; preds = %.lr.ph37.i.i, %._crit_edge.i.i, %bb.cj, %.preheader.i.i
  %i.wj = sub i64 %.3202.i, %i.ve                 ; 3 uses
  %i.wk = sub i64 %.3197.i, %i.ve                 ; 3 uses
  %i.wl = add i64 %i.ve, %.0192394.i              ; 2 uses
  %i.wm = add i64 %i.ve, %.0190395.i              ; 2 uses
  %i.wn = icmp eq i64 %i.wj, 0                    ; 3 uses
  %spec.select.i = select i1 %i.wn, ptr %.4.i147, ptr %.0206388.i
  %spec.select231.i = select i1 %i.wn, i64 0, i64 %i.wl
  %i.wo = icmp eq i64 %i.wk, 0                    ; 3 uses
  %.1205.i = select i1 %i.wo, ptr %.6214.i, ptr %.0204390.i
  %.1191.i = select i1 %i.wo, i64 0, i64 %i.wm
  %i.wp = icmp ult ptr %.4.i147, %.6214.i
  br i1 %i.wp, label %.lr.ph397.i, label %._crit_edge.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %swap_offsets.exit.i
  br i1 %i.wn, label %.loopexit358.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.i
  %i.wq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.wl
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.4203407.i = phi i64 [ %i.wj, %bb.cl ], [ %i.wr, %bb.cm ]
  %.7215406.i = phi ptr [ %.6214.i, %bb.cl ], [ %i.ww, %bb.cm ]
  %i.wr = add i64 %.4203407.i, -1                 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !44
  %i.wu = zext i8 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [16 x i8], ptr %.0206388.i, i64 %i.wu ; 2 uses
  %i.ww = getelementptr inbounds i8, ptr %.7215406.i, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.wv, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wv, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ww, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.not220.i = icmp eq i64 %i.wr, 0
  br i1 %.not220.i, label %.loopexit358.i, label %bb.cm, !llvm.loop !40

.loopexit358.i:                                   ; preds = %bb.cm, %._crit_edge.i
  %.5.i = phi ptr [ %.4.i147, %._crit_edge.i ], [ %i.ww, %bb.cm ] ; 2 uses
  br i1 %i.wo, label %.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %.loopexit358.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.wm
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.6409.i = phi ptr [ %.5.i, %bb.cn ], [ %i.xe, %bb.co ] ; 3 uses
  %.4198408.i = phi i64 [ %i.wk, %bb.cn ], [ %i.wy, %bb.co ]
  %i.wy = add i64 %.4198408.i, -1                 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !44
  %i.xb = zext i8 %i.xa to i64
  %i.xc = sub nsw i64 0, %i.xb
  %i.xd = getelementptr inbounds [16 x i8], ptr %.0204390.i, i64 %i.xc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.xd, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, ptr noundef nonnull align 8 dereferenceable(16) %.6409.i, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.6409.i, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.xe = getelementptr inbounds nuw i8, ptr %.6409.i, i64 16 ; 2 uses
  %.not222.i = icmp eq i64 %i.wy, 0
  br i1 %.not222.i, label %.loopexit.i, label %bb.co, !llvm.loop !41

.loopexit.i:                                      ; preds = %bb.co, %.loopexit358.i, %bb.ay
  %.7.i = phi ptr [ %.5.i, %.loopexit358.i ], [ %i.if, %bb.ay ], [ %i.xe, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %partition_right_branchless.exit

partition_right_branchless.exit:                  ; preds = %.critedge.i145, %.loopexit.i
  %.8.i = phi ptr [ %i.gn, %.critedge.i145 ], [ %.7.i, %.loopexit.i ] ; 13 uses
  %i.xf = getelementptr inbounds i8, ptr %.8.i, i64 -16 ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0114200, ptr noundef nonnull align 8 dereferenceable(16) %i.xf, i64 16, i1 false), !tbaa.struct !18
  store ptr %.sroa.0.0.copyload.i143, ptr %i.xf, align 8, !tbaa !16
  %.sroa.46.0..sroa_idx334.i = getelementptr inbounds i8, ptr %.8.i, i64 -8
  store i32 %.sroa.46.0.copyload.i, ptr %.sroa.46.0..sroa_idx334.i, align 8, !tbaa !17
  %.sroa.67.0..sroa_idx356.i = getelementptr inbounds i8, ptr %.8.i, i64 -4
  store i32 %.sroa.67.0.copyload.i, ptr %.sroa.67.0..sroa_idx356.i, align 4
  %i.xg = ptrtoint ptr %i.xf to i64
  %i.xh = sub i64 %i.xg, %i.cn
  %i.xi = ashr exact i64 %i.xh, 4                 ; 4 uses
  %i.xj = ptrtoint ptr %.8.i to i64               ; 2 uses
  %i.xk = sub i64 %i.c, %i.xj
  %i.xl = ashr exact i64 %i.xk, 4                 ; 5 uses
  %i.xm = lshr i64 %i.cm, 3                       ; 2 uses
  %i.xn = icmp ult i64 %i.xi, %i.xm
  %i.xo = icmp ult i64 %i.xl, %i.xm
  %i.xp = select i1 %i.xn, i1 true, i1 %i.xo
  br i1 %i.xp, label %bb.cp, label %bb.cy

bb.cp:                                            ; preds = %partition_right_branchless.exit
  %i.xq = add nsw i32 %.0110202, -1               ; 4 uses
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %.not.i153.not = icmp ugt ptr %1, %.0114200
  br i1 %.not.i153.not, label %bb.cr, label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %.not2022.i = icmp eq i64 %i.co, 0
  br i1 %.not2022.i, label %.preheader.i156.preheader, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.cr, %.lr.ph.i155
  %.01623.i = phi i64 [ %i.xs, %.lr.ph.i155 ], [ %i.co, %bb.cr ]
  %i.xs = add nsw i64 %.01623.i, -1               ; 3 uses
  call fastcc void @heapify(ptr noundef nonnull %.0114200, i64 noundef %i.cm, i64 noundef %i.xs)
  %.not20.i = icmp eq i64 %i.xs, 0
  br i1 %.not20.i, label %.preheader.i156.preheader, label %.lr.ph.i155, !llvm.loop !42

.preheader.i156.preheader:                        ; preds = %.lr.ph.i155, %bb.cr
  br label %.preheader.i156

.preheader.i156:                                  ; preds = %.preheader.i156.preheader, %.preheader.i156
  %.024.i = phi i64 [ %i.xt, %.preheader.i156 ], [ %i.cm, %.preheader.i156.preheader ]
  %i.xt = add i64 %.024.i, -1                     ; 4 uses
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %.0114200, i64 %i.xt ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %.0114200, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0114200, ptr noundef nonnull align 8 dereferenceable(16) %i.xu, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call fastcc void @heapify(ptr noundef nonnull %.0114200, i64 noundef %i.xt, i64 noundef 0)
  %.not21.i = icmp eq i64 %i.xt, 0
  br i1 %.not21.i, label %.loopexit, label %.preheader.i156, !llvm.loop !43

bb.cs:                                            ; preds = %bb.cp
  %i.xv = icmp ugt i64 %i.xi, 23
  br i1 %i.xv, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.xw = lshr i64 %i.xi, 2                       ; 4 uses
  %i.xx = getelementptr inbounds nuw [16 x i8], ptr %.0114200, i64 %i.xw ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %.0114200, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0114200, ptr noundef nonnull align 8 dereferenceable(16) %i.xx, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xx, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.xy = getelementptr inbounds i8, ptr %.8.i, i64 -32 ; 2 uses
  %i.xz = sub nsw i64 0, %i.xw
  %i.ya = getelementptr inbounds [16 x i8], ptr %i.xf, i64 %i.xz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.xy, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, ptr noundef nonnull align 8 dereferenceable(16) %i.ya, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ya, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.yb = icmp ugt i64 %i.xi, 128
  br i1 %i.yb, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yc = getelementptr inbounds nuw i8, ptr %.0114200, i64 16 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.yc, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yc, ptr noundef nonnull align 8 dereferenceable(16) %i.yd, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yd, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ye = getelementptr inbounds nuw i8, ptr %.0114200, i64 32 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xx, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ye, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ye, ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.yg = getelementptr inbounds i8, ptr %.8.i, i64 -48 ; 2 uses
  %i.yh = xor i64 %i.xw, -1
  %i.yi = getelementptr inbounds [16 x i8], ptr %i.xf, i64 %i.yh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.yg, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yg, ptr noundef nonnull align 8 dereferenceable(16) %i.yi, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yi, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.yj = getelementptr inbounds i8, ptr %.8.i, i64 -64 ; 2 uses
  %i.yk = sub nuw nsw i64 -2, %i.xw
  %i.yl = getelementptr inbounds [16 x i8], ptr %i.xf, i64 %i.yk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.yj, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yj, ptr noundef nonnull align 8 dereferenceable(16) %i.yl, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yl, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu, %bb.cs
  %i.ym = icmp ugt i64 %i.xl, 23
  br i1 %i.ym, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.yn = lshr i64 %i.xl, 2                       ; 4 uses
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.xf, i64 %i.yn ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.8.i, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.8.i, ptr noundef nonnull align 8 dereferenceable(16) %i.yp, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yp, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.yq = sub nsw i64 0, %i.yn
  %i.yr = getelementptr inbounds [16 x i8], ptr %1, i64 %i.yq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.yr, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yr, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ys = icmp ugt i64 %i.xl, 128
  br i1 %i.ys, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.yt = getelementptr inbounds nuw i8, ptr %.8.i, i64 16 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.yt, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yt, ptr noundef nonnull align 8 dereferenceable(16) %i.yu, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yu, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.yv = getelementptr inbounds nuw i8, ptr %.8.i, i64 32 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yo, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.yv, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yv, ptr noundef nonnull align 8 dereferenceable(16) %i.yw, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yw, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.yx = xor i64 %i.yn, -1
  %i.yy = getelementptr inbounds [16 x i8], ptr %1, i64 %i.yx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.yy, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yy, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.yz = sub nuw nsw i64 -2, %i.yn
  %i.za = getelementptr inbounds [16 x i8], ptr %1, i64 %i.yz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.za, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.za, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.db

bb.cy:                                            ; preds = %partition_right_branchless.exit
  br i1 %.not, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zb = call fastcc zeroext i1 @partial_insertion_sort(ptr noundef nonnull %.0114200, ptr noundef nonnull %i.xf)
  br i1 %i.zb, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.zc = call fastcc zeroext i1 @partial_insertion_sort(ptr noundef nonnull %.8.i, ptr noundef %1)
  br i1 %i.zc, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %bb.cy, %bb.cz, %bb.da, %bb.cv, %bb.cx, %bb.cw
  %.1111 = phi i32 [ %i.xq, %bb.cx ], [ %i.xq, %bb.cw ], [ %i.xq, %bb.cv ], [ %.0110202, %bb.da ], [ %.0110202, %bb.cz ], [ %.0110202, %bb.cy ] ; 2 uses
  call fastcc void @pdqsort_loop(ptr noundef nonnull %.0114200, ptr noundef nonnull %i.xf, i32 noundef %.1111, i1 noundef zeroext %.0107203)
  br label %insertion_sort.exit

insertion_sort.exit:                              ; preds = %bb.db, %partition_left.exit
  %.pre-phi250 = phi i64 [ %i.xl, %bb.db ], [ %.pre249, %partition_left.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %i.xj, %bb.db ], [ %.pre, %partition_left.exit ]
  %.3117 = phi ptr [ %.8.i, %bb.db ], [ %i.gl, %partition_left.exit ] ; 2 uses
  %.4 = phi i32 [ %.1111, %bb.db ], [ %.0110202, %partition_left.exit ]
  %i.zd = icmp ult i64 %.pre-phi250, 24
  br i1 %i.zd, label %._crit_edge.thread, label %bb.r

.loopexit:                                        ; preds = %bb.da, %.preheader.i156, %bb.q, %bb.i, %bb.b, %._crit_edge.thread, %bb.cq
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sort3(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.VSFKey, align 8             ; 4 uses
  %4 = alloca %struct.VSFKey, align 8             ; 4 uses
  %5 = alloca %struct.VSFKey, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = load ptr, ptr %1, align 8, !tbaa !15
  %i.h = load ptr, ptr %0, align 8, !tbaa !15
  %i.i = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.f) #8
  br label %vsfComparator.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.d)
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %1, align 8, !tbaa !15
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.m, i64 noundef %i.k) #8 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = icmp ult i32 %i.b, %i.d
  %i.q = select i1 %i.p, i32 -1, i32 1
  %.0.i.i = select i1 %i.o, i32 %i.q, i32 %i.n
  br label %vsfComparator.exit.i

vsfComparator.exit.i:                             ; preds = %bb.c, %bb.b
  %.1.i.i = phi i32 [ %i.i, %bb.b ], [ %.0.i.i, %bb.c ]
  %i.r = icmp slt i32 %.1.i.i, 0
  br i1 %i.r, label %bb.d, label %sort2.exit

bb.d:                                             ; preds = %vsfComparator.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !14
  br label %sort2.exit

sort2.exit:                                       ; preds = %vsfComparator.exit.i, %bb.d
  %i.s = phi i32 [ %i.b, %vsfComparator.exit.i ], [ %.pre, %bb.d ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14   ; 3 uses
  %i.v = icmp eq i32 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sort2.exit
  %i.w = zext i32 %i.s to i64
  %i.x = load ptr, ptr %2, align 8, !tbaa !15
  %i.y = load ptr, ptr %1, align 8, !tbaa !15
  %i.z = tail call i32 @memcmp(ptr noundef %i.x, ptr noundef %i.y, i64 noundef %i.w) #8
  br label %vsfComparator.exit.i7

bb.f:                                             ; preds = %sort2.exit
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.s)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %2, align 8, !tbaa !15
  %i.ad = load ptr, ptr %1, align 8, !tbaa !15
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ad, i64 noundef %i.ab) #8 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = icmp ult i32 %i.u, %i.s
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  %.0.i.i6 = select i1 %i.af, i32 %i.ah, i32 %i.ae
  br label %vsfComparator.exit.i7

vsfComparator.exit.i7:                            ; preds = %bb.f, %bb.e
  %.1.i.i8 = phi i32 [ %i.z, %bb.e ], [ %.0.i.i6, %bb.f ]
  %i.ai = icmp slt i32 %.1.i.i8, 0
  br i1 %i.ai, label %bb.g, label %sort2.exit9

bb.g:                                             ; preds = %vsfComparator.exit.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre14 = load i32, ptr %i.a, align 8, !tbaa !14
  br label %sort2.exit9

sort2.exit9:                                      ; preds = %vsfComparator.exit.i7, %bb.g
  %i.aj = phi i32 [ %i.s, %vsfComparator.exit.i7 ], [ %.pre14, %bb.g ] ; 4 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sort2.exit9
  %i.am = zext i32 %i.aj to i64
  %i.an = load ptr, ptr %1, align 8, !tbaa !15
  %i.ao = load ptr, ptr %0, align 8, !tbaa !15
  %i.ap = tail call i32 @memcmp(ptr noundef %i.an, ptr noundef %i.ao, i64 noundef %i.am) #8
  br label %vsfComparator.exit.i11

bb.i:                                             ; preds = %sort2.exit9
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ak)
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %1, align 8, !tbaa !15
  %i.at = load ptr, ptr %0, align 8, !tbaa !15
  %i.au = tail call i32 @memcmp(ptr noundef %i.as, ptr noundef %i.at, i64 noundef %i.ar) #8 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = icmp ult i32 %i.aj, %i.ak
  %i.ax = select i1 %i.aw, i32 -1, i32 1
  %.0.i.i10 = select i1 %i.av, i32 %i.ax, i32 %i.au
  br label %vsfComparator.exit.i11

vsfComparator.exit.i11:                           ; preds = %bb.i, %bb.h
  %.1.i.i12 = phi i32 [ %i.ap, %bb.h ], [ %.0.i.i10, %bb.i ]
  %i.ay = icmp slt i32 %.1.i.i12, 0
  br i1 %i.ay, label %bb.j, label %sort2.exit13

bb.j:                                             ; preds = %vsfComparator.exit.i11
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %sort2.exit13

sort2.exit13:                                     ; preds = %vsfComparator.exit.i11, %bb.j
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @partial_insertion_sort(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.critedge36, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.i
  %.026 = phi i64 [ %.1, %bb.i ], [ 0, %bb.a ]    ; 2 uses
  %.pn = phi ptr [ %.025, %bb.i ], [ %0, %bb.a ]  ; 10 uses
  %.025 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 8 uses
  %.not = icmp eq ptr %.025, %1                   ; 3 uses
  br i1 %.not, label %.critedge36, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.c to i64
  %i.h = load ptr, ptr %.025, align 8, !tbaa !15  ; 2 uses
  %i.i = load ptr, ptr %.pn, align 8, !tbaa !15
  %i.j = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.g) #8
  br label %vsfComparator.exit39

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.e)
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %.025, align 8, !tbaa !15  ; 2 uses
  %i.n = load ptr, ptr %.pn, align 8, !tbaa !15
  %i.o = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.l) #8 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = icmp ult i32 %i.c, %i.e
  %i.r = select i1 %i.q, i32 -1, i32 1
  %.0.i37 = select i1 %i.p, i32 %i.r, i32 %i.o
  br label %vsfComparator.exit39

vsfComparator.exit39:                             ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload = phi ptr [ %i.h, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %.1.i38 = phi i32 [ %i.j, %bb.c ], [ %.0.i37, %bb.d ]
end_hunk_1
