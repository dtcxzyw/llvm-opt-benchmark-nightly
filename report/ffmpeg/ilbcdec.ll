Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ilbcdec?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@av_channel_layout_uninit
declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -32748, 32788) i32 @xcorr_coeff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef signext range(i16 60, 81) %2, i16 noundef signext range(i16 80, 101) %3) unnamed_addr #5 {
vector.ph:
  %i.a = zext nneg i16 %3 to i32                  ; 2 uses
  %i.b = sub nsw i32 0, %i.a
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = add nsw i16 %2, -1
  %i.f = add nuw nsw i16 %i.e, %3
  %wide.trip.count.i = zext nneg i16 %i.f to i64  ; 3 uses
  %n.vec = and i64 %wide.trip.count.i, 32760      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !39
  %wide.load3 = load <4 x i16>, ptr %i.h, align 2, !tbaa !39
  %i.i = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load, i1 false)
  %i.j = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load3, i1 false)
  %i.k = zext <4 x i16> %i.i to <4 x i32>
  %i.l = zext <4 x i16> %i.j to <4 x i32>
  %i.m = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.k) ; 2 uses
  %i.n = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi2, <4 x i32> %i.l) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.m, <4 x i32> %i.n)
  %i.p = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %max_abs_value_w16.exit, label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %n.vec, %middle.block ] ; 2 uses
  %.025.i = phi i32 [ %.1.i, %.preheader.i ], [ %i.p, %middle.block ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39
  %i.s = tail call i16 @llvm.abs.i16(i16 %i.r, i1 false)
  %i.t = zext i16 %i.s to i32
  %.1.i = tail call i32 @llvm.umax.i32(i32 %.025.i, i32 %i.t) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %max_abs_value_w16.exit, label %.preheader.i, !llvm.loop !90

max_abs_value_w16.exit:                           ; preds = %.preheader.i, %middle.block
  %.1.i.lcssa = phi i32 [ %i.p, %middle.block ], [ %.1.i, %.preheader.i ]
  %i.u = icmp ugt i32 %.1.i.lcssa, 5000
  %.084 = select i1 %i.u, i32 2, i32 0            ; 5 uses
  %wide.trip.count.i111 = zext nneg i16 %2 to i64 ; 7 uses
  %n.vec6 = and i64 %wide.trip.count.i111, 124    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.084, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %max_abs_value_w16.exit
  %index8 = phi i64 [ 0, %max_abs_value_w16.exit ], [ %index.next13, %vector.body7 ] ; 2 uses
  %vec.phi9 = phi <2 x i64> [ zeroinitializer, %max_abs_value_w16.exit ], [ %i.af, %vector.body7 ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %max_abs_value_w16.exit ], [ %i.ag, %vector.body7 ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %wide.load11 = load <2 x i16>, ptr %i.v, align 2, !tbaa !39
  %wide.load12 = load <2 x i16>, ptr %i.w, align 2, !tbaa !39
  %i.x = sext <2 x i16> %wide.load11 to <2 x i32> ; 2 uses
  %i.y = sext <2 x i16> %wide.load12 to <2 x i32> ; 2 uses
  %i.z = mul nsw <2 x i32> %i.x, %i.x
  %i.aa = mul nsw <2 x i32> %i.y, %i.y
  %i.ab = lshr <2 x i32> %i.z, %broadcast.splat
  %i.ac = lshr <2 x i32> %i.aa, %broadcast.splat
  %i.ad = zext nneg <2 x i32> %i.ab to <2 x i64>
  %i.ae = zext nneg <2 x i32> %i.ac to <2 x i64>
  %i.af = add <2 x i64> %vec.phi9, %i.ad          ; 2 uses
  %i.ag = add <2 x i64> %vec.phi10, %i.ae         ; 2 uses
  %index.next13 = add nuw i64 %index8, 4          ; 2 uses
  %i.ah = icmp eq i64 %index.next13, %n.vec6
  br i1 %i.ah, label %middle.block14, label %vector.body7, !llvm.loop !91

middle.block14:                                   ; preds = %vector.body7
  %bin.rdx = add <2 x i64> %i.ag, %i.af
  %i.ai = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n15 = icmp eq i64 %n.vec6, %wide.trip.count.i111
  br i1 %cmp.n15, label %scale_dot_product.exit, label %scalar.ph4

scalar.ph4:                                       ; preds = %middle.block14, %scalar.ph4
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %scalar.ph4 ], [ %n.vec6, %middle.block14 ] ; 2 uses
  %.0910.i = phi i64 [ %i.ap, %scalar.ph4 ], [ %i.ai, %middle.block14 ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i112
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !39
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.al
  %i.an = lshr i32 %i.am, %.084
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw nsw i64 %.0910.i, %i.ao         ; 2 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i111
  br i1 %exitcond.not.i114, label %scale_dot_product.exit, label %scalar.ph4, !llvm.loop !92

scale_dot_product.exit:                           ; preds = %scalar.ph4, %middle.block14
  %.lcssa1 = phi i64 [ %i.ai, %middle.block14 ], [ %i.ap, %scalar.ph4 ]
  %i.aq = getelementptr [2 x i8], ptr %1, i64 %wide.trip.count.i111
  %i.ar = tail call i64 @llvm.smin.i64(i64 %.lcssa1, i64 2147483647)
  %.0.i.i = trunc nuw nsw i64 %i.ar to i32
  %n.vec18 = and i64 %wide.trip.count.i111, 124   ; 3 uses
  %broadcast.splatinsert19 = insertelement <2 x i32> poison, i32 %.084, i64 0
  %broadcast.splat20 = shufflevector <2 x i32> %broadcast.splatinsert19, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n32 = icmp eq i64 %n.vec18, %wide.trip.count.i111
  br label %vector.ph17

vector.ph17:                                      ; preds = %scale_dot_product.exit, %bb.e
  %indvars.iv = phi i64 [ 0, %scale_dot_product.exit ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %1, %scale_dot_product.exit ], [ %.191137, %bb.e ]
  %.pn138 = phi ptr [ %i.aq, %scale_dot_product.exit ], [ %.189136, %bb.e ]
  %.0135 = phi i32 [ 0, %scale_dot_product.exit ], [ %i.dp, %bb.e ] ; 2 uses
  %.087134 = phi i16 [ -500, %scale_dot_product.exit ], [ %.1, %bb.e ] ; 3 uses
  %.092133 = phi i16 [ 32767, %scale_dot_product.exit ], [ %.193, %bb.e ] ; 3 uses
  %.094132 = phi i32 [ %.0.i.i, %scale_dot_product.exit ], [ %i.do, %bb.e ] ; 6 uses
  %.095131 = phi i16 [ 0, %scale_dot_product.exit ], [ %.196, %bb.e ] ; 4 uses
  %.099129 = phi i16 [ 0, %scale_dot_product.exit ], [ %.1100, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph17
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next29, %vector.body21 ] ; 3 uses
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph17 ], [ %i.bh, %vector.body21 ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph17 ], [ %i.bi, %vector.body21 ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index22 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %wide.load25 = load <2 x i16>, ptr %i.at, align 2, !tbaa !39
  %wide.load26 = load <2 x i16>, ptr %i.au, align 2, !tbaa !39
  %i.av = sext <2 x i16> %wide.load25 to <2 x i32>
  %i.aw = sext <2 x i16> %wide.load26 to <2 x i32>
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %index22 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %wide.load27 = load <2 x i16>, ptr %i.ax, align 2, !tbaa !39
  %wide.load28 = load <2 x i16>, ptr %i.ay, align 2, !tbaa !39
  %i.az = sext <2 x i16> %wide.load27 to <2 x i32>
  %i.ba = sext <2 x i16> %wide.load28 to <2 x i32>
  %i.bb = mul nsw <2 x i32> %i.az, %i.av
  %i.bc = mul nsw <2 x i32> %i.ba, %i.aw
  %i.bd = ashr <2 x i32> %i.bb, %broadcast.splat20
  %i.be = ashr <2 x i32> %i.bc, %broadcast.splat20
  %i.bf = sext <2 x i32> %i.bd to <2 x i64>
  %i.bg = sext <2 x i32> %i.be to <2 x i64>
  %i.bh = add <2 x i64> %vec.phi23, %i.bf         ; 2 uses
  %i.bi = add <2 x i64> %vec.phi24, %i.bg         ; 2 uses
  %index.next29 = add nuw i64 %index22, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next29, %n.vec18
  br i1 %i.bj, label %middle.block30, label %vector.body21, !llvm.loop !93

middle.block30:                                   ; preds = %vector.body21
  %bin.rdx31 = add <2 x i64> %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx31) ; 2 uses
  br i1 %cmp.n32, label %scale_dot_product.exit121, label %scalar.ph16

scalar.ph16:                                      ; preds = %middle.block30, %scalar.ph16
  %indvars.iv.i116 = phi i64 [ %indvars.iv.next.i118, %scalar.ph16 ], [ %n.vec18, %middle.block30 ] ; 3 uses
  %.0910.i117 = phi i64 [ %i.bu, %scalar.ph16 ], [ %i.bk, %middle.block30 ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i116
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !39
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.i116
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39
  %i.bq = sext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.bq, %i.bn
  %i.bs = ashr i32 %i.br, %.084
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add nsw i64 %.0910.i117, %i.bt          ; 2 uses
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i119 = icmp eq i64 %indvars.iv.next.i118, %wide.trip.count.i111
  br i1 %exitcond.not.i119, label %scale_dot_product.exit121, label %scalar.ph16, !llvm.loop !94

scale_dot_product.exit121:                        ; preds = %scalar.ph16, %middle.block30
  %.lcssa = phi i64 [ %i.bk, %middle.block30 ], [ %i.bu, %scalar.ph16 ] ; 3 uses
  %.189136 = getelementptr i8, ptr %.pn138, i64 -2 ; 2 uses
  %.191137 = getelementptr inbounds i8, ptr %.pn, i64 -2 ; 2 uses
  %i.bv = icmp sgt i32 %.094132, 0
  %i.bw = icmp sgt i64 %.lcssa, 0
  %or.cond = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %scale_dot_product.exit121
  %i.bx = tail call i64 @llvm.umin.i64(i64 %.lcssa, i64 2147483647)
  %.0.i.i120 = trunc nuw nsw i64 %i.bx to i32     ; 3 uses
  %i.by = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, -2147483648) %.0.i.i120, i1 true)
  %i.bz = trunc nuw nsw i32 %i.by to i16
  %4 = add nsw i16 %i.bz, -16                     ; 2 uses
  %5 = sext i16 %4 to i32                         ; 2 uses
  %6 = icmp samesign ult i64 %.lcssa, 65536
  %i.ca = shl i32 %.0.i.i120, %5
  %i.cb = sub nsw i32 0, %5
  %i.cc = lshr i32 %.0.i.i120, %i.cb
  %7 = select i1 %6, i32 %i.ca, i32 %i.cc
  %8 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, -2147483648) %.094132, i1 true)
  %9 = trunc nuw nsw i32 %8 to i16
  %i.cd = add nsw i16 %9, -16                     ; 2 uses
  %i.ce = sext i16 %i.cd to i32                   ; 2 uses
  %10 = icmp samesign ult i32 %.094132, 65536
  %i.cf = shl i32 %.094132, %i.ce
  %i.cg = sub nsw i32 0, %i.ce
  %i.ch = lshr i32 %.094132, %i.cg
  %i.ci = select i1 %10, i32 %i.cf, i32 %i.ch     ; 3 uses
  %i.cj = trunc i32 %i.ci to i16
  %sext = shl i32 %7, 16
  %i.ck = ashr exact i32 %sext, 16                ; 2 uses
  %i.cl = mul nsw i32 %i.ck, %i.ck
  %i.cm = lshr i32 %i.cl, 16                      ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i16
  %i.co = shl nsw i16 %4, 1
  %i.cp = sub nsw i16 %i.cd, %i.co                ; 2 uses
  %i.cq = sub nsw i16 %i.cp, %.087134             ; 2 uses
  %i.cr = tail call i16 @llvm.smax.i16(i16 %i.cq, i16 -31)
  %i.cs = tail call i16 @llvm.smin.i16(i16 %i.cr, i16 31)
  %i.ct = sext i16 %i.cs to i32                   ; 2 uses
  %i.cu = icmp slt i16 %i.cq, 0
  %i.cv = sext i16 %.092133 to i32
  %i.cw = mul nsw i32 %i.cm, %i.cv                ; 2 uses
  br i1 %i.cu, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.cx = sub nsw i32 0, %i.ct
  %i.cy = ashr i32 %i.cw, %i.cx
  %i.cz = sext i16 %.095131 to i32
  %sext109 = shl i32 %i.ci, 16
  %i.da = ashr exact i32 %sext109, 16
  %i.db = mul nsw i32 %i.da, %i.cz
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.dc = sext i16 %.095131 to i32
  %sext108 = shl i32 %i.ci, 16
  %i.dd = ashr exact i32 %sext108, 16
  %i.de = mul nsw i32 %i.dd, %i.dc
  %i.df = ashr i32 %i.de, %i.ct
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.086 = phi i32 [ %i.cy, %bb.a ], [ %i.cw, %bb.b ]
  %.085 = phi i32 [ %i.db, %bb.a ], [ %i.df, %bb.b ]
  %i.dg = icmp sgt i32 %.086, %.085
  br i1 %i.dg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dh = trunc i32 %.0135 to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %scale_dot_product.exit121
  %.1100 = phi i16 [ %i.dh, %bb.d ], [ %.099129, %bb.c ], [ %.099129, %scale_dot_product.exit121 ] ; 2 uses
  %.196 = phi i16 [ %i.cn, %bb.d ], [ %.095131, %bb.c ], [ %.095131, %scale_dot_product.exit121 ]
  %.193 = phi i16 [ %i.cj, %bb.d ], [ %.092133, %bb.c ], [ %.092133, %scale_dot_product.exit121 ]
  %.1 = phi i16 [ %i.cp, %bb.d ], [ %.087134, %bb.c ], [ %.087134, %scale_dot_product.exit121 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.di = load i16, ptr %.189136, align 2, !tbaa !39
  %i.dj = sext i16 %i.di to i32                   ; 2 uses
  %i.dk = load i16, ptr %.191137, align 2, !tbaa !39
  %i.dl = sext i16 %i.dk to i32                   ; 2 uses
  %add = add nsw i32 %i.dl, %i.dj
  %sub = sub nsw i32 %i.dj, %i.dl
  %i.dm = mul nsw i32 %add, %sub
  %i.dn = ashr i32 %i.dm, %.084
  %i.do = sub i32 %.094132, %i.dn
  %i.dp = add nuw nsw i32 %.0135, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %i.a
  br i1 %exitcond.not, label %bb.f, label %vector.ph17, !llvm.loop !95

bb.f:                                             ; preds = %bb.e
  %i.dq = sext i16 %.1100 to i32
  %i.dr = add nsw i32 %i.dq, 20
  ret i32 %i.dr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lsp_interpolate2polydec(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 22)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -32768, 32768) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x [6 x i32]], align 16         ; 9 uses
  %i.b = alloca [10 x i16], align 16              ; 7 uses
  %i.c = sub nsw i32 16384, %3                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i16, ptr %i.d, align 2, !tbaa !39
  %i.f = sext i16 %i.e to i32
  %i.g = mul nsw i32 %3, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !39
  %i.j = sext i16 %i.i to i32
  %i.k = mul nsw i32 %i.c, %i.j
  %i.l = add nsw i32 %i.g, 8192
  %i.m = add i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.o = load i16, ptr %i.n, align 2, !tbaa !39
  %i.p = sext i16 %i.o to i32
  %i.q = mul nsw i32 %3, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.s = load i16, ptr %i.r, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = mul nsw i32 %i.c, %i.t
  %i.v = add nsw i32 %i.q, 8192
  %i.w = add i32 %i.v, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.y = load <8 x i16>, ptr %1, align 2, !tbaa !39
  %i.z = sext <8 x i16> %i.y to <8 x i32>
  %i.aa = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.ab = shufflevector <8 x i32> %i.aa, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ac = mul nsw <8 x i32> %i.ab, %i.z
  %i.ad = load <8 x i16>, ptr %2, align 2, !tbaa !39
  %i.ae = sext <8 x i16> %i.ad to <8 x i32>
  %i.af = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %i.ag = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ah = mul nsw <8 x i32> %i.ag, %i.ae
  %i.ai = add nsw <8 x i32> %i.ac, splat (i32 8192)
  %i.aj = add <8 x i32> %i.ai, %i.ah
  %i.ak = shl <8 x i32> %i.aj, splat (i32 2)
  %i.al = ashr <8 x i32> %i.ak, splat (i32 16)
  %i.am = mul nsw <8 x i32> %i.al, splat (i32 41722) ; 5 uses
  %i.an = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ao = ashr <2 x i32> %i.an, splat (i32 24)
  %i.ap = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ao, <2 x i32> splat (i32 63)) ; 2 uses
  %i.aq = extractelement <2 x i32> %i.ap, i64 0
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !39
  %i.au = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.ar
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = extractelement <2 x i32> %i.ap, i64 1
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !39
  %i.ba = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.ax
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !39
  %i.bc = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bd = ashr <2 x i32> %i.bc, splat (i32 24)
  %i.be = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bd, <2 x i32> splat (i32 63)) ; 2 uses
  %i.bf = extractelement <2 x i32> %i.be, i64 0
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !39
  %i.bj = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bg
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !39
  %i.bl = extractelement <2 x i32> %i.be, i64 1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !39
  %i.bp = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bm
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !39
  %i.br = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.bs = ashr <2 x i32> %i.br, splat (i32 24)
  %i.bt = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bs, <2 x i32> splat (i32 63)) ; 2 uses
  %i.bu = extractelement <2 x i32> %i.bt, i64 0
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !39
  %i.by = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !39
  %i.ca = extractelement <2 x i32> %i.bt, i64 1
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !39
  %i.ce = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cb
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !39
  %i.cg = lshr <8 x i32> %i.am, splat (i32 16)
  %i.ch = and <8 x i32> %i.cg, splat (i32 255)
  %i.ci = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  %i.cj = ashr <2 x i32> %i.ci, splat (i32 24)
  %i.ck = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cj, <2 x i32> splat (i32 63)) ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !39
  %i.cp = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !39
  %i.cr = extractelement <2 x i32> %i.ck, i64 1
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !39
  %i.cv = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.az, i64 1
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.bi, i64 2
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.bo, i64 3
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.bx, i64 4
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cd, i64 5
  %i.db = insertelement <8 x i16> %i.da, i16 %i.co, i64 6
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 7
  %i.dd = sext <8 x i16> %i.dc to <8 x i32>
  %i.de = mul nsw <8 x i32> %i.ch, %i.dd
  %i.df = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cs
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !39
  %i.dh = lshr <8 x i32> %i.de, splat (i32 12)
  %i.di = trunc <8 x i32> %i.dh to <8 x i16>
  %i.dj = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.bb, i64 1
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.bk, i64 2
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.bq, i64 3
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.bz, i64 4
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.cf, i64 5
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.cq, i64 6
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.dg, i64 7
  %i.dr = add <8 x i16> %i.dq, %i.di
  store <8 x i16> %i.dr, ptr %i.b, align 16, !tbaa !39
  %i.ds = shl i32 %i.m, 2
  %i.dt = ashr i32 %i.ds, 16
  %i.du = mul nsw i32 %i.dt, 41722                ; 2 uses
  %i.dv = lshr i32 %i.du, 16
  %i.dw = ashr i32 %i.du, 24
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 63)
  %i.dy = and i32 %i.dv, 255
  %i.dz = sext i32 %i.dx to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !39
  %i.ec = sext i16 %i.eb to i32
  %i.ed = mul nsw i32 %i.dy, %i.ec
end_hunk_0
