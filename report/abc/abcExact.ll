Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcExact?download=true
inline.NumInlined: 443
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Abc_ExactNormalizeArrivalTimesForNetwork:bb.a

Vec_IntPush.exit:                                 ; preds = %Vec_IntPush.exit.sink.split, %bb.b, %bb.d
  %spec.select.sink.i110 = phi i32 [ %spec.select.sink.i111, %bb.b ], [ %spec.select.sink.i111, %bb.d ], [ %spec.select.sink.i110.ph, %Vec_IntPush.exit.sink.split ] ; 2 uses
  %storemerge103107 = phi ptr [ %storemerge103106, %bb.b ], [ %storemerge103106, %bb.d ], [ %i.al, %Vec_IntPush.exit.sink.split ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %storemerge103107, i64 %indvars.iv
  store i32 %i.ac, ptr %i.am, align 4, !tbaa !15
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count
  br i1 %exitcond.not, label %..preheader104_crit_edge, label %bb.b, !llvm.loop !159

..preheader_crit_edge:                            ; preds = %Vec_IntSetEntry.exit
  store ptr %storemerge102116, ptr %i.i, align 8
  store i32 %i.bk, ptr %i.e, align 4
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader104
  %.promoted128 = phi i32 [ %i.bk, %..preheader_crit_edge ], [ %.promoted118, %.preheader104 ]
  %.promoted122 = phi ptr [ %storemerge102116, %..preheader_crit_edge ], [ %.promoted114, %.preheader104 ] ; 2 uses
  br i1 %i.j, label %.lr.ph121, label %bb.o

.lr.ph121:                                        ; preds = %.preheader
  %i.an = zext nneg i8 %i.b to i64
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph113, %Vec_IntSetEntry.exit
  %indvars.iv137 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next138, %Vec_IntSetEntry.exit ] ; 6 uses
  %i.ao = phi i32 [ %.promoted118, %.lr.ph113 ], [ %i.bk, %Vec_IntSetEntry.exit ] ; 3 uses
  %storemerge102115 = phi ptr [ %.promoted114, %.lr.ph113 ], [ %storemerge102116, %Vec_IntSetEntry.exit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %storemerge102115, i64 %i.o
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 5 uses
  %i.ar = sext i32 %i.ao to i64                   ; 2 uses
  %.not.i.not.i = icmp slt i64 %indvars.iv137, %i.ar
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.d, align 8, !tbaa !47  ; 4 uses
  %i.at = shl nsw i32 %i.as, 1                    ; 2 uses
  %i.au = sext i32 %i.at to i64
  %.not.i = icmp slt i64 %indvars.iv137, %i.au
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = shl nuw nsw i64 %indvars.iv.next138, 2
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %storemerge102115, i64 noundef %i.av) #29
  %i.ax = trunc nuw nsw i64 %indvars.iv.next138 to i32
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = sext i32 %i.as to i64
  %.not.i.i.not.i = icmp slt i64 %indvars.iv137, %i.ay
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp slt i32 %i.as, 1073741823
  %spec.select.i.i = select i1 %i.az, i32 %i.at, i32 2147483647 ; 3 uses
  %.not.i22.i.i = icmp slt i32 %i.as, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = sext i32 %spec.select.i.i to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = tail call ptr @realloc(ptr noundef nonnull %storemerge102115, i64 noundef %i.bb) #29
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.k, %bb.h
  %storemerge102 = phi ptr [ %i.aw, %bb.h ], [ %i.bc, %bb.k ]
  %spec.select.sink.i.i = phi i32 [ %i.ax, %bb.h ], [ %spec.select.i.i, %bb.k ]
  store i32 %spec.select.sink.i.i, ptr %i.d, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.j, %bb.i
  %storemerge102117 = phi ptr [ %storemerge102, %Vec_IntGrow.exit.sink.split.i.i ], [ %storemerge102115, %bb.j ], [ %storemerge102115, %bb.i ] ; 2 uses
  %i.bd = shl nsw i64 %i.ar, 2
  %scevgep.i.i = getelementptr i8, ptr %storemerge102117, i64 %i.bd
  %i.be = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.bf = sub i32 %i.be, %i.ao
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.bi, i1 false), !tbaa !15
  %i.bj = trunc nuw nsw i64 %indvars.iv.next138 to i32
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.f, %Vec_IntGrow.exit.i.i
  %i.bk = phi i32 [ %i.ao, %bb.f ], [ %i.bj, %Vec_IntGrow.exit.i.i ] ; 3 uses
  %storemerge102116 = phi ptr [ %storemerge102115, %bb.f ], [ %storemerge102117, %Vec_IntGrow.exit.i.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %storemerge102116, i64 %indvars.iv137
  store i32 %i.aq, ptr %i.bl, align 4, !tbaa !15
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %i.o
  br i1 %exitcond141.not, label %..preheader_crit_edge, label %bb.f, !llvm.loop !160

bb.l:                                             ; preds = %.lr.ph121, %Vec_IntSetEntry.exit93
  %indvars.iv142 = phi i64 [ %i.an, %.lr.ph121 ], [ %indvars.iv.next143, %Vec_IntSetEntry.exit93 ] ; 2 uses
  %i.bm = phi i32 [ %.promoted128, %.lr.ph121 ], [ %i.dk, %Vec_IntSetEntry.exit93 ] ; 4 uses
  %storemerge101124 = phi ptr [ %.promoted122, %.lr.ph121 ], [ %storemerge101125, %Vec_IntSetEntry.exit93 ] ; 5 uses
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, -1 ; 3 uses
  %i.bn = shl nuw nsw i64 %indvars.iv.next143, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !43  ; 2 uses
  %i.br = sext i8 %i.bq to i32                    ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !43  ; 2 uses
  %i.bu = sext i8 %i.bt to i32                    ; 4 uses
  %i.bv = sext i8 %i.bq to i64                    ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %storemerge101124, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !15
  %i.by = add nsw i64 %indvars.iv.next143, %i.f   ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %storemerge101124, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !15
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = tail call noundef i32 @llvm.smin.i32(i32 %i.bx, i32 %i.cb)
  %i.cd = add nsw i32 %i.br, 1                    ; 2 uses
  %.not.i.not.i60 = icmp sgt i32 %i.bm, %i.br
  br i1 %.not.i.not.i60, label %Vec_IntSetEntry.exit76, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %.not.i.i.not.i62.not = icmp sgt i32 %i.ce, %i.br
  br i1 %.not.i.i.not.i62.not, label %Vec_IntGrow.exit.i.i67, label %Vec_IntGrow.exit.sink.split.i.i64

Vec_IntGrow.exit.sink.split.i.i64:                ; preds = %bb.m
  %i.cf = shl nsw i32 %i.ce, 1
  %. = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.cd) ; 2 uses
  %i.cg = sext i32 %. to i64
  %i.ch = shl nsw i64 %i.cg, 2
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %storemerge101124, i64 noundef %i.ch) #29
  store i32 %., ptr %i.d, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.i.i67

Vec_IntGrow.exit.i.i67:                           ; preds = %bb.m, %Vec_IntGrow.exit.sink.split.i.i64
  %storemerge101127 = phi ptr [ %i.ci, %Vec_IntGrow.exit.sink.split.i.i64 ], [ %storemerge101124, %bb.m ] ; 2 uses
  %i.cj = sext i32 %i.bm to i64
  %i.ck = shl nsw i64 %i.cj, 2
  %scevgep.i.i70 = getelementptr i8, ptr %storemerge101127, i64 %i.ck
  %i.cl = sub i32 %i.br, %i.bm
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i70, i8 0, i64 %i.co, i1 false), !tbaa !15
  br label %Vec_IntSetEntry.exit76

Vec_IntSetEntry.exit76:                           ; preds = %bb.l, %Vec_IntGrow.exit.i.i67
  %i.cp = phi i32 [ %i.bm, %bb.l ], [ %i.cd, %Vec_IntGrow.exit.i.i67 ] ; 4 uses
  %storemerge101126 = phi ptr [ %storemerge101124, %bb.l ], [ %storemerge101127, %Vec_IntGrow.exit.i.i67 ] ; 6 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %storemerge101126, i64 %i.bv
  store i32 %i.cc, ptr %i.cq, align 4, !tbaa !15
  %i.cr = sext i8 %i.bt to i64                    ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %storemerge101126, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !15
  %i.cu = getelementptr inbounds [4 x i8], ptr %storemerge101126, i64 %i.by
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.cw = add nsw i32 %i.cv, -1
  %i.cx = tail call noundef i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cw)
  %i.cy = add nsw i32 %i.bu, 1                    ; 2 uses
  %.not.i.not.i77 = icmp sgt i32 %i.cp, %i.bu
  br i1 %.not.i.not.i77, label %Vec_IntSetEntry.exit93, label %bb.n

bb.n:                                             ; preds = %Vec_IntSetEntry.exit76
  %i.cz = load i32, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %.not.i.i.not.i79.not = icmp sgt i32 %i.cz, %i.bu
  br i1 %.not.i.i.not.i79.not, label %Vec_IntGrow.exit.i.i84, label %Vec_IntGrow.exit.sink.split.i.i81

Vec_IntGrow.exit.sink.split.i.i81:                ; preds = %bb.n
  %i.da = shl nsw i32 %i.cz, 1
  %.167 = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %i.cy) ; 2 uses
  %i.db = sext i32 %.167 to i64
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = tail call ptr @realloc(ptr noundef nonnull %storemerge101126, i64 noundef %i.dc) #29
  store i32 %.167, ptr %i.d, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.i.i84

Vec_IntGrow.exit.i.i84:                           ; preds = %bb.n, %Vec_IntGrow.exit.sink.split.i.i81
  %storemerge101123 = phi ptr [ %i.dd, %Vec_IntGrow.exit.sink.split.i.i81 ], [ %storemerge101126, %bb.n ] ; 2 uses
  %i.de = sext i32 %i.cp to i64
  %i.df = shl nsw i64 %i.de, 2
  %scevgep.i.i87 = getelementptr i8, ptr %storemerge101123, i64 %i.df
  %i.dg = sub nsw i32 %i.bu, %i.cp
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i87, i8 0, i64 %i.dj, i1 false), !tbaa !15
  br label %Vec_IntSetEntry.exit93

Vec_IntSetEntry.exit93:                           ; preds = %Vec_IntSetEntry.exit76, %Vec_IntGrow.exit.i.i84
  %i.dk = phi i32 [ %i.cp, %Vec_IntSetEntry.exit76 ], [ %i.cy, %Vec_IntGrow.exit.i.i84 ] ; 2 uses
  %storemerge101125 = phi ptr [ %storemerge101126, %Vec_IntSetEntry.exit76 ], [ %storemerge101123, %Vec_IntGrow.exit.i.i84 ] ; 4 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %storemerge101125, i64 %i.cr
  store i32 %i.cx, ptr %i.dl, align 4, !tbaa !15
  %i.dm = icmp samesign ugt i64 %indvars.iv142, 1
  br i1 %i.dm, label %bb.l, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %Vec_IntSetEntry.exit93
  store ptr %storemerge101125, ptr %i.i, align 8
  store i32 %i.dk, ptr %i.e, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %.preheader
  %.val59 = phi ptr [ %storemerge101125, %._crit_edge ], [ %.promoted122, %.preheader ] ; 9 uses
  %.val59169 = ptrtoaddr ptr %.val59 to i64       ; 6 uses
  %i.dn = getelementptr inbounds i8, ptr %.val59, i64 %i.g ; 2 uses
  %i.do = load i32, ptr %.val59, align 4, !tbaa !15 ; 3 uses
  %i.dp = icmp sgt i32 %0, 1
  br i1 %i.dp, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %.val59, i64 4 ; 3 uses
  %i.dr = add i64 %i.g, %.val59169
  %i.ds = add i64 %.val59169, 8
  %i.dt = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.ds)
  %i.du = add i64 %i.dt, -5
  %i.dv = sub i64 %i.du, %.val59169               ; 2 uses
  %i.dw = lshr i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dv, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dx, 9223372036854775800     ; 3 uses
  %i.dy = shl i64 %n.vec, 2
  %i.dz = getelementptr i8, ptr %i.dq, i64 %i.dy
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.do, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ec, %vector.body ]
  %vec.phi169 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ed, %vector.body ]
  %i.ea = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !15
  %wide.load170 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !15
  %i.ec = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.ed = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load170, <4 x i32> %vec.phi169) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ec, <4 x i32> %i.ed)
  %i.ef = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.lr.ph30.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi ptr [ %i.dq, %.lr.ph.preheader.i ], [ %i.dz, %middle.block ]
  %.027.i.ph = phi i32 [ %i.do, %.lr.ph.preheader.i ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.eg = phi ptr [ %i.ei, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.027.i = phi i32 [ %spec.select.i94, %.lr.ph.i ], [ %.027.i.ph, %.lr.ph.i.preheader ]
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !15
  %spec.select.i94 = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %.027.i) ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.dn
  br i1 %i.ej, label %.lr.ph.i, label %.lr.ph30.preheader.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %bb.o
  %i.ek = icmp eq i32 %0, 1
  br i1 %i.ek, label %.lr.ph30.preheader.i, label %Vec_IntFree.exit

.lr.ph30.preheader.i:                             ; preds = %.lr.ph.i, %middle.block, %._crit_edge.i
  %.0.lcssa36.i = phi i32 [ %i.do, %._crit_edge.i ], [ %i.ef, %middle.block ], [ %spec.select.i94, %.lr.ph.i ] ; 2 uses
  %i.el = add i64 %i.g, %.val59169
  %i.em = add i64 %.val59169, 4
  %i.en = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.em)
  %i.eo = xor i64 %.val59169, -1
  %i.ep = add i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.ep, 28
  br i1 %min.iters.check172, label %.lr.ph30.i.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph30.preheader.i
  %n.vec174 = and i64 %i.er, 9223372036854775800  ; 3 uses
  %i.es = shl i64 %n.vec174, 2
  %i.et = getelementptr i8, ptr %.val59, i64 %i.es
  %broadcast.splatinsert175 = insertelement <4 x i32> poison, i32 %.0.lcssa36.i, i64 0
  %broadcast.splat176 = shufflevector <4 x i32> %broadcast.splatinsert175, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph173
  %index178 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body177 ] ; 2 uses
  %i.eu = shl i64 %index178, 2
  %next.gep179 = getelementptr i8, ptr %.val59, i64 %i.eu ; 3 uses
  %i.ev = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %next.gep179, align 4, !tbaa !15
  %wide.load181 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !15
  %i.ew = sub nsw <4 x i32> %wide.load180, %broadcast.splat176
  %i.ex = sub nsw <4 x i32> %wide.load181, %broadcast.splat176
  store <4 x i32> %i.ew, ptr %next.gep179, align 4, !tbaa !15
  store <4 x i32> %i.ex, ptr %i.ev, align 4, !tbaa !15
  %index.next182 = add nuw i64 %index178, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next182, %n.vec174
  br i1 %i.ey, label %middle.block183, label %vector.body177, !llvm.loop !164

middle.block183:                                  ; preds = %vector.body177
  %cmp.n184 = icmp eq i64 %i.er, %n.vec174
  br i1 %cmp.n184, label %Vec_IntFree.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block183
  %.12228.i.ph = phi ptr [ %.val59, %.lr.ph30.preheader.i ], [ %i.et, %middle.block183 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.12228.i = phi ptr [ %i.fb, %.lr.ph30.i ], [ %.12228.i.ph, %.lr.ph30.i.preheader ] ; 3 uses
  %i.ez = load i32, ptr %.12228.i, align 4, !tbaa !15
  %i.fa = sub nsw i32 %i.ez, %.0.lcssa36.i
  store i32 %i.fa, ptr %.12228.i, align 4, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.12228.i, i64 4 ; 2 uses
  %i.fc = icmp ult ptr %i.fb, %i.dn
  br i1 %i.fc, label %.lr.ph30.i, label %Vec_IntFree.exit, !llvm.loop !165

Vec_IntFree.exit:                                 ; preds = %.lr.ph30.i, %middle.block183, %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %.val59, i64 %i.g, i1 false)
  tail call void @free(ptr noundef nonnull %.val59) #30
  tail call void @free(ptr noundef nonnull %i.d) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Ses_StoreWrite(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.46) ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %1) ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8560
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  store i64 %i.f, ptr %i.a, align 8, !tbaa !14
  %i.g = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 1, ptr noundef nonnull %i.b) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %._crit_edge
  %.05579 = phi ptr [ %i.ah, %._crit_edge ], [ %i.j, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05579, i64 48
  %.076 = load ptr, ptr %i.k, align 8, !tbaa !26  ; 2 uses
  %.not6177 = icmp eq ptr %.076, null
  br i1 %.not6177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.05579, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %.078 = phi ptr [ %.076, %.lr.ph ], [ %.0, %.backedge ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.078, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %.not62 = icmp eq ptr %i.n, null
  br i1 %.not62, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30
  %.not63 = icmp eq i32 %i.p, 0
  br i1 %.not63, label %bb.g, label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.h, %bb.i, %bb.f
  %.0.in.be = getelementptr inbounds nuw i8, ptr %.078, i64 40
  %.0 = load ptr, ptr %.0.in.be, align 8, !tbaa !26 ; 2 uses
  %.not61 = icmp eq ptr %.0, null
  br i1 %.not61, label %._crit_edge, label %bb.e, !llvm.loop !166

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @fwrite(ptr noundef nonnull %.05579, i64 noundef 8, i64 noundef 4, ptr noundef nonnull %i.b) ; 0 uses
  %i.r = tail call i64 @fwrite(ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.b) ; 0 uses
  %i.s = tail call i64 @fwrite(ptr noundef nonnull %.078, i64 noundef 4, i64 noundef 8, ptr noundef nonnull %i.b) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %i.u = tail call i64 @fwrite(ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.b) ; 0 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !29   ; 4 uses
  %.not68 = icmp eq ptr %i.v, null
  br i1 %.not68, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !43
  %i.y = sext i8 %i.x to i32
  %i.z = shl nsw i32 %i.y, 2
  %i.aa = add nsw i32 %i.z, 5
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !43
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.aa, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call i64 @fwrite(ptr noundef nonnull %i.v, i64 noundef 1, i64 noundef %i.ae, ptr noundef nonnull %i.b) ; 0 uses
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  %fputc = tail call i32 @fputc(i32 0, ptr nonnull %i.b) ; 0 uses
  %fputc71 = tail call i32 @fputc(i32 0, ptr nonnull %i.b) ; 0 uses
  %fputc74 = tail call i32 @fputc(i32 0, ptr nonnull %i.b) ; 0 uses
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %.05579, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not60 = icmp eq ptr %i.ah, null
  br i1 %.not60, label %.loopexit, label %.preheader, !llvm.loop !167

.loopexit:                                        ; preds = %._crit_edge, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %bb.j, label %bb.d, !llvm.loop !168

bb.j:                                             ; preds = %.loopexit
  %i.ai = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Ses_StoreGetEntrySimple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %2, 7
  %i.b = add nsw i32 %2, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %Ses_StoreTableHash.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 3 uses
  %i.f = add nsw i32 %i.d, -17
  %or.cond = icmp ult i32 %i.f, -11
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 28         ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <2 x i64>, ptr %1, align 8, !tbaa !14
  %wide.load89 = load <2 x i64>, ptr %i.h, align 8, !tbaa !14
  %i.i = trunc <2 x i64> %wide.load to <2 x i32>
  %i.j = trunc <2 x i64> %wide.load89 to <2 x i32>
  %i.k = mul <2 x i32> %i.i, <i32 1291, i32 1699>
  %i.l = mul <2 x i32> %i.j, <i32 1999, i32 2357>
end_hunk_0
begin_hunk_1_@Abc_NtkFindExact:bb.a
  %i.dg = lshr i8 %i.da, 2
  %i.dh = and i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 48
  store i8 %i.di, ptr %i.a, align 1, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %.092.i, i64 2
  %i.dk = call ptr @Abc_SopFromTruthBin(ptr noundef nonnull %i.a) #30 ; 3 uses
  %i.dl = call ptr @Abc_NtkCreateObj(ptr noundef %i.l, i32 noundef 7) #30 ; 4 uses
  %i.dm = load ptr, ptr %i.ct, align 8, !tbaa !180
  %i.dn = call ptr @Abc_SopRegister(ptr noundef %i.dm, ptr noundef %i.dk) #30
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !43
  %i.dp = zext i32 %i.cz to i64
  %i.dq = icmp eq i64 %indvars.iv, %i.dp
  br i1 %i.dq, label %bb.z, label %Vec_PtrPush.exit87.i

bb.z:                                             ; preds = %bb.y
  %i.dr = icmp slt i32 %i.cz, 16
  br i1 %i.dr, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i85.i = icmp eq ptr %i.cy, null
  br i1 %.not9.i.i85.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef 128) #29
  br label %Vec_PtrPush.exit87.i

bb.ac:                                            ; preds = %bb.aa
  %i.dt = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_PtrPush.exit87.i

bb.ad:                                            ; preds = %bb.z
  %i.du = icmp samesign ult i32 %i.cz, 1073741823
  %i.dv = shl nuw nsw i32 %i.cz, 1
  %spec.select.i80.i = select i1 %i.du, i32 %i.dv, i32 2147483647 ; 4 uses
  %.not.i10.i81.i = icmp samesign ult i32 %i.cz, %spec.select.i80.i
  br i1 %.not.i10.i81.i, label %bb.ae, label %Vec_PtrPush.exit87.i

bb.ae:                                            ; preds = %bb.ad
  %.not9.i11.i82.i = icmp eq ptr %i.cy, null
  %i.dw = zext nneg i32 %spec.select.i80.i to i64
  %i.dx = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  br i1 %.not9.i11.i82.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = call ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef %i.dx) #29
  br label %Vec_PtrPush.exit87.i

bb.ag:                                            ; preds = %bb.ae
  %i.dz = call noalias ptr @malloc(i64 noundef %i.dx) #28
  br label %Vec_PtrPush.exit87.i

Vec_PtrPush.exit87.i:                             ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.y
  %i.ea = phi ptr [ %i.cy, %bb.y ], [ %i.cy, %bb.ad ], [ %i.dt, %bb.ac ], [ %i.ds, %bb.ab ], [ %i.dy, %bb.af ], [ %i.dz, %bb.ag ] ; 5 uses
  %i.eb = phi i32 [ %i.cz, %bb.y ], [ %i.cz, %bb.ad ], [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i80.i, %bb.af ], [ %spec.select.i80.i, %bb.ag ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv
  store ptr %i.dl, ptr %i.ec, align 8, !tbaa !79
  %.not66.i = icmp eq ptr %i.dk, null
  br i1 %.not66.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %Vec_PtrPush.exit87.i
  call void @free(ptr noundef nonnull %i.dk) #30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %Vec_PtrPush.exit87.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.092.i, i64 3
  %i.ee = load i8, ptr %i.dj, align 1, !tbaa !43
  %i.ef = sext i8 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  call void @Abc_ObjAddFanin(ptr noundef nonnull %i.dl, ptr noundef %i.eh) #30
  %i.ei = getelementptr inbounds nuw i8, ptr %.092.i, i64 4 ; 2 uses
  %i.ej = load i8, ptr %i.ed, align 1, !tbaa !43
  %i.ek = sext i8 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !79
  call void @Abc_ObjAddFanin(ptr noundef nonnull %i.dl, ptr noundef %i.em) #30
  %i.en = add nuw nsw i32 %.16291.i, 1            ; 2 uses
  %i.eo = load i8, ptr %i.q, align 1, !tbaa !43
  %i.ep = sext i8 %i.eo to i32
  %i.eq = icmp slt i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.y, label %.preheader.i, !llvm.loop !178

bb.aj:                                            ; preds = %bb.am, %.lr.ph97.i
  %.val67.i = phi ptr [ %i.cu, %.lr.ph97.i ], [ %.val67101.i, %bb.am ] ; 2 uses
  %.196.i = phi ptr [ %.0.lcssa.i, %.lr.ph97.i ], [ %i.fo, %bb.am ] ; 2 uses
  %.06395.i = phi i32 [ 0, %.lr.ph97.i ], [ %i.fp, %bb.am ] ; 2 uses
  %i.er = call ptr @Abc_NtkCreateObj(ptr noundef %i.l, i32 noundef 3) #30 ; 2 uses
  %i.es = load i8, ptr %i.k, align 1, !tbaa !43
  %i.et = sext i8 %i.es to i32
  %i.eu = add nsw i32 %.06395.i, %i.et
  %.val68.i = load ptr, ptr %i.cx, align 8, !tbaa !78
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %.val68.i, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !79
  %i.ey = call ptr @Abc_ObjAssignName(ptr noundef %i.er, ptr noundef %i.ex, ptr noundef null) #30 ; 0 uses
  %i.ez = load i8, ptr %.196.i, align 1, !tbaa !43 ; 2 uses
  %i.fa = and i8 %i.ez, 1
  %.not65.i = icmp eq i8 %i.fa, 0
  %i.fb = load i8, ptr %i.k, align 1, !tbaa !43
  %i.fc = sext i8 %i.fb to i64
  %i.fd = ashr i8 %i.ez, 1
  %i.fe = sext i8 %i.fd to i64
  %i.ff = add nsw i64 %i.fe, %i.fc                ; 2 uses
  br i1 %.not65.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds [8 x i8], ptr %.val67.i, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !79
  %i.fi = call ptr @Abc_NtkCreateNodeInv(ptr noundef %i.l, ptr noundef %i.fh) #30
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ff
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !79
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink.i = phi ptr [ %i.fk, %bb.al ], [ %i.fi, %bb.ak ]
  %.val67101.i = phi ptr [ %i.cu, %bb.al ], [ %.val67.i, %bb.ak ]
  call void @Abc_ObjAddFanin(ptr noundef %i.er, ptr noundef %.sink.i) #30
  %i.fl = load i8, ptr %i.k, align 1, !tbaa !43
  %i.fm = sext i8 %i.fl to i64
  %i.fn = getelementptr i8, ptr %.196.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 2
  %i.fp = add nuw nsw i32 %.06395.i, 1            ; 2 uses
  %i.fq = load i8, ptr %i.ad, align 1, !tbaa !43
  %i.fr = sext i8 %i.fq to i32
  %i.fs = icmp slt i32 %i.fp, %i.fr
  br i1 %i.fs, label %bb.aj, label %._crit_edge98.i, !llvm.loop !179

._crit_edge98.i:                                  ; preds = %bb.am, %.preheader.i
  call void @Abc_NodeFreeNames(ptr noundef %i.ah) #30
  %.not.i88.i = icmp eq ptr %i.cu, null
  br i1 %.not.i88.i, label %Vec_PtrFree.exit.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge98.i
  call void @free(ptr noundef nonnull %i.cu) #30
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.an, %._crit_edge98.i
  %i.ft = call i32 @Abc_NtkCheck(ptr noundef %i.l) #30
  %.not.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i, label %bb.ao, label %Ses_ManExtractNtk.exit

bb.ao:                                            ; preds = %Vec_PtrFree.exit.i
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %Ses_ManExtractNtk.exit

Ses_ManExtractNtk.exit:                           ; preds = %Vec_PtrFree.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @free(ptr noundef nonnull %i.k) #30
  br label %bb.ap

bb.ap:                                            ; preds = %Ses_ManExtractNtk.exit, %bb.d
  %.0 = phi ptr [ %i.l, %Ses_ManExtractNtk.exit ], [ null, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.fu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #30
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %Abc_Clock.exit25, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i64, ptr %8, align 8, !tbaa !52
  %i.fx = mul nsw i64 %i.fw, 1000000
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !53
  %i.ga = sdiv i64 %i.fz, 1000
  %i.gb = add nsw i64 %i.ga, %i.fx
  br label %Abc_Clock.exit25

Abc_Clock.exit25:                                 ; preds = %bb.ap, %bb.aq
  %.0.i24 = phi i64 [ %i.gb, %bb.aq ], [ -1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.gc = add i64 %.0.i24, %.0.i.neg
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 1136
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !80
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %Abc_Clock.exit25
  call fastcc void @Ses_ManPrintRuntime(ptr noundef nonnull %i.g)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %Abc_Clock.exit25
  %i.ge = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %.not.i26 = icmp eq ptr %i.ge, null
  br i1 %.not.i26, label %Ses_ManClean.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @sat_solver_delete(ptr noundef nonnull %i.ge) #30
  br label %Ses_ManClean.exit

Ses_ManClean.exit:                                ; preds = %bb.as, %bb.at
  call fastcc void @Ses_ManCleanLight(ptr noundef nonnull %i.g)
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noalias noundef ptr @Ses_ManAlloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
bb.a:
  %8 = ptrtoaddr ptr %4 to i64                    ; 6 uses
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(1160) ptr @calloc(i64 noundef 1, i64 noundef 1160) #27 ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.e = phi i32 [ 0, %.lr.ph.preheader ], [ %i.y, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.g = shl i32 %i.f, 2
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not60 = icmp eq i64 %i.k, 0
  br i1 %.not60, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.h
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr [8 x i8], ptr %0, i64 %i.h
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !14
  %i.r = insertelement <4 x i64> poison, i64 %i.j, i64 0
  %i.s = insertelement <4 x i64> %i.r, i64 %i.n, i64 1
  %i.t = shufflevector <2 x i64> %i.q, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = shufflevector <4 x i64> %i.s, <4 x i64> %i.t, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.v = xor <4 x i64> %i.u, splat (i64 -1)
  store <4 x i64> %i.v, ptr %i.i, align 8, !tbaa !14
  %i.w = shl nuw i32 1, %i.f
  %i.x = or i32 %i.e, %i.w                        ; 2 uses
  store i32 %i.x, ptr %i.c, align 8, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.preheader.preheader
  %i.y = phi i32 [ %i.e, %.lr.ph ], [ %i.x, %.preheader.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.z, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %1, ptr %i.aa, align 4, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %2, ptr %i.ab, align 8, !tbaa !85
  %i.ac = icmp slt i32 %1, 7
  %i.ad = add nsw i32 %1, -6
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = select i1 %i.ac, i32 1, i32 %i.ae       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !86
  %notmask = shl nsw i32 -1, %1
  %i.ah = xor i32 %notmask, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %3, ptr %i.aj, align 4, !tbaa !88
  %i.ak = icmp sgt i32 %3, -1
  %i.al = select i1 %i.ak, ptr %4, ptr null       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.al, ptr %i.am, align 8, !tbaa !89
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.ao = sext i32 %1 to i64
  %.idx.i = shl nsw i64 %i.ao, 2                  ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %.idx.i ; 2 uses
  %i.aq = load i32, ptr %4, align 4, !tbaa !15    ; 4 uses
  %i.ar = icmp sgt i32 %1, 1
  br i1 %i.ar, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.at = add i64 %.idx.i, %8
  %i.au = add i64 %8, 8
  %i.av = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.au)
  %i.aw = add i64 %i.av, -5
  %i.ax = sub i64 %i.aw, %8                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bf, %vector.body ]
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !15
  %wide.load74 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !15
  %i.be = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load74, <4 x i32> %vec.phi73) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.be, <4 x i32> %i.bf)
  %i.bh = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi ptr [ %i.as, %.lr.ph.preheader.i ], [ %i.bb, %middle.block ]
  %.027.i.ph = phi i32 [ %i.aq, %.lr.ph.preheader.i ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bi = phi ptr [ %i.bk, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.027.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.027.i.ph, %.lr.ph.i.preheader ]
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %.027.i) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.ap
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.thread.i, !llvm.loop !183

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bh, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  store i32 0, ptr %i.an, align 4, !tbaa !15
  br label %.lr.ph30.preheader.i

._crit_edge.i:                                    ; preds = %bb.c
  %i.bm = icmp eq i32 %1, 1
  br i1 %i.bm, label %.lr.ph30.preheader.i, label %Abc_NormalizeArrivalTimes.exit

.lr.ph30.preheader.i:                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.0.lcssa36.i = phi i32 [ %spec.select.i.lcssa, %._crit_edge.thread.i ], [ %i.aq, %._crit_edge.i ] ; 3 uses
  %i.bn = add i64 %.idx.i, %8
  %i.bo = add i64 %8, 4
  %i.bp = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.bo)
  %i.bq = xor i64 %8, -1
  %i.br = add i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check76 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check76, label %.lr.ph30.i.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph30.preheader.i
  %n.vec78 = and i64 %i.bt, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec78, 2
  %i.bv = getelementptr i8, ptr %4, i64 %i.bu
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %.0.lcssa36.i, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body81 ] ; 2 uses
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph77 ], [ %i.ca, %vector.body81 ]
  %vec.phi84 = phi <4 x i32> [ zeroinitializer, %vector.ph77 ], [ %i.cb, %vector.body81 ]
  %i.bw = shl i64 %index82, 2
  %next.gep85 = getelementptr i8, ptr %4, i64 %i.bw ; 3 uses
  %i.bx = getelementptr i8, ptr %next.gep85, i64 16 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !15
  %wide.load87 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !15
  %i.by = sub nsw <4 x i32> %wide.load86, %broadcast.splat80 ; 2 uses
  %i.bz = sub nsw <4 x i32> %wide.load87, %broadcast.splat80 ; 2 uses
  store <4 x i32> %i.by, ptr %next.gep85, align 4, !tbaa !15
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !15
  %i.ca = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.by, <4 x i32> %vec.phi83) ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bz, <4 x i32> %vec.phi84) ; 2 uses
  %index.next88 = add nuw i64 %index82, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.cc, label %middle.block89, label %vector.body81, !llvm.loop !184

middle.block89:                                   ; preds = %vector.body81
  %rdx.minmax90 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ca, <4 x i32> %i.cb)
  %i.cd = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax90) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.bt, %n.vec78
  br i1 %cmp.n91, label %._crit_edge31.loopexit.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block89
  %spec.store.select67.ph = phi i32 [ 0, %.lr.ph30.preheader.i ], [ %i.cd, %middle.block89 ]
  %.12228.i.ph = phi ptr [ %4, %.lr.ph30.preheader.i ], [ %i.bv, %middle.block89 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %spec.store.select67 = phi i32 [ %spec.store.select, %.lr.ph30.i ], [ %spec.store.select67.ph, %.lr.ph30.i.preheader ]
  %.12228.i = phi ptr [ %i.cg, %.lr.ph30.i ], [ %.12228.i.ph, %.lr.ph30.i.preheader ] ; 3 uses
  %i.ce = load i32, ptr %.12228.i, align 4, !tbaa !15
  %i.cf = sub nsw i32 %i.ce, %.0.lcssa36.i        ; 2 uses
  store i32 %i.cf, ptr %.12228.i, align 4, !tbaa !15
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 %spec.store.select67) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.12228.i, i64 4 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.ap
  br i1 %i.ch, label %.lr.ph30.i, label %._crit_edge31.loopexit.i, !llvm.loop !185

._crit_edge31.loopexit.i:                         ; preds = %.lr.ph30.i, %middle.block89
  %spec.store.select.lcssa = phi i32 [ %i.cd, %middle.block89 ], [ %spec.store.select, %.lr.ph30.i ]
  %i.ci = add nuw nsw i32 %spec.store.select.lcssa, 1
  br label %Abc_NormalizeArrivalTimes.exit

Abc_NormalizeArrivalTimes.exit:                   ; preds = %._crit_edge.i, %._crit_edge31.loopexit.i
  %.0.lcssa35.i = phi i32 [ %.0.lcssa36.i, %._crit_edge31.loopexit.i ], [ %i.aq, %._crit_edge.i ]
  %i.cj = phi i32 [ %i.ci, %._crit_edge31.loopexit.i ], [ 1, %._crit_edge.i ]
  store i32 %i.cj, ptr %i.an, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %.0.lcssa35.i, ptr %i.ck, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %Abc_NormalizeArrivalTimes.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 %5, ptr %i.cl, align 4, !tbaa !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %6, ptr %i.cm, align 8, !tbaa !92
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i32 %7, ptr %i.cn, align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 0, ptr %i.co, align 4, !tbaa !94
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 0, ptr %i.cp, align 8, !tbaa !95
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.cq, align 4, !tbaa !59
  %i.cr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 0, ptr %i.cs, align 4, !tbaa !46
  store i32 100, ptr %i.cr, align 8, !tbaa !47
  %i.ct = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.cr, ptr %i.cv, align 8, !tbaa !96
  %i.cw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 0, ptr %i.cx, align 4, !tbaa !46
  store i32 16, ptr %i.cw, align 8, !tbaa !47
  %i.cy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !48
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.cw, ptr %i.da, align 8, !tbaa !97
  %i.db = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.dc = add i32 %1, -1
  %or.cond.i = icmp ult i32 %i.dc, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %1 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 0, ptr %i.dd, align 4, !tbaa !46
  store i32 %spec.store.select.i, ptr %i.db, align 8, !tbaa !47
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.de = sext i32 %spec.store.select.i to i64
  %i.df = shl nsw i64 %i.de, 2
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.df) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.d, %bb.e
  %i.dh = phi ptr [ %i.dg, %bb.e ], [ null, %bb.d ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.db, ptr %i.dj, align 8, !tbaa !98
  %i.dk = shl nsw i32 %1, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store i32 0, ptr %i.dm, align 4, !tbaa !100
  %i.dn = icmp eq i32 %2, 1
  br i1 %i.dn, label %bb.f, label %bb.j

bb.f:                                             ; preds = %Vec_IntAlloc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.do = icmp sgt i32 %i.af, 0
  br i1 %i.do, label %.lr.ph.i.i, label %Abc_TtMask.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.af to i64
  %i.dp = shl nuw nsw i64 %wide.trip.count.i.i, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.dp, i1 false), !tbaa !14
  br label %Abc_TtMask.exit.i

Abc_TtMask.exit.i:                                ; preds = %.lr.ph.i.i, %bb.f
  %i.dq = icmp sgt i32 %1, 0
  br i1 %i.dq, label %.lr.ph.i62, label %Ses_ManComputeTopDec.exit

.lr.ph.i62:                                       ; preds = %Abc_TtMask.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i62
  %i.ds = phi i32 [ 0, %.lr.ph.i62 ], [ %i.dw, %bb.i ] ; 2 uses
  %.09.i = phi i32 [ 0, %.lr.ph.i62 ], [ %i.dx, %bb.i ] ; 3 uses
  %i.dt = call fastcc i32 @Abc_TtIsTopDecomposable(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.af, i32 noundef %.09.i)
  %.not.i63 = icmp eq i32 %i.dt, 0
  br i1 %.not.i63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.du = shl nuw i32 1, %.09.i
  %i.dv = or i32 %i.ds, %i.du                     ; 2 uses
  store i32 %i.dv, ptr %i.dr, align 8, !tbaa !101
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dw = phi i32 [ %i.dv, %bb.h ], [ %i.ds, %bb.g ]
  %i.dx = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dx, %1
  br i1 %exitcond.not.i, label %Ses_ManComputeTopDec.exit, label %bb.g, !llvm.loop !186

Ses_ManComputeTopDec.exit:                        ; preds = %bb.i, %Abc_TtMask.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.j

bb.j:                                             ; preds = %Ses_ManComputeTopDec.exit, %Vec_IntAlloc.exit
  tail call void @srand(i32 noundef 51966) #30
  ret ptr %i.b
}

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc void @Ses_ManPrintFuncs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %i.b, i32 noundef %i.d) ; 0 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !85
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Abc_TtPrintHexRev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtPrintHexRev.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.i) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !102 ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_1
begin_hunk_2_@Abc_ExactStats:bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
  %i.ld = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8824
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !220
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8872
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !138 ; 2 uses
  %.not36 = icmp eq i64 %i.lh, 0
  %i.li = sitofp i64 %i.lh to double
  %i.lj = sitofp i64 %i.lf to double
  %i.lk = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = fmul nnan <2 x double> %i.ll, <double 1.000000e+00, double 1.000000e+02>
  %i.ln = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.li, i64 1
  %i.lo = fdiv <2 x double> %i.lm, %i.ln          ; 2 uses
  %i.lp = extractelement <2 x double> %i.lo, i64 1
  %i.lq = select i1 %.not36, double 0.000000e+00, double %i.lp
  %i.lr = extractelement <2 x double> %i.lo, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.lr, double noundef %i.lq)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26)
  %i.ls = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8832
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !221
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 8872
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !138 ; 2 uses
  %.not37 = icmp eq i64 %i.lw, 0
  %i.lx = sitofp i64 %i.lw to double
  %i.ly = sitofp i64 %i.lu to double
  %i.lz = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = fmul nnan <2 x double> %i.ma, <double 1.000000e+00, double 1.000000e+02>
  %i.mc = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.lx, i64 1
  %i.md = fdiv <2 x double> %i.mb, %i.mc          ; 2 uses
  %i.me = extractelement <2 x double> %i.md, i64 1
  %i.mf = select i1 %.not37, double 0.000000e+00, double %i.me
  %i.mg = extractelement <2 x double> %i.md, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.mg, double noundef %i.mf)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27)
  %i.mh = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8840
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !222
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 8872
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !138 ; 2 uses
  %.not38 = icmp eq i64 %i.ml, 0
  %i.mm = sitofp i64 %i.ml to double
  %i.mn = sitofp i64 %i.mj to double
  %i.mo = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = fmul nnan <2 x double> %i.mp, <double 1.000000e+00, double 1.000000e+02>
  %i.mr = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.mm, i64 1
  %i.ms = fdiv <2 x double> %i.mq, %i.mr          ; 2 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 1
  %i.mu = select i1 %.not38, double 0.000000e+00, double %i.mt
  %i.mv = extractelement <2 x double> %i.ms, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.mv, double noundef %i.mu)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28)
  %i.mw = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8848
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !223
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8872
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !138 ; 2 uses
  %.not39 = icmp eq i64 %i.na, 0
  %i.nb = sitofp i64 %i.na to double
  %i.nc = sitofp i64 %i.my to double
  %i.nd = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nf = fmul nnan <2 x double> %i.ne, <double 1.000000e+00, double 1.000000e+02>
  %i.ng = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.nb, i64 1
  %i.nh = fdiv <2 x double> %i.nf, %i.ng          ; 2 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 1
  %i.nj = select i1 %.not39, double 0.000000e+00, double %i.ni
  %i.nk = extractelement <2 x double> %i.nh, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.nk, double noundef %i.nj)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29)
  %i.nl = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8856
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !224
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 8872
  %i.np = load i64, ptr %i.no, align 8, !tbaa !138 ; 2 uses
  %.not40 = icmp eq i64 %i.np, 0
  %i.nq = sitofp i64 %i.np to double
  %i.nr = sitofp i64 %i.nn to double
  %i.ns = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fmul nnan <2 x double> %i.nt, <double 1.000000e+00, double 1.000000e+02>
  %i.nv = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.nq, i64 1
  %i.nw = fdiv <2 x double> %i.nu, %i.nv          ; 2 uses
  %i.nx = extractelement <2 x double> %i.nw, i64 1
  %i.ny = select i1 %.not40, double 0.000000e+00, double %i.nx
  %i.nz = extractelement <2 x double> %i.nw, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.nz, double noundef %i.ny)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30)
  %i.oa = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8864
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !139
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 8872
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !138 ; 2 uses
  %.not41 = icmp eq i64 %i.oe, 0
  %i.of = sitofp i64 %i.oe to double
  %i.og = sitofp i64 %i.oc to double
  %i.oh = insertelement <2 x double> poison, double %i.og, i64 0
  %i.oi = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = fmul nnan <2 x double> %i.oi, <double 1.000000e+00, double 1.000000e+02>
  %i.ok = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.of, i64 1
  %i.ol = fdiv <2 x double> %i.oj, %i.ok          ; 2 uses
  %i.om = extractelement <2 x double> %i.ol, i64 1
  %i.on = select i1 %.not41, double 0.000000e+00, double %i.om
  %i.oo = extractelement <2 x double> %i.ol, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.oo, double noundef %i.on)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31)
  %i.op = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8872
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !138 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 8824
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !220
  %i.ou = sub nsw i64 %i.or, %i.ot
  %.not42 = icmp eq i64 %i.or, 0
  %i.ov = sitofp i64 %i.or to double
  %i.ow = sitofp i64 %i.ou to double
  %i.ox = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oz = fmul nnan <2 x double> %i.oy, <double 1.000000e+00, double 1.000000e+02>
  %i.pa = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.ov, i64 1
  %i.pb = fdiv <2 x double> %i.oz, %i.pa          ; 2 uses
  %i.pc = extractelement <2 x double> %i.pb, i64 1
  %i.pd = select i1 %.not42, double 0.000000e+00, double %i.pc
  %i.pe = extractelement <2 x double> %i.pb, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.pe, double noundef %i.pd)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.32)
  %i.pf = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8872
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !138 ; 2 uses
  %.not43 = icmp eq i64 %i.ph, 0
  %i.pi = sitofp i64 %i.ph to double              ; 2 uses
  %i.pj = insertelement <2 x double> poison, double %i.pi, i64 0
  %i.pk = shufflevector <2 x double> %i.pj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pl = fmul nnan <2 x double> %i.pk, <double 1.000000e+00, double 1.000000e+02>
  %i.pm = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.pi, i64 1
  %i.pn = fdiv <2 x double> %i.pl, %i.pm          ; 2 uses
  %i.po = extractelement <2 x double> %i.pn, i64 1
  %i.pp = select i1 %.not43, double 0.000000e+00, double %i.po
  %i.pq = extractelement <2 x double> %i.pn, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, double noundef %i.pq, double noundef %i.pp)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #30 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #30
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #30 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !102
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #31
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #30 ; 0 uses
  call void @free(ptr noundef %i.d) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !102, !noalias !228
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #30, !inline_history !227 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Abc_ExactDelayCost(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca [8 x i32], align 16               ; 21 uses
  %13 = ptrtoaddr ptr %i.c to i64                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr null, ptr %i.b, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #30
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %12, align 8, !tbaa !52
  %.neg183 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  %.neg182 = sdiv i64 %i.h, -1000
  %.neg184 = add i64 %.neg182, %.neg183
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg185 = phi i64 [ %.neg184, %bb.b ], [ 1, %bb.a ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %or.cond = icmp ugt i32 %1, 8
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit, %bb.c
  %i.j = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8240 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !135
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8248
  %i.o = sext i32 %1 to i64                       ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !14
  switch i32 %1, label %.preheader156 [
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

.preheader156:                                    ; preds = %bb.d
  %i.s = icmp sgt i32 %1, 0                       ; 5 uses
  br i1 %i.s, label %.lr.ph.preheader.i, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8480 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !14
  %i.v = add <2 x i64> %i.u, splat (i64 1)
  store <2 x i64> %i.v, ptr %i.t, align 8, !tbaa !14
  store i32 0, ptr %4, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.w = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #30
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %Abc_Clock.exit130, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %11, align 8, !tbaa !52
  %i.z = mul nsw i64 %i.y, 1000000
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ac = sdiv i64 %i.ab, 1000
  %i.ad = add nsw i64 %i.ac, %i.z
  br label %Abc_Clock.exit130

Abc_Clock.exit130:                                ; preds = %bb.e, %bb.f
  %.0.i129 = phi i64 [ %i.ad, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.ae = add i64 %.0.i129, %.0.i.neg185
  %i.af = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8872 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !138
  %i.ai = add nsw i64 %i.ae, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !138
  br label %bb.ay

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8480 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !136
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !136
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8496 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !14
  store i32 0, ptr %4, align 4, !tbaa !15
  store i8 0, ptr %3, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ap = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #30
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %Abc_Clock.exit132, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %10, align 8, !tbaa !52
  %i.as = mul nsw i64 %i.ar, 1000000
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !53
  %i.av = sdiv i64 %i.au, 1000
  %i.aw = add nsw i64 %i.av, %i.as
  br label %Abc_Clock.exit132

Abc_Clock.exit132:                                ; preds = %bb.g, %bb.h
  %.0.i131 = phi i64 [ %i.aw, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.ax = add i64 %.0.i131, %.0.i.neg185
  %i.ay = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8872 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !138
  %i.bb = add nsw i64 %i.ax, %i.ba
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !138
  %i.bc = load i32, ptr %2, align 4, !tbaa !15
  br label %bb.ay

.lr.ph.preheader.i:                               ; preds = %.preheader156
  %i.bd = zext nneg i32 %1 to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 4 %2, i64 %i.be, i1 false), !tbaa !15
  %.idx.i222 = shl nuw nsw i64 %i.o, 2            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i222 ; 2 uses
  %i.bg = load i32, ptr %i.c, align 16, !tbaa !15 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.bi = add i64 %.idx.i222, %13                 ; 2 uses
  %i.bj = or disjoint i64 %13, 8
  %i.bk = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.bj)
  %i.bl = add i64 %i.bk, -5
  %i.bm = sub i64 %i.bl, %13                      ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi233 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bu, %vector.body ]
  %i.br = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !15
  %wide.load234 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !15
  %i.bt = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.bu = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load234, <4 x i32> %vec.phi233) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bt, <4 x i32> %i.bu)
  %i.bw = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.lr.ph30.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi ptr [ %i.bh, %.lr.ph.preheader.i ], [ %i.bq, %middle.block ]
  %.027.i.ph = phi i32 [ %i.bg, %.lr.ph.preheader.i ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bx = phi ptr [ %i.bz, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.027.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.027.i.ph, %.lr.ph.i.preheader ]
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.by, i32 %.027.i) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.bf
  br i1 %i.ca, label %.lr.ph.i, label %.lr.ph30.preheader.i, !llvm.loop !230

._crit_edge.i:                                    ; preds = %.preheader156
  %i.cb = load i32, ptr %i.c, align 16, !tbaa !15
  br label %Abc_NormalizeArrivalTimes.exit

.lr.ph30.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bw, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 4 uses
  %i.cc = or disjoint i64 %13, 4
  %i.cd = call i64 @llvm.umax.i64(i64 %i.bi, i64 %i.cc)
  %i.ce = xor i64 %13, -1
  %i.cf = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.cf, 28
  br i1 %min.iters.check236, label %.lr.ph30.i.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %.lr.ph30.preheader.i
  %n.vec238 = and i64 %i.ch, 9223372036854775800  ; 3 uses
  %i.ci = shl i64 %n.vec238, 2
  %i.cj = getelementptr i8, ptr %i.c, i64 %i.ci
  %broadcast.splatinsert239 = insertelement <4 x i32> poison, i32 %spec.select.i.lcssa, i64 0
  %broadcast.splat240 = shufflevector <4 x i32> %broadcast.splatinsert239, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph237
  %index242 = phi i64 [ 0, %vector.ph237 ], [ %index.next246, %vector.body241 ] ; 2 uses
  %i.ck = shl i64 %index242, 2
  %next.gep243 = getelementptr i8, ptr %i.c, i64 %i.ck ; 3 uses
  %i.cl = getelementptr i8, ptr %next.gep243, i64 16 ; 2 uses
  %wide.load244 = load <4 x i32>, ptr %next.gep243, align 16, !tbaa !15
  %wide.load245 = load <4 x i32>, ptr %i.cl, align 16, !tbaa !15
  %i.cm = sub nsw <4 x i32> %wide.load244, %broadcast.splat240
  %i.cn = sub nsw <4 x i32> %wide.load245, %broadcast.splat240
  store <4 x i32> %i.cm, ptr %next.gep243, align 16, !tbaa !15
  store <4 x i32> %i.cn, ptr %i.cl, align 16, !tbaa !15
  %index.next246 = add nuw i64 %index242, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next246, %n.vec238
  br i1 %i.co, label %middle.block247, label %vector.body241, !llvm.loop !231

middle.block247:                                  ; preds = %vector.body241
  %cmp.n248 = icmp eq i64 %i.ch, %n.vec238
  br i1 %cmp.n248, label %Abc_NormalizeArrivalTimes.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block247
  %.12228.i.ph = phi ptr [ %i.c, %.lr.ph30.preheader.i ], [ %i.cj, %middle.block247 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.12228.i = phi ptr [ %i.cr, %.lr.ph30.i ], [ %.12228.i.ph, %.lr.ph30.i.preheader ] ; 3 uses
  %i.cp = load i32, ptr %.12228.i, align 4, !tbaa !15
  %i.cq = sub nsw i32 %i.cp, %spec.select.i.lcssa
  store i32 %i.cq, ptr %.12228.i, align 4, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %.12228.i, i64 4 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.bf
  br i1 %i.cs, label %.lr.ph30.i, label %Abc_NormalizeArrivalTimes.exit, !llvm.loop !232

Abc_NormalizeArrivalTimes.exit:                   ; preds = %.lr.ph30.i, %middle.block247, %._crit_edge.i
  %.0.lcssa35.i = phi i32 [ %i.cb, %._crit_edge.i ], [ %spec.select.i.lcssa, %middle.block247 ], [ %spec.select.i.lcssa, %.lr.ph30.i ]
  store i32 1000000000, ptr %4, align 4, !tbaa !15
  %i.ct = call i32 @Ses_StoreGetEntry(ptr noundef nonnull %i.j, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.ct, 0
  %i.cu = load ptr, ptr @s_pSesStore, align 8, !tbaa !128 ; 3 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Abc_NormalizeArrivalTimes.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8720 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !137
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !137
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8728
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.o ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !14
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.au

bb.j:                                             ; preds = %Abc_NormalizeArrivalTimes.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !133
  %.not114 = icmp eq i32 %i.dd, 0
  br i1 %.not114, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !102 ; 2 uses
  %i.dg = icmp samesign ugt i32 %1, 5
  %i.dh = add nsw i32 %1, -2
  %i.di = icmp slt i32 %1, 2
  br i1 %i.di, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dj = load i64, ptr %0, align 8, !tbaa !14
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 15                       ; 3 uses
  %i.dm = icmp samesign ult i32 %i.dl, 10
  %i.dn = or disjoint i32 %i.dl, 48
  %i.do = add nuw nsw i32 %i.dl, 55
  %.0.i.i = select i1 %i.dm, i32 %i.dn, i32 %i.do
  %fputc17.i = call i32 @fputc(i32 %.0.i.i, ptr %i.df) ; 0 uses
  br label %Abc_TtPrintHexRev.exit

bb.m:                                             ; preds = %bb.k
  %i.dp = icmp samesign ult i32 %1, 7
  %i.dq = add nsw i32 %1, -6
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = select i1 %i.dp, i32 1, i32 %i.dr       ; 2 uses
  %.not22.i = icmp slt i32 %i.ds, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %bb.m
  %i.dt = zext nneg i32 %i.ds to i64
  %.idx.i134 = shl nuw nsw i64 %i.dt, 3
  %i.du = getelementptr i8, ptr %0, i64 %.idx.i134
  %.01521.i = getelementptr i8, ptr %i.du, i64 -8
  %notmask.i = shl nsw i32 -1, %i.dh
  %i.dv = xor i32 %notmask.i, -1
  %i.dw = select i1 %i.dg, i32 15, i32 %i.dv
  %i.dx = zext nneg i32 %i.dw to i64
  br label %bb.n

.loopexit.i:                                      ; preds = %bb.o
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.015.i, %0
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit, label %bb.n, !llvm.loop !2

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph.i133
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i133 ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i = phi i64 [ %i.dx, %bb.n ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.dy = load i64, ptr %.01523.i, align 8, !tbaa !14
  %i.dz = shl nsw i64 %indvars.iv.i, 2
  %i.ea = and i64 %i.dz, 4294967292
  %i.eb = lshr i64 %i.dy, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 15                       ; 3 uses
  %i.ee = icmp samesign ult i32 %i.ed, 10
  %i.ef = or disjoint i32 %i.ed, 48
  %i.eg = add nuw nsw i32 %i.ed, 55
  %.0.i18.i = select i1 %i.ee, i32 %i.ef, i32 %i.eg
  %fputc.i = call i32 @fputc(i32 %.0.i18.i, ptr %i.df) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.eh = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.eh, label %bb.o, label %.loopexit.i, !llvm.loop !3

Abc_TtPrintHexRev.exit:                           ; preds = %.loopexit.i, %bb.l, %bb.m
end_hunk_2
begin_hunk_3_@Abc_ExactDelayCost:bb.a
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %.lr.ph179 ], [ %indvars.iv203.ph, %.lr.ph179.preheader308 ] ; 3 uses
  %.0178 = phi i32 [ %i.nn, %.lr.ph179 ], [ %.0178.ph, %.lr.ph179.preheader308 ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv203
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !15
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv203
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !43
  %i.nl = sext i8 %i.nk to i32
  %i.nm = add nsw i32 %i.ni, %i.nl
  %i.nn = call noundef i32 @llvm.smax.i32(i32 %.0178, i32 %i.nm) ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !243

._crit_edge180:                                   ; preds = %.lr.ph179, %middle.block303, %bb.av
  %.0.lcssa = phi i32 [ 0, %bb.av ], [ %i.mr, %middle.block303 ], [ %i.nn, %.lr.ph179 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.no = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #30
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %Abc_Clock.exit147, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge180
  %i.nq = load i64, ptr %7, align 8, !tbaa !52
  %i.nr = mul nsw i64 %i.nq, 1000000
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !53
  %i.nu = sdiv i64 %i.nt, 1000
  %i.nv = add nsw i64 %i.nu, %i.nr
  br label %Abc_Clock.exit147

Abc_Clock.exit147:                                ; preds = %._crit_edge180, %bb.aw
  %.0.i146 = phi i64 [ %i.nv, %bb.aw ], [ -1, %._crit_edge180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.nw = add i64 %.0.i146, %.0.i.neg185
  %i.nx = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8872 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !138
  %i.oa = add nsw i64 %i.nw, %i.nz
  store i64 %i.oa, ptr %i.ny, align 8, !tbaa !138
  br label %bb.ay

.thread:                                          ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ob = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #30
  %i.oc = icmp slt i32 %i.ob, 0
  br i1 %i.oc, label %Abc_Clock.exit149, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %i.od = load i64, ptr %6, align 8, !tbaa !52
  %i.oe = mul nsw i64 %i.od, 1000000
  %i.of = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !53
  %i.oh = sdiv i64 %i.og, 1000
  %i.oi = add nsw i64 %i.oh, %i.oe
  br label %Abc_Clock.exit149

Abc_Clock.exit149:                                ; preds = %.thread, %bb.ax
  %.0.i148 = phi i64 [ %i.oi, %bb.ax ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.oj = add i64 %.0.i148, %.0.i.neg185
  %i.ok = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8872 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !138
  %i.on = add nsw i64 %i.oj, %i.om
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !138
  br label %bb.ay

bb.ay:                                            ; preds = %Abc_Clock.exit149, %Abc_Clock.exit147, %Abc_Clock.exit132, %Abc_Clock.exit130
  %.0107 = phi i32 [ 0, %Abc_Clock.exit130 ], [ %i.bc, %Abc_Clock.exit132 ], [ %.0.lcssa, %Abc_Clock.exit147 ], [ 1000000000, %Abc_Clock.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  ret i32 %.0107
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Ses_ManCleanLight(ptr noundef captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit33 ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.h = shl nuw i32 1, %i.g
  %i.i = and i32 %i.e, %i.h
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %.loopexit33, label %.preheader32

.preheader32:                                     ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %i.k = shl i32 %i.g, 2
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !14
  %i.o = xor <2 x i64> %i.n, splat (i64 -1)
  store <2 x i64> %i.o, ptr %i.m, align 8, !tbaa !14
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %i.l
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.r = load <2 x i64>, ptr %i.q, align 8, !tbaa !14
  %i.s = xor <2 x i64> %i.r, splat (i64 -1)
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !14
  br label %.loopexit33

.loopexit33:                                      ; preds = %.preheader32, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !246

._crit_edge:                                      ; preds = %.loopexit33, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !84
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph37, %bb.c
  %indvars.iv40 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next41, %bb.c ] ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv40 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !15
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !84
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next41, %i.ae
  br i1 %i.af, label %bb.c, label %.loopexit, !llvm.loop !247

.loopexit:                                        ; preds = %bb.c, %.preheader, %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.aj) #30
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit, %bb.d
  tail call void @free(ptr noundef nonnull %i.ah) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i28 = icmp eq ptr %i.an, null
  br i1 %.not.i28, label %Vec_IntFree.exit29, label %bb.e

bb.e:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.an) #30
  br label %Vec_IntFree.exit29

Vec_IntFree.exit29:                               ; preds = %Vec_IntFree.exit, %bb.e
  tail call void @free(ptr noundef nonnull %i.al) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ar, null
  br i1 %.not.i30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Vec_IntFree.exit29
  tail call void @free(ptr noundef nonnull %i.ar) #30
  br label %bb.g

bb.g:                                             ; preds = %Vec_IntFree.exit29, %bb.f
  tail call void @free(ptr noundef nonnull %i.ap) #30
  tail call void @free(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Abc_ExactBuildNode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [8 x i32], align 16               ; 10 uses
  %9 = ptrtoaddr ptr %i.a to i64                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #30
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %8, align 8, !tbaa !52
  %.neg79 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %.neg = sdiv i64 %i.f, -1000
  %.neg80 = add i64 %.neg, %.neg79
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg81 = phi i64 [ %.neg80, %bb.b ], [ 1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  switch i32 %1, label %.preheader [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

.preheader:                                       ; preds = %Abc_Clock.exit
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %Abc_NormalizeArrivalTimes.exit

bb.c:                                             ; preds = %Abc_Clock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.h = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #30
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Abc_Clock.exit72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %7, align 8, !tbaa !52
  %i.k = mul nsw i64 %i.j, 1000000
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53
  %i.n = sdiv i64 %i.m, 1000
  %i.o = add nsw i64 %i.n, %i.k
  br label %Abc_Clock.exit72

Abc_Clock.exit72:                                 ; preds = %bb.c, %bb.d
  %.0.i71 = phi i64 [ %i.o, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.p = add i64 %.0.i71, %.0.i.neg81
  %i.q = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8872 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !138
  %i.t = add nsw i64 %i.p, %i.s
  store i64 %i.t, ptr %i.r, align 8, !tbaa !138
  %i.u = load i64, ptr %0, align 8, !tbaa !14
  %i.v = and i64 %i.u, 1
  %.not70 = icmp eq i64 %i.v, 0
  br i1 %.not70, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit72
  %i.w = call ptr @Abc_NtkCreateNodeConst1(ptr noundef %4) #30
  br label %bb.l

bb.f:                                             ; preds = %Abc_Clock.exit72
  %i.x = call ptr @Abc_NtkCreateNodeConst0(ptr noundef %4) #30
  br label %bb.l

bb.g:                                             ; preds = %Abc_Clock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.y = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #30
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %Abc_Clock.exit74, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %6, align 8, !tbaa !52
  %i.ab = mul nsw i64 %i.aa, 1000000
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.ae = sdiv i64 %i.ad, 1000
  %i.af = add nsw i64 %i.ae, %i.ab
  br label %Abc_Clock.exit74

Abc_Clock.exit74:                                 ; preds = %bb.g, %bb.h
  %.0.i73 = phi i64 [ %i.af, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ag = add i64 %.0.i73, %.0.i.neg81
  %i.ah = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8872 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !138
  %i.ak = add nsw i64 %i.ag, %i.aj
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !138
  %i.al = load i64, ptr %0, align 8, !tbaa !14
  %i.am = and i64 %i.al, 1
  %.not = icmp eq i64 %i.am, 0
  %i.an = load ptr, ptr %3, align 8, !tbaa !253   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit74
  %i.ao = call ptr @Abc_NtkCreateNodeInv(ptr noundef %4, ptr noundef %i.an) #30
  br label %bb.l

bb.j:                                             ; preds = %Abc_Clock.exit74
  %i.ap = call ptr @Abc_NtkCreateNodeBuf(ptr noundef %4, ptr noundef %i.an) #30
  br label %bb.l

.lr.ph.preheader.i:                               ; preds = %.preheader
  %i.aq = zext nneg i32 %1 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %2, i64 %i.ar, i1 false), !tbaa !15
  %.pre = load i32, ptr %i.a, align 16, !tbaa !15 ; 2 uses
  %i.as = zext nneg i32 %1 to i64
  %.idx.i83 = shl nuw nsw i64 %i.as, 2            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i83 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.av = add i64 %.idx.i83, %9                   ; 2 uses
  %i.aw = or disjoint i64 %9, 8
  %i.ax = call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ay = add i64 %i.ax, -5
  %i.az = sub i64 %i.ay, %9                       ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bb, 9223372036854775800     ; 3 uses
  %i.bc = shl i64 %n.vec, 2
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bc
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi84 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bh, %vector.body ]
  %i.be = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !15
  %wide.load85 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !15
  %i.bg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.bh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load85, <4 x i32> %vec.phi84) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bh)
  %i.bj = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.lr.ph30.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.ph = phi ptr [ %i.au, %.lr.ph.preheader.i ], [ %i.bd, %middle.block ]
  %.027.i.ph = phi i32 [ %.pre, %.lr.ph.preheader.i ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bk = phi ptr [ %i.bm, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.027.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.027.i.ph, %.lr.ph.i.preheader ]
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bl, i32 %.027.i) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.at
  br i1 %i.bn, label %.lr.ph.i, label %.lr.ph30.preheader.i, !llvm.loop !249

.lr.ph30.preheader.i:                             ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bj, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bo = or disjoint i64 %9, 4
  %i.bp = call i64 @llvm.umax.i64(i64 %i.av, i64 %i.bo)
  %i.bq = xor i64 %9, -1
  %i.br = add i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check87, label %.lr.ph30.i.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph30.preheader.i
  %n.vec89 = and i64 %i.bt, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec89, 2
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu
  %broadcast.splatinsert90 = insertelement <4 x i32> poison, i32 %spec.select.i.lcssa, i64 0
  %broadcast.splat91 = shufflevector <4 x i32> %broadcast.splatinsert90, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph88
  %index93 = phi i64 [ 0, %vector.ph88 ], [ %index.next97, %vector.body92 ] ; 2 uses
  %i.bw = shl i64 %index93, 2
  %next.gep94 = getelementptr i8, ptr %i.a, i64 %i.bw ; 3 uses
  %i.bx = getelementptr i8, ptr %next.gep94, i64 16 ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %next.gep94, align 16, !tbaa !15
  %wide.load96 = load <4 x i32>, ptr %i.bx, align 16, !tbaa !15
  %i.by = sub nsw <4 x i32> %wide.load95, %broadcast.splat91
  %i.bz = sub nsw <4 x i32> %wide.load96, %broadcast.splat91
  store <4 x i32> %i.by, ptr %next.gep94, align 16, !tbaa !15
  store <4 x i32> %i.bz, ptr %i.bx, align 16, !tbaa !15
  %index.next97 = add nuw i64 %index93, 8         ; 2 uses
  %i.ca = icmp eq i64 %index.next97, %n.vec89
  br i1 %i.ca, label %middle.block98, label %vector.body92, !llvm.loop !250

middle.block98:                                   ; preds = %vector.body92
  %cmp.n99 = icmp eq i64 %i.bt, %n.vec89
  br i1 %cmp.n99, label %Abc_NormalizeArrivalTimes.exit, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.lr.ph30.preheader.i, %middle.block98
  %.12228.i.ph = phi ptr [ %i.a, %.lr.ph30.preheader.i ], [ %i.bv, %middle.block98 ]
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %.lr.ph30.i
  %.12228.i = phi ptr [ %i.cd, %.lr.ph30.i ], [ %.12228.i.ph, %.lr.ph30.i.preheader ] ; 3 uses
  %i.cb = load i32, ptr %.12228.i, align 4, !tbaa !15
  %i.cc = sub nsw i32 %i.cb, %spec.select.i.lcssa
  store i32 %i.cc, ptr %.12228.i, align 4, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %.12228.i, i64 4 ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.at
  br i1 %i.ce, label %.lr.ph30.i, label %Abc_NormalizeArrivalTimes.exit, !llvm.loop !251

Abc_NormalizeArrivalTimes.exit:                   ; preds = %.lr.ph30.i, %middle.block98, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.cf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #30
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %Abc_Clock.exit76, label %bb.k

bb.k:                                             ; preds = %Abc_NormalizeArrivalTimes.exit
  %i.ch = load i64, ptr %5, align 8, !tbaa !52
  %i.ci = mul nsw i64 %i.ch, 1000000
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !53
  %i.cl = sdiv i64 %i.ck, 1000
  %i.cm = add nsw i64 %i.cl, %i.ci
  br label %Abc_Clock.exit76

Abc_Clock.exit76:                                 ; preds = %Abc_NormalizeArrivalTimes.exit, %bb.k
  %.0.i75 = phi i64 [ %i.cm, %bb.k ], [ -1, %Abc_NormalizeArrivalTimes.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cn = add i64 %.0.i75, %.0.i.neg81
  %i.co = load ptr, ptr @s_pSesStore, align 8, !tbaa !128
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8872 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !138
  %i.cr = add nsw i64 %i.cn, %i.cq
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.e, %bb.f, %Abc_Clock.exit76
  %.067 = phi ptr [ null, %Abc_Clock.exit76 ], [ %i.x, %bb.f ], [ %i.w, %bb.e ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %.067
}

declare ptr @Abc_NtkCreateNodeConst1(ptr noundef) local_unnamed_addr #9

declare ptr @Abc_NtkCreateNodeConst0(ptr noundef) local_unnamed_addr #9

declare ptr @Abc_NtkCreateNodeInv(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @Abc_NtkCreateNodeBuf(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @Abc_SopFromTruthBin(ptr noundef) local_unnamed_addr #9

declare ptr @Abc_SopRegister(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @Abc_ExactStoreTest(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 1, i32 noundef 1) #30 ; 7 uses
  %i.b = tail call ptr @Extra_UtilStrsav(ptr noundef nonnull @.str.45) #30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !72
  %i.d = tail call ptr @Abc_NodeGetFakeNames(i32 noundef 4) #30 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76   ; 7 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !77
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %Vec_PtrPush.exit

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %i.h, 16
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 128) #29
  br label %Vec_PtrGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  store ptr %i.p, ptr %i.l, align 8, !tbaa !78
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i32 %i.h, 1073741823
  %i.r = shl nuw nsw i32 %i.h, 1
  %spec.select.i = select i1 %i.q, i32 %i.r, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.h, %spec.select.i
  br i1 %.not.i10.i, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.t, null
end_hunk_3
