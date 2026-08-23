Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ilbcdec?download=true
inline.NumInlined: 150
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ilbc_decode_frame:bb.a
  %i.cnz = sext i16 %i.cnq to i32
  %i.coa = mul nsw i32 %i.cnz, 7918
  %i.cob = sext i16 %i.cnp to i32
  %i.coc = mul nsw i32 %i.cob, -3833
  %i.cod = add nsw i32 %i.coa, %i.coc
  %i.coe = add nsw i32 %i.cod, %i.cny
  %i.cof = shl nsw i32 %i.coe, 1
  %i.cog = getelementptr inbounds nuw [2 x i8], ptr %i.cnf, i64 %indvars.iv.i122 ; 3 uses
  %i.coh = load i16, ptr %i.cog, align 2, !tbaa !46
  %i.coi = sext i16 %i.coh to i32
  %i.coj = load i16, ptr %i.cnh, align 4, !tbaa !46 ; 2 uses
  %i.cok = sext i16 %i.coj to i32
  %i.col = mul nsw i32 %i.cok, -7699
  %i.com = load i16, ptr %i.cno, align 2, !tbaa !46
  %i.con = sext i16 %i.com to i32
  %reass.add.i123 = add nsw i32 %i.con, %i.coi
  %reass.mul.i = mul nsw i32 %reass.add.i123, 3849
  %i.coo = add nsw i32 %i.cof, %i.col
  %i.cop = add nsw i32 %i.coo, %reass.mul.i       ; 5 uses
  store i16 %i.coj, ptr %i.cno, align 2, !tbaa !46
  %i.coq = load i16, ptr %i.cog, align 2, !tbaa !46
  store i16 %i.coq, ptr %i.cnh, align 4, !tbaa !46
  %i.cor = add nsw i32 %i.cop, 1024
  %i.cos = add nsw i32 %i.cop, -67107840
  %i.cot = icmp ult i32 %i.cos, -134217728
  %i.cou = icmp sgt i32 %i.cop, -1025
  %i.cov = select i1 %i.cou, i32 67106816, i32 67108864
  %.0.i.i124 = select i1 %i.cot, i32 %i.cov, i32 %i.cor
  %i.cow = lshr i32 %.0.i.i124, 11
  %i.cox = trunc i32 %i.cow to i16
  store i16 %i.cox, ptr %i.cog, align 2, !tbaa !46
  %i.coy = load i16, ptr %i.cng, align 8, !tbaa !46 ; 2 uses
  store i16 %i.coy, ptr %i.cnn, align 4, !tbaa !46
  %i.coz = load i16, ptr %i.cnl, align 2, !tbaa !46 ; 2 uses
  store i16 %i.coz, ptr %i.cnm, align 2, !tbaa !46
  %i.cpa = icmp sgt i32 %i.cop, 268435455
  %i.cpb = tail call i32 @llvm.smax.i32(i32 %i.cop, i32 -268435456)
  %spec.select.i = shl i32 %i.cpb, 3
  %.045.i = select i1 %i.cpa, i32 2147483647, i32 %spec.select.i ; 2 uses
  %i.cpc = lshr i32 %.045.i, 16
  %i.cpd = trunc nuw i32 %i.cpc to i16            ; 2 uses
  store i16 %i.cpd, ptr %i.cng, align 8, !tbaa !46
  %i.cpe = trunc i32 %.045.i to i16
  %i.cpf = lshr i16 %i.cpe, 1                     ; 2 uses
  store i16 %i.cpf, ptr %i.cnl, align 2, !tbaa !46
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i126 = icmp eq i64 %indvars.iv.next.i125, %wide.trip.count.i120
  br i1 %exitcond.not.i126, label %hp_output.exit, label %bb.aw, !llvm.loop !87

hp_output.exit:                                   ; preds = %bb.aw, %bb.av
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.cph = getelementptr inbounds nuw i8, ptr %i.e, i64 476
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.e, i64 234
  %i.cpj = load i16, ptr %i.cpi, align 2, !tbaa !39
  %i.cpk = sext i16 %i.cpj to i64
  %i.cpl = mul nsw i64 %i.cpk, 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cpg, ptr nonnull align 4 %i.cph, i64 %i.cpl, i1 false)
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %spec.select96 = zext i1 %.not94 to i32
  store i32 %spec.select96, ptr %i.cpm, align 4, !tbaa !88
  store i32 1, ptr %2, align 4, !tbaa !37
  %i.cpn = load i32, ptr %i.m, align 8, !tbaa !45
  br label %unpack_frame.exit.thread

unpack_frame.exit.thread:                         ; preds = %bb.a, %unpack_frame.exit, %hp_output.exit
  %.088 = phi i32 [ %i.cpn, %hp_output.exit ], [ -1094995529, %bb.a ], [ %i.bbv, %unpack_frame.exit ]
  ret i32 %.088
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

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
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !46
  %wide.load3 = load <4 x i16>, ptr %i.h, align 2, !tbaa !46
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
  %i.r = load i16, ptr %i.q, align 2, !tbaa !46
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
  %wide.trip.count.i110 = zext nneg i16 %2 to i64 ; 7 uses
  %n.vec6 = and i64 %wide.trip.count.i110, 124    ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.084, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %max_abs_value_w16.exit
  %index8 = phi i64 [ 0, %max_abs_value_w16.exit ], [ %index.next13, %vector.body7 ] ; 2 uses
  %vec.phi9 = phi <2 x i64> [ zeroinitializer, %max_abs_value_w16.exit ], [ %i.af, %vector.body7 ]
  %vec.phi10 = phi <2 x i64> [ zeroinitializer, %max_abs_value_w16.exit ], [ %i.ag, %vector.body7 ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %wide.load11 = load <2 x i16>, ptr %i.v, align 2, !tbaa !46
  %wide.load12 = load <2 x i16>, ptr %i.w, align 2, !tbaa !46
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
  %cmp.n15 = icmp eq i64 %n.vec6, %wide.trip.count.i110
  br i1 %cmp.n15, label %scale_dot_product.exit, label %scalar.ph4

scalar.ph4:                                       ; preds = %middle.block14, %scalar.ph4
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %scalar.ph4 ], [ %n.vec6, %middle.block14 ] ; 2 uses
  %.0910.i = phi i64 [ %i.ap, %scalar.ph4 ], [ %i.ai, %middle.block14 ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i111
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !46
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.al
  %i.an = lshr i32 %i.am, %.084
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw nsw i64 %.0910.i, %i.ao         ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i110
  br i1 %exitcond.not.i113, label %scale_dot_product.exit, label %scalar.ph4, !llvm.loop !92

scale_dot_product.exit:                           ; preds = %scalar.ph4, %middle.block14
  %.lcssa1 = phi i64 [ %i.ai, %middle.block14 ], [ %i.ap, %scalar.ph4 ]
  %i.aq = add nuw nsw i64 %wide.trip.count.i110, 4294967295
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar
  %i.at = tail call i64 @llvm.smin.i64(i64 %.lcssa1, i64 2147483647)
  %.0.i.i = trunc nuw nsw i64 %i.at to i32
  %n.vec18 = and i64 %wide.trip.count.i110, 124   ; 3 uses
  %broadcast.splatinsert19 = insertelement <2 x i32> poison, i32 %.084, i64 0
  %broadcast.splat20 = shufflevector <2 x i32> %broadcast.splatinsert19, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n32 = icmp eq i64 %n.vec18, %wide.trip.count.i110
  br label %vector.ph17

vector.ph17:                                      ; preds = %scale_dot_product.exit, %bb.e
  %indvars.iv = phi i64 [ 0, %scale_dot_product.exit ], [ -1, %bb.e ]
  %.pn = phi ptr [ %1, %scale_dot_product.exit ], [ %.191135, %bb.e ]
  %.0134 = phi i32 [ 0, %scale_dot_product.exit ], [ %i.eb, %bb.e ] ; 2 uses
  %.087133 = phi i16 [ -500, %scale_dot_product.exit ], [ %.1, %bb.e ] ; 3 uses
  %.189132 = phi ptr [ %i.as, %scale_dot_product.exit ], [ %i.ea, %bb.e ] ; 2 uses
  %.092131 = phi i16 [ 32767, %scale_dot_product.exit ], [ %.193, %bb.e ] ; 3 uses
  %.094130 = phi i32 [ %.0.i.i, %scale_dot_product.exit ], [ %i.dz, %bb.e ] ; 6 uses
  %.095129 = phi i16 [ 0, %scale_dot_product.exit ], [ %.196, %bb.e ] ; 4 uses
  %.099127 = phi i16 [ 0, %scale_dot_product.exit ], [ %.1100, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph17
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next29, %vector.body21 ] ; 3 uses
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph17 ], [ %i.bj, %vector.body21 ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph17 ], [ %i.bk, %vector.body21 ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index22 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %wide.load25 = load <2 x i16>, ptr %i.av, align 2, !tbaa !46
  %wide.load26 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !46
  %i.ax = sext <2 x i16> %wide.load25 to <2 x i32>
  %i.ay = sext <2 x i16> %wide.load26 to <2 x i32>
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %wide.load27 = load <2 x i16>, ptr %i.az, align 2, !tbaa !46
  %wide.load28 = load <2 x i16>, ptr %i.ba, align 2, !tbaa !46
  %i.bb = sext <2 x i16> %wide.load27 to <2 x i32>
  %i.bc = sext <2 x i16> %wide.load28 to <2 x i32>
  %i.bd = mul nsw <2 x i32> %i.bb, %i.ax
  %i.be = mul nsw <2 x i32> %i.bc, %i.ay
  %i.bf = ashr <2 x i32> %i.bd, %broadcast.splat20
  %i.bg = ashr <2 x i32> %i.be, %broadcast.splat20
  %i.bh = sext <2 x i32> %i.bf to <2 x i64>
  %i.bi = sext <2 x i32> %i.bg to <2 x i64>
  %i.bj = add <2 x i64> %vec.phi23, %i.bh         ; 2 uses
  %i.bk = add <2 x i64> %vec.phi24, %i.bi         ; 2 uses
  %index.next29 = add nuw i64 %index22, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next29, %n.vec18
  br i1 %i.bl, label %middle.block30, label %vector.body21, !llvm.loop !93

middle.block30:                                   ; preds = %vector.body21
  %bin.rdx31 = add <2 x i64> %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx31) ; 2 uses
  br i1 %cmp.n32, label %scale_dot_product.exit120, label %scalar.ph16

scalar.ph16:                                      ; preds = %middle.block30, %scalar.ph16
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i117, %scalar.ph16 ], [ %n.vec18, %middle.block30 ] ; 3 uses
  %.0910.i116 = phi i64 [ %i.bw, %scalar.ph16 ], [ %i.bm, %middle.block30 ]
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i115
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !46
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i115
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !46
  %i.bs = sext i16 %i.br to i32
  %i.bt = mul nsw i32 %i.bs, %i.bp
  %i.bu = ashr i32 %i.bt, %.084
  %i.bv = sext i32 %i.bu to i64
  %i.bw = add nsw i64 %.0910.i116, %i.bv          ; 2 uses
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i110
  br i1 %exitcond.not.i118, label %scale_dot_product.exit120, label %scalar.ph16, !llvm.loop !94

scale_dot_product.exit120:                        ; preds = %scalar.ph16, %middle.block30
  %.lcssa = phi i64 [ %i.bm, %middle.block30 ], [ %i.bw, %scalar.ph16 ] ; 3 uses
  %.191135 = getelementptr inbounds i8, ptr %.pn, i64 -2 ; 2 uses
  %i.bx = icmp sgt i32 %.094130, 0
  %i.by = icmp sgt i64 %.lcssa, 0
  %or.cond = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %scale_dot_product.exit120
  %i.bz = tail call i64 @llvm.umin.i64(i64 %.lcssa, i64 2147483647)
  %.0.i.i119 = trunc nuw nsw i64 %i.bz to i32     ; 3 uses
  %i.ca = lshr i32 %.0.i.i119, 1
  %i.cb = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 false)
  %i.cc = trunc nuw nsw i32 %i.cb to i16
  %i.cd = lshr i32 %.094130, 1
  %i.ce = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 false)
  %i.cf = trunc nuw nsw i32 %i.ce to i16
  %i.cg = add nsw i16 %i.cc, -17                  ; 2 uses
  %i.ch = sext i16 %i.cg to i32                   ; 2 uses
  %i.ci = shl i32 %.0.i.i119, %i.ch
  %i.cj = sub nsw i32 0, %i.ch
  %i.ck = lshr i32 %.0.i.i119, %i.cj
  %i.cl = icmp samesign ugt i64 %.lcssa, 65535
  %i.cm = select i1 %i.cl, i32 %i.ck, i32 %i.ci
  %i.cn = add nsw i16 %i.cf, -17                  ; 2 uses
  %i.co = sext i16 %i.cn to i32                   ; 2 uses
  %i.cp = shl i32 %.094130, %i.co
  %i.cq = sub nsw i32 0, %i.co
  %i.cr = lshr i32 %.094130, %i.cq
  %i.cs = icmp samesign ugt i32 %.094130, 65535
  %i.ct = select i1 %i.cs, i32 %i.cr, i32 %i.cp   ; 3 uses
  %i.cu = trunc i32 %i.ct to i16
  %sext = shl i32 %i.cm, 16
  %i.cv = ashr exact i32 %sext, 16                ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cv
  %i.cx = lshr i32 %i.cw, 16                      ; 2 uses
  %i.cy = trunc nuw nsw i32 %i.cx to i16
  %i.cz = shl nsw i16 %i.cg, 1
  %i.da = sub nsw i16 %i.cn, %i.cz                ; 2 uses
  %i.db = sub i16 %i.da, %.087133                 ; 2 uses
  %i.dc = tail call i16 @llvm.smax.i16(i16 %i.db, i16 -31)
  %i.dd = tail call i16 @llvm.smin.i16(i16 %i.dc, i16 31)
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = icmp slt i16 %i.db, 0
  %i.dg = sext i16 %.092131 to i32
  %i.dh = mul nsw i32 %i.cx, %i.dg                ; 2 uses
  br i1 %i.df, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.di = sub nsw i32 0, %i.de
  %i.dj = ashr i32 %i.dh, %i.di
  %i.dk = sext i16 %.095129 to i32
  %sext109 = shl i32 %i.ct, 16
  %i.dl = ashr exact i32 %sext109, 16
  %i.dm = mul nsw i32 %i.dl, %i.dk
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.dn = sext i16 %.095129 to i32
  %sext108 = shl i32 %i.ct, 16
  %i.do = ashr exact i32 %sext108, 16
  %i.dp = mul nsw i32 %i.do, %i.dn
  %i.dq = ashr i32 %i.dp, %i.de
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.086 = phi i32 [ %i.dj, %bb.a ], [ %i.dh, %bb.b ]
  %.085 = phi i32 [ %i.dm, %bb.a ], [ %i.dq, %bb.b ]
  %i.dr = icmp sgt i32 %.086, %.085
  br i1 %i.dr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ds = trunc i32 %.0134 to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %scale_dot_product.exit120
  %.1100 = phi i16 [ %i.ds, %bb.d ], [ %.099127, %bb.c ], [ %.099127, %scale_dot_product.exit120 ] ; 2 uses
  %.196 = phi i16 [ %i.cy, %bb.d ], [ %.095129, %bb.c ], [ %.095129, %scale_dot_product.exit120 ]
  %.193 = phi i16 [ %i.cu, %bb.d ], [ %.092131, %bb.c ], [ %.092131, %scale_dot_product.exit120 ]
  %.1 = phi i16 [ %i.da, %bb.d ], [ %.087133, %bb.c ], [ %.087133, %scale_dot_product.exit120 ]
  %i.dt = load i16, ptr %.189132, align 2, !tbaa !46
  %i.du = sext i16 %i.dt to i32                   ; 2 uses
  %i.dv = load i16, ptr %.191135, align 2, !tbaa !46
  %i.dw = sext i16 %i.dv to i32                   ; 2 uses
  %add = add nsw i32 %i.dw, %i.du
  %sub = sub nsw i32 %i.du, %i.dw
  %i.dx = mul nsw i32 %add, %sub
  %i.dy = ashr i32 %i.dx, %.084
  %i.dz = sub i32 %.094130, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.189132, i64 -2
  %i.eb = add nuw nsw i32 %.0134, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.a
  br i1 %exitcond.not, label %bb.f, label %vector.ph17, !llvm.loop !95

bb.f:                                             ; preds = %bb.e
  %i.ec = sext i16 %.1100 to i32
  %i.ed = add nsw i32 %i.ec, 20
  ret i32 %i.ed
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lsp_interpolate2polydec(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 22)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -32768, 32768) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x [6 x i32]], align 16         ; 9 uses
  %i.b = alloca [10 x i16], align 16              ; 7 uses
  %i.c = sub nsw i32 16384, %3                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i16, ptr %i.d, align 2, !tbaa !46
  %i.f = sext i16 %i.e to i32
  %i.g = mul nsw i32 %3, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !46
  %i.j = sext i16 %i.i to i32
  %i.k = mul nsw i32 %i.c, %i.j
  %i.l = add nsw i32 %i.g, 8192
  %i.m = add i32 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.o = load i16, ptr %i.n, align 2, !tbaa !46
  %i.p = sext i16 %i.o to i32
  %i.q = mul nsw i32 %3, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.s = load i16, ptr %i.r, align 2, !tbaa !46
  %i.t = sext i16 %i.s to i32
  %i.u = mul nsw i32 %i.c, %i.t
  %i.v = add nsw i32 %i.q, 8192
  %i.w = add i32 %i.v, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.y = load <8 x i16>, ptr %1, align 2, !tbaa !46
  %i.z = sext <8 x i16> %i.y to <8 x i32>
  %i.aa = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.ab = shufflevector <8 x i32> %i.aa, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ac = mul nsw <8 x i32> %i.ab, %i.z
  %i.ad = load <8 x i16>, ptr %2, align 2, !tbaa !46
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
  %i.at = load i16, ptr %i.as, align 2, !tbaa !46
  %i.au = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.ar
  %i.av = load i16, ptr %i.au, align 2, !tbaa !46
  %i.aw = extractelement <2 x i32> %i.ap, i64 1
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !46
  %i.ba = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.ax
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !46
  %i.bc = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bd = ashr <2 x i32> %i.bc, splat (i32 24)
  %i.be = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bd, <2 x i32> splat (i32 63)) ; 2 uses
  %i.bf = extractelement <2 x i32> %i.be, i64 0
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !46
  %i.bj = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bg
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !46
  %i.bl = extractelement <2 x i32> %i.be, i64 1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !46
  %i.bp = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bm
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !46
  %i.br = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 4, i32 5>
  %i.bs = ashr <2 x i32> %i.br, splat (i32 24)
  %i.bt = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bs, <2 x i32> splat (i32 63)) ; 2 uses
  %i.bu = extractelement <2 x i32> %i.bt, i64 0
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !46
  %i.by = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.bv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !46
  %i.ca = extractelement <2 x i32> %i.bt, i64 1
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !46
  %i.ce = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cb
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !46
  %i.cg = lshr <8 x i32> %i.am, splat (i32 16)
  %i.ch = and <8 x i32> %i.cg, splat (i32 255)
  %i.ci = shufflevector <8 x i32> %i.am, <8 x i32> poison, <2 x i32> <i32 6, i32 7>
  %i.cj = ashr <2 x i32> %i.ci, splat (i32 24)
  %i.ck = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cj, <2 x i32> splat (i32 63)) ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !46
  %i.cp = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.cm
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !46
  %i.cr = extractelement <2 x i32> %i.ck, i64 1
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !46
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
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !46
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
  store <8 x i16> %i.dr, ptr %i.b, align 16, !tbaa !46
  %i.ds = shl i32 %i.m, 2
  %i.dt = ashr i32 %i.ds, 16
  %i.du = mul nsw i32 %i.dt, 41722                ; 2 uses
  %i.dv = lshr i32 %i.du, 16
  %i.dw = ashr i32 %i.du, 24
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 63)
  %i.dy = and i32 %i.dv, 255
  %i.dz = sext i32 %i.dx to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !46
  %i.ec = sext i16 %i.eb to i32
  %i.ed = mul nsw i32 %i.dy, %i.ec
  %i.ee = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.dz
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !46
  %i.eg = lshr i32 %i.ed, 12
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = add i16 %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.ei, ptr %i.ej, align 16, !tbaa !46
  %i.ek = shl i32 %i.w, 2
  %i.el = ashr i32 %i.ek, 16
  %i.em = mul nsw i32 %i.el, 41722                ; 2 uses
  %i.en = lshr i32 %i.em, 16
  %i.eo = ashr i32 %i.em, 24
  %i.ep = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 63)
  %i.eq = and i32 %i.en, 255
  %i.er = sext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds [2 x i8], ptr @cos_derivative_tbl, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !46
  %i.eu = sext i16 %i.et to i32
  %i.ev = mul nsw i32 %i.eq, %i.eu
  %i.ew = getelementptr inbounds [2 x i8], ptr @cos_tbl, i64 %i.er
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !46
  %i.ey = lshr i32 %i.ev, 12
  %i.ez = trunc i32 %i.ey to i16
  %i.fa = add i16 %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !46
  call fastcc void @get_lsp_poly(ptr noundef %i.b, ptr noundef %i.a)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call fastcc void @get_lsp_poly(ptr noundef %i.x, ptr noundef %i.fc)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fh = load i32, ptr %i.a, align 16, !tbaa !37
  %i.fi = load i32, ptr %i.fc, align 8, !tbaa !37
  store i16 4096, ptr %0, align 2, !tbaa !46
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fm = load <2 x i32>, ptr %i.fe, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@get_lsp_poly:bb.a
  %i.bp = sub i32 %i.bo, %i.bn                    ; 4 uses
  %i.bq = shl nsw i32 %i.ar, 10
  %i.br = sub nsw i32 %i.an, %i.bq                ; 4 uses
  %i.bs = getelementptr i8, ptr %1, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !46
  %i.bv = sext i16 %i.bu to i32                   ; 6 uses
  %factor.op.mul.3 = mul nsw i32 %i.bv, -4        ; 4 uses
  %i.bw = ashr i32 %i.az, 16
  %i.bx = lshr exact i32 %i.az, 1
  %i.by = and i32 %i.bx, 32767
  %i.bz = mul nsw i32 %i.by, %i.bv
  %i.ca = ashr i32 %i.bz, 13
  %i.cb = and i32 %i.ca, -4
  %.reass.3 = mul i32 %i.bw, %factor.op.mul.3
  %.neg41.3 = shl i32 %i.bh, 1
  %i.cc = add i32 %.neg41.3, %.reass.3
  %i.cd = sub i32 %i.cc, %i.cb
  store i32 %i.cd, ptr %i.bs, align 4, !tbaa !37
  %i.ce = ashr i32 %i.bh, 16
  %i.cf = lshr i32 %i.bh, 1
  %i.cg = and i32 %i.cf, 32767
  %i.ch = mul nsw i32 %i.cg, %i.bv
  %i.ci = ashr i32 %i.ch, 13
  %i.cj = and i32 %i.ci, -4
  %.reass.3.1 = mul i32 %i.ce, %factor.op.mul.3
  %.neg41.3.1 = add i32 %i.az, %i.bp
  %i.ck = add i32 %.neg41.3.1, %.reass.3.1
  %i.cl = sub i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.ao, align 4, !tbaa !37
  %i.cm = ashr i32 %i.bp, 16
  %i.cn = lshr i32 %i.bp, 1
  %i.co = and i32 %i.cn, 32767
  %i.cp = mul nsw i32 %i.co, %i.bv
  %i.cq = ashr i32 %i.cp, 13
  %i.cr = and i32 %i.cq, -4
  %.reass.3.2 = mul i32 %i.cm, %factor.op.mul.3
  %.neg41.3.2 = add i32 %i.bh, %i.br
  %i.cs = add i32 %.neg41.3.2, %.reass.3.2
  %i.ct = sub i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.s, align 4, !tbaa !37
  %i.cu = ashr i32 %i.br, 16
  %i.cv = lshr exact i32 %i.br, 1
  %i.cw = and i32 %i.cv, 32256
  %i.cx = mul nsw i32 %i.cw, %i.bv
  %i.cy = ashr i32 %i.cx, 13
  %i.cz = and i32 %i.cy, -4
  %i.da = load i32, ptr %1, align 4, !tbaa !37
  %.reass.3.3 = mul nsw i32 %i.cu, %factor.op.mul.3
  %.neg41.3.3 = add i32 %i.bp, %i.da
  %i.db = add i32 %.neg41.3.3, %.reass.3.3
  %i.dc = sub i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.e, align 4, !tbaa !37
  %i.dd = shl nsw i32 %i.bv, 10
  %i.de = sub nsw i32 %i.br, %i.dd
  store i32 %i.de, ptr %i.d, align 4, !tbaa !37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @construct_vector(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i16 noundef signext range(i16 85, 148) %4, i16 noundef signext %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [40 x i16], align 16              ; 5 uses
  %i.b = alloca [40 x i16], align 16              ; 5 uses
  %i.c = alloca [40 x i16], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i16, ptr %2, align 2, !tbaa !46
  %i.e = sext i16 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr @gain5, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !46
  %i.j = sext i16 %i.g to i32                     ; 3 uses
  %i.k = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %i.j, i1 true) ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 1638
  %sext.i = shl nuw i32 %i.k, 16
  %i.m = ashr exact i32 %sext.i, 16
  %i.n = select i1 %i.l, i32 1638, i32 %i.m
  %i.o = sext i16 %i.i to i64
  %i.p = getelementptr inbounds [2 x i8], ptr @gain4, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !46
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !46
  %i.u = shl nsw i32 %i.r, 2
  %i.v = mul i32 %i.u, %i.n
  %i.w = add i32 %i.v, 32768
  %i.x = ashr i32 %i.w, 16                        ; 3 uses
  %i.y = sext i16 %i.t to i64
  %i.z = getelementptr inbounds [2 x i8], ptr @gain3, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !46
  %i.ab = load i16, ptr %1, align 2, !tbaa !46
  call fastcc void @get_codebook(ptr noundef %i.a, ptr noundef %3, i16 noundef signext %i.ab, i16 noundef signext %4, i16 noundef signext %5)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !46
  call fastcc void @get_codebook(ptr noundef %i.b, ptr noundef %3, i16 noundef signext %i.ad, i16 noundef signext %4, i16 noundef signext %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !46
  call fastcc void @get_codebook(ptr noundef %i.c, ptr noundef %3, i16 noundef signext %i.af, i16 noundef signext %4, i16 noundef signext %5)
  %i.ag = icmp sgt i16 %5, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i16 %5 to i64      ; 3 uses
  %i.ah = sext i16 %i.aa to i32
  %i.ai = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %i.x, i1 true) ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, 1638
  %sext.i30 = shl nuw i32 %i.ai, 16
  %i.ak = ashr exact i32 %sext.i30, 16
  %i.al = select i1 %i.aj, i32 1638, i32 %i.ak
  %factor.op.mul = mul nsw i32 %i.al, %i.ah
  %.reass = shl i32 %factor.op.mul, 2
  %i.am = add i32 %.reass, 32768
  %i.an = ashr i32 %i.am, 16                      ; 2 uses
  %min.iters.check = icmp ult i16 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 32760        ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat34 = shufflevector <8 x i32> %broadcast.splatinsert33, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <8 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat36 = shufflevector <8 x i32> %broadcast.splatinsert35, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ao, align 16, !tbaa !46
  %i.ap = sext <8 x i16> %wide.load to <8 x i32>
  %i.aq = mul nsw <8 x i32> %broadcast.splat34, %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index
  %wide.load37 = load <8 x i16>, ptr %i.ar, align 16, !tbaa !46
  %i.as = sext <8 x i16> %wide.load37 to <8 x i32>
  %i.at = mul nsw <8 x i32> %broadcast.splat36, %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index
  %wide.load38 = load <8 x i16>, ptr %i.au, align 16, !tbaa !46
  %i.av = sext <8 x i16> %wide.load38 to <8 x i32>
  %i.aw = mul nsw <8 x i32> %broadcast.splat, %i.av
  %i.ax = add nsw <8 x i32> %i.aq, splat (i32 8192)
  %i.ay = add <8 x i32> %i.ax, %i.at
  %i.az = add <8 x i32> %i.ay, %i.aw
  %i.ba = lshr <8 x i32> %i.az, splat (i32 14)
  %i.bb = trunc <8 x i32> %i.ba to <8 x i16>
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !46
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul nsw i32 %i.bg, %i.j
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !46
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.x, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !46
  %i.bo = sext i16 %i.bn to i32
  %i.bp = mul nsw i32 %i.an, %i.bo
  %i.bq = add nsw i32 %i.bh, 8192
  %i.br = add i32 %i.bq, %i.bl
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = lshr i32 %i.bs, 14
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_codebook(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i16 noundef signext %2, i16 noundef signext range(i16 85, 148) %3, i16 noundef signext %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x i16], align 2                ; 12 uses
  %i.b = alloca [4 x i16], align 2                ; 6 uses
  %i.c = alloca [45 x i16], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(90) %i.c, i8 0, i64 90, i1 false)
  %i.d = zext nneg i16 %3 to i32                  ; 2 uses
  %i.e = sext i16 %4 to i32                       ; 4 uses
  %i.f = sub nsw i32 %i.d, %i.e                   ; 5 uses
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = icmp eq i16 %4, 40
  %i.i = add nsw i32 %i.f, 21
  %spec.select = select i1 %i.h, i32 %i.i, i32 %i.g ; 2 uses
  %i.j = sext i16 %2 to i32                       ; 4 uses
  %.not = icmp slt i32 %i.f, %i.j
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i16 %4, %2
  %i.l = zext nneg i16 %3 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %i.n = sext i16 %i.k to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.o
  %i.q = shl nsw i32 %i.e, 1
  %i.r = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull align 2 %i.p, i64 %i.r, i1 false)
  br label %filter_mafq12.exit

bb.c:                                             ; preds = %bb.a
  %sext = shl i32 %spec.select, 16
  %i.s = ashr exact i32 %sext, 16                 ; 2 uses
  %i.t = icmp sgt i32 %i.s, %i.j
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = shl nsw i32 %i.e, 1
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %0, i8 0, i64 %i.v, i1 false)
  %i.w = trunc nsw i32 %i.g to i16
  %i.x = sub i16 %2, %i.w
  %i.y = shl i16 %i.x, 1
  %i.z = add i16 %i.y, %4                         ; 5 uses
  %i.aa = sdiv i16 %i.z, 2                        ; 2 uses
  %i.ab = sext i16 %i.aa to i32                   ; 5 uses
  %i.ac = zext nneg i16 %3 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ae = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 4) ; 4 uses
  %i.af = sub i32 %i.ab, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = sext i16 %i.aa to i64                   ; 2 uses
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = shl nsw i32 %i.ab, 1
  %i.al = sext i32 %i.ak to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull readonly align 2 %i.aj, i64 %i.al, i1 false)
  %sext.i = shl i64 %i.ag, 48
  %i.am = ashr exact i64 %sext.i, 47
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am ; 5 uses
  %i.ao = sext i32 %i.ae to i64                   ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i16 %i.z, 1
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %create_augmented_vector.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.ae to i64 ; 8 uses
  %xtraiter200 = and i64 %wide.trip.count.i.i, 1
  %i.as = and i16 %i.z, 32766
  %i.at = icmp eq i16 %i.as, 2
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter204 = and i64 %wide.trip.count.i.i, 6
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter205.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.av = load i16, ptr %i.au, align 2, !tbaa !46
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.i.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !46
  %i.az = sext i16 %i.ay to i32
  %i.ba = mul nsw i32 %i.az, %i.aw
  %i.bb = lshr i32 %i.ba, 15
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !46
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !46
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.next.i.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !46
  %i.bj = sext i16 %i.bi to i32
  %i.bk = mul nsw i32 %i.bj, %i.bg
  %i.bl = lshr i32 %i.bk, 15
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next.i.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !46
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter205.next.1 = add i64 %niter205, 2         ; 2 uses
  %niter205.ncmp.1 = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1, label %iter.check.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !98

iter.check.unr-lcssa:                             ; preds = %.lr.ph.i.i
  %lcmp.mod202.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202.not, label %iter.check.a, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %iter.check.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %iter.check.unr-lcssa ] ; 3 uses
  %lcmp.mod203 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i.epil.init
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !46
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr @alpha, i64 %indvars.iv.i.i.epil.init
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !46
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = lshr i32 %i.bu, 15
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i.epil.init
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !46
  br label %iter.check.a

iter.check.a:                                     ; preds = %iter.check.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.by = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ap ; 2 uses
  %i.bz = getelementptr [2 x i8], ptr @alpha, i64 %i.ao
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  %5 = load i16, ptr %i.ca, align 2, !tbaa !46
  %6 = sext i16 %5 to i32                         ; 2 uses
  %min.iters.check144 = icmp slt i16 %i.z, 8
  br i1 %min.iters.check144, label %.lr.ph.i32.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check.a
  %n.vec155 = and i64 %wide.trip.count.i.i, 4     ; 3 uses
  %broadcast.splatinsert156 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat157 = shufflevector <4 x i32> %broadcast.splatinsert156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %index158
  %wide.load159 = load <4 x i16>, ptr %7, align 2, !tbaa !46
  %8 = sext <4 x i16> %wide.load159 to <4 x i32>
  %9 = mul nsw <4 x i32> %broadcast.splat157, %8
  %10 = lshr <4 x i32> %9, splat (i32 15)
  %11 = trunc <4 x i32> %10 to <4 x i16>
  %12 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index158
  store <4 x i16> %11, ptr %12, align 2, !tbaa !46
  %index.next160 = add nuw i64 %index158, 4       ; 2 uses
  %13 = icmp eq i64 %index.next160, %n.vec155
  br i1 %13, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %n.vec155, %wide.trip.count.i.i
  br i1 %cmp.n161, label %iter.check179, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %iter.check.a, %vec.epilog.middle.block
  %indvars.iv.i33.i.ph = phi i64 [ 0, %iter.check.a ], [ %n.vec155, %vec.epilog.middle.block ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %indvars.iv.i33.i = phi i64 [ %indvars.iv.next.i34.i, %.lr.ph.i32.i ], [ %indvars.iv.i33.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.i33.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !46
  %i.cd = sext i16 %i.cc to i32
  %i.ce = mul nsw i32 %i.cd, %6
  %i.cf = lshr i32 %i.ce, 15
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i33.i
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !46
  %indvars.iv.next.i34.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i34.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i35.i, label %iter.check179, label %.lr.ph.i32.i, !llvm.loop !100

iter.check179:                                    ; preds = %.lr.ph.i32.i, %vec.epilog.middle.block
  %min.iters.check164 = icmp slt i16 %i.z, 8
  br i1 %min.iters.check164, label %.lr.ph.i38.i.preheader, label %vec.epilog.ph183

vec.epilog.ph183:                                 ; preds = %iter.check179
  %n.vec184 = and i64 %wide.trip.count.i.i, 4     ; 3 uses
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph183
  %index186 = phi i64 [ 0, %vec.epilog.ph183 ], [ %index.next189, %vec.epilog.vector.body185 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %index186 ; 2 uses
  %wide.load187 = load <4 x i16>, ptr %i.ci, align 2, !tbaa !46
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index186
  %wide.load188 = load <4 x i16>, ptr %i.cj, align 2, !tbaa !46
  %i.ck = add <4 x i16> %wide.load188, %wide.load187
  store <4 x i16> %i.ck, ptr %i.ci, align 2, !tbaa !46
  %index.next189 = add nuw i64 %index186, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.cl, label %vec.epilog.middle.block190, label %vec.epilog.vector.body185, !llvm.loop !101

vec.epilog.middle.block190:                       ; preds = %vec.epilog.vector.body185
  %cmp.n191 = icmp eq i64 %n.vec184, %wide.trip.count.i.i
  br i1 %cmp.n191, label %create_augmented_vector.exit, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %iter.check179, %vec.epilog.middle.block190
  %indvars.iv.i39.i.ph = phi i64 [ 0, %iter.check179 ], [ %n.vec184, %vec.epilog.middle.block190 ]
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %.lr.ph.i38.i
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.i38.i ], [ %indvars.iv.i39.i.ph, %.lr.ph.i38.i.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i39.i ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !46
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i39.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !46
  %i.cq = add i16 %i.cp, %i.cn
  store i16 %i.cq, ptr %i.cm, align 2, !tbaa !46
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %exitcond.not.i41.i = icmp eq i64 %indvars.iv.next.i40.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i41.i, label %create_augmented_vector.exit, label %.lr.ph.i38.i, !llvm.loop !102

create_augmented_vector.exit:                     ; preds = %.lr.ph.i38.i, %vec.epilog.middle.block190, %bb.d
  %i.cr = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ah
  %i.cs = sub nsw i32 40, %i.ab
  %i.ct = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 range(i32 -32768, 32768) %i.ab)
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.cr, ptr nonnull readonly align 2 %i.aj, i64 %i.cv, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %filter_mafq12.exit

bb.e:                                             ; preds = %bb.c
  %i.cw = sub nsw i32 %i.j, %i.s                  ; 2 uses
  %.not62 = icmp sgt i32 %i.cw, %i.f
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = add i16 %4, %i.cx
  %i.cz = sub i16 %3, %i.cy
  %i.da = getelementptr inbounds i8, ptr %1, i64 -8
  store i64 0, ptr %i.da, align 2
  %i.db = zext nneg i16 %3 to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.db
  store i64 0, ptr %i.dc, align 2
  %i.dd = sext i16 %i.cz to i64                   ; 2 uses
  %i.de = getelementptr [2 x i8], ptr %1, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8      ; 2 uses
  %i.dg = icmp sgt i16 %4, 0
  br i1 %i.dg, label %.lr.ph.i, label %filter_mafq12.exit

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count27.i = zext nneg i16 %4 to i64  ; 4 uses
  %min.iters.check = icmp ult i16 %4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dh = shl nuw nsw i64 %wide.trip.count27.i, 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.dh
  %i.di = shl nsw i64 %i.dd, 1                    ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %scevgep103 = getelementptr i8, ptr %i.dj, i64 -6
  %i.dk = getelementptr i8, ptr %1, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dh
  %scevgep104 = getelementptr i8, ptr %i.dl, i64 8
  %bound0 = icmp ult ptr %0, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count27.i, 32760    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %index ; 8 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -2
  %wide.load = load <8 x i16>, ptr %i.dm, align 2, !tbaa !46, !alias.scope !103
  %i.do = sext <8 x i16> %wide.load to <8 x i32>
  %i.dp = mul nsw <8 x i32> %i.do, splat (i32 -140)
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %wide.load105 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !46, !alias.scope !103
  %i.dr = sext <8 x i16> %wide.load105 to <8 x i32>
  %i.ds = mul nsw <8 x i32> %i.dr, splat (i32 446)
  %i.dt = add nsw <8 x i32> %i.ds, %i.dp
  %i.du = getelementptr inbounds i8, ptr %i.dm, i64 -6
  %wide.load106 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !46, !alias.scope !103
  %i.dv = sext <8 x i16> %wide.load106 to <8 x i32>
  %i.dw = mul nsw <8 x i32> %i.dv, splat (i32 -755)
  %i.dx = add nsw <8 x i32> %i.dw, %i.dt
  %i.dy = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %wide.load107 = load <8 x i16>, ptr %i.du, align 2, !tbaa !46, !alias.scope !103
  %i.dz = sext <8 x i16> %wide.load107 to <8 x i32>
  %i.ea = mul nsw <8 x i32> %i.dz, splat (i32 3302)
  %i.eb = add nsw <8 x i32> %i.ea, %i.dx
  %i.ec = getelementptr inbounds i8, ptr %i.dm, i64 -10
  %wide.load108 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !46, !alias.scope !103
  %i.ed = sext <8 x i16> %wide.load108 to <8 x i32>
  %i.ee = mul nsw <8 x i32> %i.ed, splat (i32 2922)
  %i.ef = add nsw <8 x i32> %i.ee, %i.eb
  %i.eg = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %wide.load109 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !46, !alias.scope !103
  %i.eh = sext <8 x i16> %wide.load109 to <8 x i32>
  %i.ei = mul nsw <8 x i32> %i.eh, splat (i32 -590)
  %i.ej = add nsw <8 x i32> %i.ei, %i.ef
  %i.ek = getelementptr inbounds i8, ptr %i.dm, i64 -14
  %wide.load110 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !46, !alias.scope !103
  %i.el = sext <8 x i16> %wide.load110 to <8 x i32>
  %i.em = mul nsw <8 x i32> %i.el, splat (i32 343)
  %i.en = add nsw <8 x i32> %i.em, %i.ej
  %wide.load111 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !46, !alias.scope !103
  %i.eo = sext <8 x i16> %wide.load111 to <8 x i32>
  %i.ep = mul nsw <8 x i32> %i.eo, splat (i32 -138)
  %i.eq = add nsw <8 x i32> %i.ep, %i.en
  %i.er = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eq, <8 x i32> splat (i32 -134217728))
  %i.es = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.er, <8 x i32> splat (i32 134215679))
  %i.et = add nsw <8 x i32> %i.es, splat (i32 2048)
  %i.eu = lshr <8 x i32> %i.et, splat (i32 12)
  %i.ev = trunc <8 x i32> %i.eu to <8 x i16>
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.ev, ptr %i.ew, align 2, !tbaa !46, !alias.scope !106, !noalias !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27.i
  br i1 %cmp.n, label %filter_mafq12.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %scalar.ph ], [ %indvars.iv24.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv24.i
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -14
  %i.fa = load <8 x i16>, ptr %i.ez, align 2, !tbaa !46
  %i.fb = sext <8 x i16> %i.fa to <8 x i32>
  %i.fc = mul nsw <8 x i32> %i.fb, <i32 -138, i32 343, i32 -590, i32 2922, i32 3302, i32 -755, i32 446, i32 -140>
  %i.fd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.fc)
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 -134217728)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 134215679)
  %i.ff = add nsw i32 %.0.i.i, 2048
  %i.fg = lshr i32 %i.ff, 12
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv24.i
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !46
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %filter_mafq12.exit, label %scalar.ph, !llvm.loop !109

bb.g:                                             ; preds = %bb.e
  %i.fj = shl nsw i32 %i.e, 1                     ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %0, i8 0, i64 %i.fk, i1 false)
  %i.fl = zext nneg i16 %3 to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fl
  store i64 0, ptr %i.fm, align 2
  %i.fn = shl nsw i32 %i.f, 16
  %sext63 = add nsw i32 %i.fn, -524288
  %i.fo = ashr exact i32 %sext63, 16
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [2 x i8], ptr %1, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 14     ; 2 uses
  %i.fs = add i16 %4, 5                           ; 3 uses
  %i.ft = icmp sgt i16 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.i65, label %filter_mafq12.exit76

.lr.ph.i65:                                       ; preds = %bb.g
  %wide.trip.count27.i66 = zext nneg i16 %i.fs to i64 ; 3 uses
  %min.iters.check113 = icmp ult i16 %i.fs, 8
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i65
  %n.vec115 = and i64 %wide.trip.count27.i66, 32760 ; 3 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next126, %vector.body116 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %index117 ; 8 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -2
  %wide.load118 = load <8 x i16>, ptr %i.fu, align 2, !tbaa !46
  %i.fw = sext <8 x i16> %wide.load118 to <8 x i32>
  %i.fx = mul nsw <8 x i32> %i.fw, splat (i32 -140)
  %i.fy = getelementptr inbounds i8, ptr %i.fu, i64 -4
  %wide.load119 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !46
  %i.fz = sext <8 x i16> %wide.load119 to <8 x i32>
  %i.ga = mul nsw <8 x i32> %i.fz, splat (i32 446)
  %i.gb = add nsw <8 x i32> %i.ga, %i.fx
  %i.gc = getelementptr inbounds i8, ptr %i.fu, i64 -6
  %wide.load120 = load <8 x i16>, ptr %i.fy, align 2, !tbaa !46
  %i.gd = sext <8 x i16> %wide.load120 to <8 x i32>
  %i.ge = mul nsw <8 x i32> %i.gd, splat (i32 -755)
  %i.gf = add nsw <8 x i32> %i.ge, %i.gb
  %i.gg = getelementptr inbounds i8, ptr %i.fu, i64 -8
  %wide.load121 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !46
  %i.gh = sext <8 x i16> %wide.load121 to <8 x i32>
  %i.gi = mul nsw <8 x i32> %i.gh, splat (i32 3302)
  %i.gj = add nsw <8 x i32> %i.gi, %i.gf
  %i.gk = getelementptr inbounds i8, ptr %i.fu, i64 -10
  %wide.load122 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !46
  %i.gl = sext <8 x i16> %wide.load122 to <8 x i32>
  %i.gm = mul nsw <8 x i32> %i.gl, splat (i32 2922)
  %i.gn = add nsw <8 x i32> %i.gm, %i.gj
  %i.go = getelementptr inbounds i8, ptr %i.fu, i64 -12
  %wide.load123 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !46
  %i.gp = sext <8 x i16> %wide.load123 to <8 x i32>
  %i.gq = mul nsw <8 x i32> %i.gp, splat (i32 -590)
  %i.gr = add nsw <8 x i32> %i.gq, %i.gn
  %i.gs = getelementptr inbounds i8, ptr %i.fu, i64 -14
  %wide.load124 = load <8 x i16>, ptr %i.go, align 2, !tbaa !46
  %i.gt = sext <8 x i16> %wide.load124 to <8 x i32>
  %i.gu = mul nsw <8 x i32> %i.gt, splat (i32 343)
  %i.gv = add nsw <8 x i32> %i.gu, %i.gr
  %wide.load125 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !46
  %i.gw = sext <8 x i16> %wide.load125 to <8 x i32>
  %i.gx = mul nsw <8 x i32> %i.gw, splat (i32 -138)
  %i.gy = add nsw <8 x i32> %i.gx, %i.gv
  %i.gz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 -134217728))
  %i.ha = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gz, <8 x i32> splat (i32 134215679))
  %i.hb = add nsw <8 x i32> %i.ha, splat (i32 2048)
  %i.hc = lshr <8 x i32> %i.hb, splat (i32 12)
  %i.hd = trunc <8 x i32> %i.hc to <8 x i16>
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index117
  store <8 x i16> %i.hd, ptr %i.he, align 16, !tbaa !46
  %index.next126 = add nuw i64 %index117, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next126, %n.vec115
  br i1 %i.hf, label %middle.block127, label %vector.body116, !llvm.loop !110

middle.block127:                                  ; preds = %vector.body116
  %cmp.n128 = icmp eq i64 %n.vec115, %wide.trip.count27.i66
  br i1 %cmp.n128, label %filter_mafq12.exit76, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.lr.ph.i65, %middle.block127
  %indvars.iv24.i67.ph = phi i64 [ 0, %.lr.ph.i65 ], [ %n.vec115, %middle.block127 ]
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv24.i67 = phi i64 [ %indvars.iv.next25.i74, %scalar.ph112 ], [ %indvars.iv24.i67.ph, %scalar.ph112.preheader ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv24.i67
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -14
  %i.hi = load <8 x i16>, ptr %i.hh, align 2, !tbaa !46
  %i.hj = sext <8 x i16> %i.hi to <8 x i32>
  %i.hk = mul nsw <8 x i32> %i.hj, <i32 -138, i32 343, i32 -590, i32 2922, i32 3302, i32 -755, i32 446, i32 -140>
  %i.hl = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hk)
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 -134217728)
  %.0.i.i73 = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 134215679)
  %i.hn = add nsw i32 %.0.i.i73, 2048
  %i.ho = lshr i32 %i.hn, 12
  %i.hp = trunc i32 %i.ho to i16
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv24.i67
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !46
  %indvars.iv.next25.i74 = add nuw nsw i64 %indvars.iv24.i67, 1 ; 2 uses
  %exitcond28.not.i75 = icmp eq i64 %indvars.iv.next25.i74, %wide.trip.count27.i66
  br i1 %exitcond28.not.i75, label %filter_mafq12.exit76, label %scalar.ph112, !llvm.loop !111

filter_mafq12.exit76:                             ; preds = %scalar.ph112, %middle.block127, %bb.g
  %i.hr = add nsw i32 %spec.select, %i.d
  %i.hs = xor i32 %i.hr, -1
  %i.ht = add nsw i32 %i.j, 65516
  %i.hu = add nsw i32 %i.ht, %i.fj
  %i.hv = add nsw i32 %i.hu, %i.hs                ; 2 uses
  %sext64 = shl i32 %i.hv, 16                     ; 5 uses
  %i.hw = ashr exact i32 %sext64, 16              ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.hy = tail call i32 @llvm.smin.i32(i32 range(i32 -32768, 32768) %i.hw, i32 4) ; 3 uses
  %i.hz = sub nsw i32 %i.hv, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = sext i32 %i.hw to i64                   ; 2 uses
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.ic ; 3 uses
  %i.ie = ashr exact i32 %sext64, 15
  %i.if = sext i32 %i.ie to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %0, ptr nonnull readonly align 2 %i.id, i64 %i.if, i1 false)
  %sext.i77 = shl i64 %i.ia, 48
  %i.ig = ashr exact i64 %sext.i77, 47
  %i.ih = getelementptr inbounds i8, ptr %0, i64 %i.ig ; 9 uses
  %i.ii = sext i32 %i.hy to i64                   ; 2 uses
  %i.ij = sub nsw i64 0, %i.ii                    ; 2 uses
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.ij ; 4 uses
  %i.il = icmp sgt i32 %i.hw, 0
  br i1 %i.il, label %.lr.ph.preheader.i.i78, label %create_augmented_vector.exit93

.lr.ph.preheader.i.i78:                           ; preds = %filter_mafq12.exit76
  %wide.trip.count.i.i79 = zext nneg i32 %i.hy to i64 ; 4 uses
  %i.im = load i16, ptr %i.ik, align 2, !tbaa !46
  %i.in = sext i16 %i.im to i32
  %i.io = mul nsw i32 %i.in, 6554
  %i.ip = lshr i32 %i.io, 15
  %i.iq = trunc i32 %i.ip to i16
  store i16 %i.iq, ptr %i.ih, align 2, !tbaa !46
  %exitcond.not.i.i83 = icmp eq i32 %sext64, 65536
  br i1 %exitcond.not.i.i83, label %.lr.ph.preheader.i30.i84, label %.lr.ph.i.i80.1

.lr.ph.i.i80.1:                                   ; preds = %.lr.ph.preheader.i.i78
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !46
  %i.it = sext i16 %i.is to i32
  %i.iu = mul nsw i32 %i.it, 13107
  %i.iv = lshr i32 %i.iu, 15
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !46
  %exitcond.not.i.i83.1 = icmp eq i32 %sext64, 131072
  br i1 %exitcond.not.i.i83.1, label %.lr.ph.preheader.i30.i84, label %.lr.ph.i.i80.2

.lr.ph.i.i80.2:                                   ; preds = %.lr.ph.i.i80.1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !46
  %i.ja = sext i16 %i.iz to i32
  %i.jb = mul nsw i32 %i.ja, 19661
  %i.jc = lshr i32 %i.jb, 15
  %i.jd = trunc i32 %i.jc to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !46
  %exitcond.not.i.i83.2 = icmp eq i32 %sext64, 196608
  br i1 %exitcond.not.i.i83.2, label %.lr.ph.preheader.i30.i84, label %.lr.ph.i.i80.3

.lr.ph.i.i80.3:                                   ; preds = %.lr.ph.i.i80.2
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 6
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !46
  %i.jh = sext i16 %i.jg to i32
  %i.ji = mul nsw i32 %i.jh, 26214
  %i.jj = lshr i32 %i.ji, 15
  %i.jk = trunc i32 %i.jj to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ih, i64 6
  store i16 %i.jk, ptr %i.jl, align 2, !tbaa !46
  br label %.lr.ph.preheader.i30.i84

.lr.ph.preheader.i30.i84:                         ; preds = %.lr.ph.i.i80.3, %.lr.ph.i.i80.2, %.lr.ph.i.i80.1, %.lr.ph.preheader.i.i78
  %i.jm = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.ij ; 5 uses
  %i.jn = getelementptr [2 x i8], ptr @alpha, i64 %i.ii
  %i.jo = getelementptr i8, ptr %i.jn, i64 -2
  %14 = load i16, ptr %i.jo, align 2, !tbaa !46
  %15 = sext i16 %14 to i32                       ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i.i79, 3   ; 3 uses
  %16 = icmp slt i32 %i.hw, 4
  br i1 %16, label %.lr.ph.i32.i85.epil.preheader, label %.lr.ph.preheader.i30.i84.new

.lr.ph.preheader.i30.i84.new:                     ; preds = %.lr.ph.preheader.i30.i84
  %unroll_iter = and i64 %wide.trip.count.i.i79, 4
  br label %.lr.ph.i32.i85

.lr.ph.i32.i85:                                   ; preds = %.lr.ph.i32.i85, %.lr.ph.preheader.i30.i84.new
  %indvars.iv.i33.i86 = phi i64 [ 0, %.lr.ph.preheader.i30.i84.new ], [ %indvars.iv.next.i34.i87.3, %.lr.ph.i32.i85 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i30.i84.new ], [ %niter.next.3, %.lr.ph.i32.i85 ]
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %indvars.iv.i33.i86
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !46
  %i.jr = sext i16 %i.jq to i32
  %17 = mul nsw i32 %i.jr, %15
  %18 = lshr i32 %17, 15
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i33.i86
  store i16 %19, ptr %20, align 2, !tbaa !46
  %indvars.iv.next.i34.i87 = or disjoint i64 %indvars.iv.i33.i86, 1 ; 2 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %indvars.iv.next.i34.i87
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !46
  %i.ju = sext i16 %i.jt to i32
  %i.jv = mul nsw i32 %i.ju, %15
  %i.jw = lshr i32 %i.jv, 15
  %i.jx = trunc i32 %i.jw to i16
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i34.i87
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !46
  %indvars.iv.next.i34.i87.1.a = or disjoint i64 %indvars.iv.i33.i86, 2 ; 2 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %indvars.iv.next.i34.i87.1.a
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !46
  %i.kb = sext i16 %i.ka to i32
  %21 = mul nsw i32 %i.kb, %15
  %22 = lshr i32 %21, 15
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i34.i87.1.a
  store i16 %23, ptr %24, align 2, !tbaa !46
  %indvars.iv.next.i34.i87.2 = or disjoint i64 %indvars.iv.i33.i86, 3 ; 2 uses
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %indvars.iv.next.i34.i87.2
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !46
  %i.ke = sext i16 %i.kd to i32
  %i.kf = mul nsw i32 %i.ke, %15
  %i.kg = lshr i32 %i.kf, 15
  %i.kh = trunc i32 %i.kg to i16
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i34.i87.2
  store i16 %i.kh, ptr %i.ki, align 2, !tbaa !46
  %indvars.iv.next.i34.i87.3 = add nuw nsw i64 %indvars.iv.i33.i86, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i38.i89.preheader.unr-lcssa, label %.lr.ph.i32.i85, !llvm.loop !112

.lr.ph.i38.i89.preheader.unr-lcssa:               ; preds = %.lr.ph.i32.i85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i89.preheader, label %.lr.ph.i32.i85.epil.preheader

.lr.ph.i32.i85.epil.preheader:                    ; preds = %.lr.ph.i38.i89.preheader.unr-lcssa, %.lr.ph.preheader.i30.i84
  %indvars.iv.i33.i86.epil.init = phi i64 [ 0, %.lr.ph.preheader.i30.i84 ], [ %indvars.iv.next.i34.i87.3, %.lr.ph.i38.i89.preheader.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph.i32.i85.epil

.lr.ph.i32.i85.epil:                              ; preds = %.lr.ph.i32.i85.epil, %.lr.ph.i32.i85.epil.preheader
  %indvars.iv.i33.i86.epil = phi i64 [ %indvars.iv.i33.i86.epil.init, %.lr.ph.i32.i85.epil.preheader ], [ %indvars.iv.next.i34.i87.epil, %.lr.ph.i32.i85.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i32.i85.epil.preheader ], [ %epil.iter.next, %.lr.ph.i32.i85.epil ]
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %indvars.iv.i33.i86.epil
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !46
  %i.kl = sext i16 %i.kk to i32
  %25 = mul nsw i32 %i.kl, %15
  %26 = lshr i32 %25, 15
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i33.i86.epil
  store i16 %27, ptr %28, align 2, !tbaa !46
  %indvars.iv.next.i34.i87.epil = add nuw nsw i64 %indvars.iv.i33.i86.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i38.i89.preheader, label %.lr.ph.i32.i85.epil, !llvm.loop !113

.lr.ph.i38.i89.preheader:                         ; preds = %.lr.ph.i32.i85.epil, %.lr.ph.i38.i89.preheader.unr-lcssa
  %xtraiter194 = and i64 %wide.trip.count.i.i79, 3 ; 3 uses
  %i.km = icmp slt i32 %i.hw, 4
  br i1 %i.km, label %.lr.ph.i38.i89.epil.preheader, label %.lr.ph.i38.i89.preheader.new

.lr.ph.i38.i89.preheader.new:                     ; preds = %.lr.ph.i38.i89.preheader
  %unroll_iter198 = and i64 %wide.trip.count.i.i79, 4
  br label %.lr.ph.i38.i89

.lr.ph.i38.i89:                                   ; preds = %.lr.ph.i38.i89, %.lr.ph.i38.i89.preheader.new
  %indvars.iv.i39.i90 = phi i64 [ 0, %.lr.ph.i38.i89.preheader.new ], [ %indvars.iv.next.i40.i91.3, %.lr.ph.i38.i89 ] ; 6 uses
  %niter199 = phi i64 [ 0, %.lr.ph.i38.i89.preheader.new ], [ %niter199.next.3, %.lr.ph.i38.i89 ]
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %indvars.iv.i39.i90 ; 2 uses
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !46
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i39.i90
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !46
  %i.kr = add i16 %i.kq, %i.ko
  store i16 %i.kr, ptr %i.kn, align 2, !tbaa !46
  %indvars.iv.next.i40.i91 = or disjoint i64 %indvars.iv.i39.i90, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %indvars.iv.next.i40.i91 ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !46
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i40.i91
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !46
  %i.kw = add i16 %i.kv, %i.kt
  store i16 %i.kw, ptr %i.ks, align 2, !tbaa !46
  %indvars.iv.next.i40.i91.1 = or disjoint i64 %indvars.iv.i39.i90, 2 ; 2 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %indvars.iv.next.i40.i91.1 ; 2 uses
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !46
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i40.i91.1
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !46
  %i.lb = add i16 %i.la, %i.ky
  store i16 %i.lb, ptr %i.kx, align 2, !tbaa !46
  %indvars.iv.next.i40.i91.2 = or disjoint i64 %indvars.iv.i39.i90, 3 ; 2 uses
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %indvars.iv.next.i40.i91.2 ; 2 uses
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !46
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i40.i91.2
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !46
  %i.lg = add i16 %i.lf, %i.ld
  store i16 %i.lg, ptr %i.lc, align 2, !tbaa !46
  %indvars.iv.next.i40.i91.3 = add nuw nsw i64 %indvars.iv.i39.i90, 4 ; 2 uses
  %niter199.next.3 = add i64 %niter199, 4         ; 2 uses
  %niter199.ncmp.3 = icmp eq i64 %niter199.next.3, %unroll_iter198
  br i1 %niter199.ncmp.3, label %create_augmented_vector.exit93.loopexit.unr-lcssa, label %.lr.ph.i38.i89, !llvm.loop !114

create_augmented_vector.exit93.loopexit.unr-lcssa: ; preds = %.lr.ph.i38.i89
  %lcmp.mod196.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod196.not, label %create_augmented_vector.exit93, label %.lr.ph.i38.i89.epil.preheader

.lr.ph.i38.i89.epil.preheader:                    ; preds = %create_augmented_vector.exit93.loopexit.unr-lcssa, %.lr.ph.i38.i89.preheader
  %indvars.iv.i39.i90.epil.init = phi i64 [ 0, %.lr.ph.i38.i89.preheader ], [ %indvars.iv.next.i40.i91.3, %create_augmented_vector.exit93.loopexit.unr-lcssa ]
  %lcmp.mod197 = icmp ne i64 %xtraiter194, 0
  tail call void @llvm.assume(i1 %lcmp.mod197)
  br label %.lr.ph.i38.i89.epil

.lr.ph.i38.i89.epil:                              ; preds = %.lr.ph.i38.i89.epil, %.lr.ph.i38.i89.epil.preheader
  %indvars.iv.i39.i90.epil = phi i64 [ %indvars.iv.next.i40.i91.epil, %.lr.ph.i38.i89.epil ], [ %indvars.iv.i39.i90.epil.init, %.lr.ph.i38.i89.epil.preheader ] ; 3 uses
  %epil.iter195 = phi i64 [ %epil.iter195.next, %.lr.ph.i38.i89.epil ], [ 0, %.lr.ph.i38.i89.epil.preheader ]
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %indvars.iv.i39.i90.epil ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !46
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i39.i90.epil
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !46
  %i.ll = add i16 %i.lk, %i.li
  store i16 %i.ll, ptr %i.lh, align 2, !tbaa !46
  %indvars.iv.next.i40.i91.epil = add nuw nsw i64 %indvars.iv.i39.i90.epil, 1
  %epil.iter195.next = add i64 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i64 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %create_augmented_vector.exit93, label %.lr.ph.i38.i89.epil, !llvm.loop !115

create_augmented_vector.exit93:                   ; preds = %create_augmented_vector.exit93.loopexit.unr-lcssa, %.lr.ph.i38.i89.epil, %filter_mafq12.exit76
  %i.lm = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ib
  %i.ln = sub nsw i32 40, %i.hw
  %i.lo = tail call i32 @llvm.smin.i32(i32 %i.ln, i32 range(i32 -32768, 32768) %i.hw)
  %i.lp = sext i32 %i.lo to i64
  %i.lq = shl nsw i64 %i.lp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.lm, ptr nonnull readonly align 2 %i.id, i64 %i.lq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %filter_mafq12.exit

filter_mafq12.exit:                               ; preds = %scalar.ph, %middle.block, %bb.f, %create_augmented_vector.exit93, %create_augmented_vector.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 380}
!30 = !{!10, !15, i64 56}
!31 = !{!32, !6, i64 12}
!32 = !{!"ILBCContext", !11, i64 0, !6, i64 8, !6, i64 12, !33, i64 16, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !34, i64 232, !34, i64 234, !6, i64 236, !34, i64 240, !34, i64 242, !7, i64 244, !7, i64 284, !7, i64 304, !7, i64 324, !7, i64 344, !7, i64 476, !7, i64 608, !7, i64 740, !7, i64 2026, !7, i64 2042, !7, i64 2522, !7, i64 3002, !34, i64 3502, !34, i64 3504, !34, i64 3506, !34, i64 3508, !34, i64 3510, !7, i64 3512, !7, i64 3534, !7, i64 3556, !7, i64 3560}
!33 = !{!"ILBCFrame", !7, i64 0, !7, i64 12, !7, i64 42, !34, i64 72, !34, i64 74, !7, i64 76, !34, i64 192, !34, i64 194}
!34 = !{!"short", !7, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!12, !12, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!32, !6, i64 236}
!39 = !{!32, !34, i64 234}
!40 = !{!32, !34, i64 232}
!41 = !{!32, !6, i64 228}
!42 = !{!32, !6, i64 224}
!43 = !{!44, !16, i64 24}
!44 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!45 = !{!44, !6, i64 32}
!46 = !{!34, !34, i64 0}
!47 = !{!33, !34, i64 194}
!48 = !{!33, !34, i64 74}
!49 = !{!33, !34, i64 72}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!54, !6, i64 112}
!54 = !{!"AVFrame", !7, i64 0, !7, i64 64, !55, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !56, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !57, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!55 = !{!"p2 omnipotent char", !28, i64 0}
!56 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!57 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!58 = !{!32, !34, i64 210}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
!64 = distinct !{!64, !51}
!65 = distinct !{!65, !51, !66, !67}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = distinct !{!68, !51, !67, !66}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51, !66, !67}
!71 = !{!"branch_weights", i32 4, i32 12}
!72 = distinct !{!72, !51, !66, !67}
!73 = distinct !{!73, !51, !67, !66}
!74 = distinct !{!74, !51}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !51}
!81 = !{!32, !6, i64 216}
!82 = !{!32, !34, i64 3504}
!83 = !{!32, !6, i64 8}
!84 = !{!32, !6, i64 220}
!85 = distinct !{!85, !51}
!86 = !{!16, !16, i64 0}
!87 = distinct !{!87, !51}
!88 = !{!32, !6, i64 212}
!89 = distinct !{!89, !51, !66, !67}
!90 = distinct !{!90, !51, !67, !66}
!91 = distinct !{!91, !51, !66, !67}
!92 = distinct !{!92, !51, !67, !66}
!93 = distinct !{!93, !51, !66, !67}
!94 = distinct !{!94, !51, !67, !66}
!95 = distinct !{!95, !51}
!96 = distinct !{!96, !51, !66, !67}
!97 = distinct !{!97, !51, !67, !66}
!98 = distinct !{!98, !51, !66}
!99 = distinct !{!99, !51, !66, !67}
!100 = distinct !{!100, !51, !67, !66}
!101 = distinct !{!101, !51, !66, !67}
!102 = distinct !{!102, !51, !67, !66}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !51, !66, !67}
!109 = distinct !{!109, !51, !66}
!110 = distinct !{!110, !51, !66, !67}
!111 = distinct !{!111, !51, !67, !66}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !76}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !76}
end_hunk_1
