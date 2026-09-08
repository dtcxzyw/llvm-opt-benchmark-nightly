Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/Writer?download=true
inline.NumInlined: 234
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3dpx11WriteBufferItLi10ELb1EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbbiPcRbb:bb.a

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec140, %vec.epilog.iter.check ], [ %n.vec148, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i.i
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !40
  %i.bj = zext i8 %i.bi to i16                    ; 2 uses
  %i.bk = shl nuw i16 %i.bj, 8
  %i.bl = or disjoint i16 %i.bk, %i.bj
  store i16 %i.bl, ptr %i.bh, align 2, !tbaa !16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i.i, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i.i, !llvm.loop !90

bb.e:                                             ; preds = %bb.c
  br i1 %i.l, label %.lr.ph.i17.i.preheader, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i17.i.preheader:                           ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.j, ptr align 2 %i.ao, i64 %i.ae, i1 false), !tbaa !16
  br label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit

bb.f:                                             ; preds = %bb.c
  br i1 %i.l, label %.lr.ph.i23.i.preheader, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i23.i.preheader:                           ; preds = %bb.f
  br i1 %min.iters.check155, label %.lr.ph.i23.i.preheader180, label %vector.body158

vector.body158:                                   ; preds = %.lr.ph.i23.i.preheader, %vector.body158
  %index159 = phi i64 [ %index.next162, %vector.body158 ], [ 0, %.lr.ph.i23.i.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index159 ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index159 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load160 = load <4 x float>, ptr %i.bm, align 4, !tbaa !41
  %wide.load161 = load <4 x float>, ptr %i.bo, align 4, !tbaa !41
  %i.bp = fptoui <4 x float> %wide.load160 to <4 x i16>
  %i.bq = fptoui <4 x float> %wide.load161 to <4 x i16>
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store <4 x i16> %i.bp, ptr %i.bn, align 2, !tbaa !16
  store <4 x i16> %i.bq, ptr %i.br, align 2, !tbaa !16
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.bs, label %middle.block163, label %vector.body158, !llvm.loop !91

middle.block163:                                  ; preds = %vector.body158
  br i1 %cmp.n164, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i23.i.preheader180

.lr.ph.i23.i.preheader180:                        ; preds = %.lr.ph.i23.i.preheader, %middle.block163
  %indvars.iv.i24.i.ph = phi i64 [ 0, %.lr.ph.i23.i.preheader ], [ %n.vec157, %middle.block163 ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader180, %.lr.ph.i23.i
  %indvars.iv.i24.i = phi i64 [ %indvars.iv.next.i25.i, %.lr.ph.i23.i ], [ %indvars.iv.i24.i.ph, %.lr.ph.i23.i.preheader180 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i24.i
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i24.i
  %i.bv = load float, ptr %i.bt, align 4, !tbaa !41
  %i.bw = fptoui float %i.bv to i16
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !16
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i24.i, 1 ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i26.i, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i23.i, !llvm.loop !92

bb.g:                                             ; preds = %bb.c
  br i1 %i.l, label %.lr.ph.i29.i.preheader, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i29.i.preheader:                           ; preds = %bb.g
  br i1 %min.iters.check167, label %.lr.ph.i29.i.preheader182, label %vector.body170

vector.body170:                                   ; preds = %.lr.ph.i29.i.preheader, %vector.body170
  %index171 = phi i64 [ %index.next174, %vector.body170 ], [ 0, %.lr.ph.i29.i.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index171 ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index171 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load172 = load <2 x double>, ptr %i.bx, align 8, !tbaa !43
  %wide.load173 = load <2 x double>, ptr %i.bz, align 8, !tbaa !43
  %i.ca = fptoui <2 x double> %wide.load172 to <2 x i16>
  %i.cb = fptoui <2 x double> %wide.load173 to <2 x i16>
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store <2 x i16> %i.ca, ptr %i.by, align 2, !tbaa !16
  store <2 x i16> %i.cb, ptr %i.cc, align 2, !tbaa !16
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.cd, label %middle.block175, label %vector.body170, !llvm.loop !93

middle.block175:                                  ; preds = %vector.body170
  br i1 %cmp.n176, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i29.i.preheader182

.lr.ph.i29.i.preheader182:                        ; preds = %.lr.ph.i29.i.preheader, %middle.block175
  %indvars.iv.i30.i.ph = phi i64 [ 0, %.lr.ph.i29.i.preheader ], [ %n.vec169, %middle.block175 ]
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.lr.ph.i29.i.preheader182, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %indvars.iv.next.i31.i, %.lr.ph.i29.i ], [ %indvars.iv.i30.i.ph, %.lr.ph.i29.i.preheader182 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i30.i
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i30.i
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !43
  %i.ch = fptoui double %i.cg to i16
  store i16 %i.ch, ptr %i.cf, align 2, !tbaa !16
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %exitcond.not.i32.i = icmp eq i64 %indvars.iv.next.i31.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i32.i, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i29.i, !llvm.loop !94

_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit: ; preds = %.lr.ph.i29.i, %.lr.ph.i23.i, %.lr.ph.i.i, %middle.block175, %middle.block163, %middle.block146, %vec.epilog.middle.block, %.lr.ph.i17.i.preheader, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  switch i32 %6, label %bb.l [
    i32 0, label %bb.h
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit
  br i1 %i.l, label %.lr.ph.i.preheader, label %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.ci = load i32, ptr %13, align 4, !tbaa !46
  %i.cj = sext i32 %i.ci to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.j, i64 %i.cj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ck = load i16, ptr %gep, align 2, !tbaa !16
  %i.cl = lshr i16 %i.ck, 6
  %i.cm = zext nneg i16 %i.cl to i32              ; 2 uses
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = mul i32 %i.cn, 10                       ; 2 uses
  %i.cp = lshr i32 %i.co, 5
  %i.cq = and i32 %i.co, 30                       ; 4 uses
  %i.cr = shl i32 1023, %i.cq
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cs ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = xor i32 %i.cr, -1
  %i.cw = and i32 %i.cu, %i.cv
  %i.cx = shl i32 %i.cm, %i.cq
  %i.cy = or i32 %i.cx, %i.cw
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !11
  %i.cz = icmp samesign ugt i32 %i.cq, 22
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.da = sub nuw nsw i32 32, %i.cq               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !11
  %i.dd = ashr i32 -1024, %i.da
  %i.de = and i32 %i.dc, %i.dd
  %i.df = lshr i32 %i.cm, %i.da
  %i.dg = or i32 %i.de, %i.df
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %wide.trip.count.i28.i
  br i1 %exitcond.not.i, label %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit: ; preds = %bb.j, %bb.h
  store i32 0, ptr %13, align 4, !tbaa !46
  store i32 %i.r, ptr %i.e, align 4, !tbaa !45
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit

bb.k:                                             ; preds = %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit
  call void @_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE1EEEvPT_S3_ibRNS_12BufferAccessE(ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, i32 noundef %i.a, i1 noundef zeroext %spec.select, ptr noundef nonnull align 4 dereferenceable(8) %13)
  %.pre.pre = load i32, ptr %13, align 4, !tbaa !46
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split

bb.l:                                             ; preds = %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit
  %.pre.pre112 = load i32, ptr %13, align 4, !tbaa !46 ; 2 uses
  br i1 %i.s, label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.dh = sext i32 %.pre.pre112 to i64            ; 3 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !16
  %i.dk = lshr i16 %i.dj, 6
  %i.dl = zext nneg i16 %i.dk to i32              ; 3 uses
  br i1 %spec.select, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  br i1 %exitcond.peel.not.i, label %.split.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %bb.m
  %invariant.gep127 = getelementptr [2 x i8], ptr %i.j, i64 %i.dh
  br label %.preheader.split.i

bb.n:                                             ; preds = %.preheader.i
  %i.dm = shl nuw nsw i32 %i.dl, 20               ; 2 uses
  br i1 %exitcond.peel.not.i, label %.split.us.i, label %.preheader.split.us.i.preheader

.preheader.split.us.i.preheader:                  ; preds = %bb.n
  %invariant.gep129 = getelementptr [2 x i8], ptr %i.j, i64 %i.dh
  br label %.preheader.split.us.i

.preheader.split.us.i:                            ; preds = %.preheader.split.us.i.preheader, %bb.p
  %indvars.iv106 = phi i64 [ 1, %.preheader.split.us.i.preheader ], [ %indvars.iv.next107, %bb.p ] ; 3 uses
  %.03034.us.i = phi i32 [ %i.dm, %.preheader.split.us.i.preheader ], [ %i.ed, %bb.p ] ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv106 to i32 ; 2 uses
  %i.do = urem i32 %i.dn, 3                       ; 2 uses
  %i.dp = udiv i32 %i.dn, 3
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader.split.us.i
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = getelementptr [4 x i8], ptr %i.j, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  store i32 %.03034.us.i, ptr %i.dt, align 4, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.split.us.i
  %.1.us.i = phi i32 [ 0, %bb.o ], [ %.03034.us.i, %.preheader.split.us.i ]
  %i.du = sub nuw nsw i32 2, %i.do
  %gep130 = getelementptr [2 x i8], ptr %invariant.gep129, i64 %indvars.iv106
  %i.dv = load i16, ptr %gep130, align 2, !tbaa !16
  %i.dw = lshr i16 %i.dv, 6
  %i.dx = zext nneg i16 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.du, 10               ; 2 uses
  %i.dz = shl nuw nsw i32 1023, %i.dy
  %i.ea = xor i32 %i.dz, -1
  %i.eb = and i32 %.1.us.i, %i.ea
  %i.ec = shl nuw nsw i32 %i.dx, %i.dy
  %i.ed = or i32 %i.ec, %i.eb                     ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next107, %wide.trip.count.i28.i
  br i1 %exitcond38.not.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !2

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %bb.r
  %indvars.iv103 = phi i64 [ 1, %.preheader.split.i.preheader ], [ %indvars.iv.next104, %bb.r ] ; 3 uses
  %.03034.i = phi i32 [ %i.dl, %.preheader.split.i.preheader ], [ %i.et, %bb.r ] ; 2 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv103 to i32 ; 2 uses
  %i.ef = urem i32 %i.ee, 3                       ; 2 uses
  %i.eg = udiv i32 %i.ee, 3
  %i.eh = icmp eq i32 %i.ef, 0
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.split.i
  %i.ei = zext nneg i32 %i.eg to i64
  %i.ej = getelementptr [4 x i8], ptr %i.j, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  store i32 %.03034.i, ptr %i.ek, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader.split.i
  %.1.i = phi i32 [ 0, %bb.q ], [ %.03034.i, %.preheader.split.i ]
  %gep128 = getelementptr [2 x i8], ptr %invariant.gep127, i64 %indvars.iv103
  %i.el = load i16, ptr %gep128, align 2, !tbaa !16
  %i.em = lshr i16 %i.el, 6
  %i.en = zext nneg i16 %i.em to i32
  %i.eo = mul nuw nsw i32 %i.ef, 10               ; 2 uses
  %i.ep = shl nuw nsw i32 1023, %i.eo
  %i.eq = xor i32 %i.ep, -1
  %i.er = and i32 %.1.i, %i.eq
  %i.es = shl nuw nsw i32 %i.en, %i.eo
  %i.et = or i32 %i.es, %i.er                     ; 2 uses
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next104, %wide.trip.count.i28.i
  br i1 %exitcond.not.i75, label %.split.us.i, label %.preheader.split.i, !llvm.loop !3

.split.us.i:                                      ; preds = %bb.r, %bb.p, %bb.n, %bb.m
  %.us-phi.i = phi i32 [ %i.ed, %bb.p ], [ %i.dm, %bb.n ], [ %i.dl, %bb.m ], [ %i.et, %bb.r ]
  store i32 %.us-phi.i, ptr %i.x, align 4, !tbaa !11
  store i32 0, ptr %13, align 4, !tbaa !46
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !45
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit

_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split: ; preds = %bb.k, %bb.l
  %.pre.ph = phi i32 [ %.pre.pre, %bb.k ], [ %.pre.pre112, %bb.l ]
  %.pr = load i32, ptr %i.e, align 4, !tbaa !45
  %i.eu = sext i32 %.pre.ph to i64
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit

_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit: ; preds = %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split, %.split.us.i, %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit
  %i.ev = phi i32 [ %.pr, %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split ], [ %i.ac, %.split.us.i ], [ %i.r, %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit ] ; 2 uses
  %.pre = phi i64 [ %i.eu, %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split ], [ 0, %.split.us.i ], [ 0, %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit ] ; 2 uses
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = shl nsw i64 %i.ew, 1                    ; 3 uses
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = add i32 %.07190, %i.ey                  ; 3 uses
  br i1 %12, label %bb.s, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit

bb.s:                                             ; preds = %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.pre ; 2 uses
  %i.fb = ashr i64 %i.ew, 1                       ; 4 uses
  %.not.i.i.i18.i = icmp ult i32 %i.ev, 2
  br i1 %.not.i.i.i18.i, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i.preheader

.lr.ph.i.i.i19.i.preheader:                       ; preds = %bb.s
  %min.iters.check = icmp ult i64 %i.fb, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i19.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i19.i.preheader
  %n.vec = and i64 %i.fb, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fc, align 4, !tbaa !11
  %wide.load135 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !11
  %i.fe = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ff = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load135)
  store <4 x i32> %i.fe, ptr %i.fc, align 4, !tbaa !11
  store <4 x i32> %i.ff, ptr %i.fd, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i.preheader178

.lr.ph.i.i.i19.i.preheader178:                    ; preds = %.lr.ph.i.i.i19.i.preheader, %middle.block
  %.06.i.i.i20.i.ph = phi i64 [ 0, %.lr.ph.i.i.i19.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i19.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i.i.i19.i.preheader178, %.lr.ph.i.i.i19.i
  %.06.i.i.i20.i = phi i64 [ %i.fk, %.lr.ph.i.i.i19.i ], [ %.06.i.i.i20.i.ph, %.lr.ph.i.i.i19.i.preheader178 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.06.i.i.i20.i ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !11
  %i.fj = call noundef i32 @llvm.bswap.i32(i32 %i.fi)
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !11
  %i.fk = add nuw i64 %.06.i.i.i20.i, 1           ; 2 uses
  %exitcond.not.i.i.i21.i = icmp eq i64 %i.fk, %i.fb
  br i1 %exitcond.not.i.i.i21.i, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i, !llvm.loop !96

_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit:  ; preds = %.lr.ph.i.i.i19.i, %middle.block, %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit, %bb.s
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.pre
  %i.fm = load ptr, ptr %0, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.fl, i64 noundef %i.ex), !inline_history !0
  %i.fq = icmp eq i64 %i.fp, %i.ex
  br i1 %i.fq, label %bb.t, label %.loopexit.sink.split

bb.t:                                             ; preds = %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fr = add nsw i32 %i.ez, %9                   ; 2 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call noundef i64 %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %10, i64 noundef %i.ad), !inline_history !0
  %i.fw = icmp eq i64 %i.fv, %i.ad
  br i1 %i.fw, label %bb.v, label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.ph = phi i32 [ %i.ez, %bb.t ], [ %i.fr, %bb.u ] ; 2 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !97

.loopexit.sink.split:                             ; preds = %bb.u, %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit
  %.3.ph = phi i32 [ %i.ez, %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit ], [ %i.fr, %bb.u ]
  store i8 0, ptr %11, align 1, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.loopexit.sink.split, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %.3.ph, %.loopexit.sink.split ], [ %.2.ph, %bb.v ]
  call void @_ZdaPv(ptr noundef nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3dpx11WriteBufferItLi10ELb0EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbbiPcRbb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11, i1 noundef zeroext %12) local_unnamed_addr #1 {
bb.a:
  %13 = alloca %"struct.dpx::BufferAccess", align 4 ; 10 uses
  %i.a = mul i32 %5, %3                           ; 13 uses
  br i1 %7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3
  %i.c = add nuw nsw i32 %i.b, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  store i32 0, ptr %13, align 4
  store i32 %i.a, ptr %i.e, align 4, !tbaa !45
  %i.f = add i32 %i.a, 1
  %i.g = add i32 %i.f, %i.d
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 9 uses
  %i.k = icmp eq i32 %5, 4
  %spec.select = xor i1 %i.k, %8                  ; 2 uses
  %.not85 = icmp eq i32 %4, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.l = icmp sgt i32 %i.a, 0
  %i.m = mul nsw i32 %i.a, 10                     ; 2 uses
  %i.n = sdiv i32 %i.m, 32
  %i.o = and i32 %i.m, 30
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not.i to i32
  %i.q = add nsw i32 %i.n, %i.p
  %i.r = shl nsw i32 %i.q, 1                      ; 2 uses
  %i.s = icmp slt i32 %i.a, 1
  %exitcond.peel.not.i = icmp eq i32 %i.a, 1      ; 2 uses
  %i.t = add nuw nsw i32 %i.a, 2
  %i.u = udiv i32 %i.t, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = udiv i32 %i.a, 3
  %i.z = urem i32 %i.a, 3
  %.not.i71 = icmp ne i32 %i.z, 0
  %i.aa = zext i1 %.not.i71 to i32
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = shl nuw nsw i32 %i.ab, 1                ; 2 uses
  %.not = icmp eq i32 %9, 0
  %i.ad = sext i32 %9 to i64                      ; 2 uses
  %i.ae = zext i32 %i.a to i64                    ; 3 uses
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %bb.r ] ; 2 uses
  %.06683 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.r ]
  %i.af = call noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %1)
  %i.ag = trunc nuw i64 %indvars.iv99 to i32      ; 2 uses
  %i.ah = mul i32 %i.a, %i.ag
  %i.ai = mul i32 %i.ah, %i.af
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = mul i32 %9, %i.ag
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %spec.select75 = select i1 %7, ptr %i.j, ptr %i.an ; 5 uses
  switch i32 %6, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %.lr.ph.i.preheader, label %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ao = load i32, ptr %13, align 4, !tbaa !46
  %i.ap = sext i32 %i.ao to i64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select75, i64 %i.ap
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aq = load i16, ptr %gep, align 2, !tbaa !16
  %i.ar = lshr i16 %i.aq, 6
  %i.as = zext nneg i16 %i.ar to i32              ; 2 uses
  %i.at = trunc i64 %indvars.iv to i32
  %i.au = mul i32 %i.at, 10                       ; 2 uses
  %i.av = lshr i32 %i.au, 5
  %i.aw = and i32 %i.au, 30                       ; 4 uses
  %i.ax = shl i32 1023, %i.aw
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !11
  %i.bb = xor i32 %i.ax, -1
  %i.bc = and i32 %i.ba, %i.bb
  %i.bd = shl i32 %i.as, %i.aw
  %i.be = or i32 %i.bd, %i.bc
  store i32 %i.be, ptr %i.az, align 4, !tbaa !11
  %i.bf = icmp samesign ugt i32 %i.aw, 22
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = sub nuw nsw i32 32, %i.aw               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %i.bj = ashr i32 -1024, %i.bg
  %i.bk = and i32 %i.bi, %i.bj
  %i.bl = lshr i32 %i.as, %i.bg
  %i.bm = or i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.ae
  br i1 %exitcond.not.i, label %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit: ; preds = %bb.f, %bb.d
  store i32 0, ptr %13, align 4, !tbaa !46
  store i32 %i.r, ptr %i.e, align 4, !tbaa !45
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit

bb.g:                                             ; preds = %bb.c
  call void @_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE1EEEvPT_S3_ibRNS_12BufferAccessE(ptr noundef %spec.select75, ptr noundef nonnull %i.j, i32 noundef %i.a, i1 noundef zeroext %spec.select, ptr noundef nonnull align 4 dereferenceable(8) %13)
  %.pre.pre = load i32, ptr %13, align 4, !tbaa !46
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split

bb.h:                                             ; preds = %bb.c
  %.pre.pre102 = load i32, ptr %13, align 4, !tbaa !46 ; 2 uses
  br i1 %i.s, label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.bn = sext i32 %.pre.pre102 to i64            ; 3 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr %spec.select75, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !16
  %i.bq = lshr i16 %i.bp, 6
  %i.br = zext nneg i16 %i.bq to i32              ; 3 uses
  br i1 %spec.select, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  br i1 %exitcond.peel.not.i, label %.split.us.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %bb.i
  %invariant.gep115 = getelementptr [2 x i8], ptr %spec.select75, i64 %i.bn
  br label %.preheader.split.i

bb.j:                                             ; preds = %.preheader.i
  %i.bs = shl nuw nsw i32 %i.br, 20               ; 2 uses
  br i1 %exitcond.peel.not.i, label %.split.us.i, label %.preheader.split.us.i.preheader

.preheader.split.us.i.preheader:                  ; preds = %bb.j
  %invariant.gep117 = getelementptr [2 x i8], ptr %spec.select75, i64 %i.bn
  br label %.preheader.split.us.i

.preheader.split.us.i:                            ; preds = %.preheader.split.us.i.preheader, %bb.l
  %indvars.iv96 = phi i64 [ 1, %.preheader.split.us.i.preheader ], [ %indvars.iv.next97, %bb.l ] ; 3 uses
  %.03034.us.i = phi i32 [ %i.bs, %.preheader.split.us.i.preheader ], [ %i.cj, %bb.l ] ; 2 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv96 to i32  ; 2 uses
  %i.bu = urem i32 %i.bt, 3                       ; 2 uses
  %i.bv = udiv i32 %i.bt, 3
  %i.bw = icmp eq i32 %i.bu, 0
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.split.us.i
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr [4 x i8], ptr %i.j, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  store i32 %.03034.us.i, ptr %i.bz, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.split.us.i
  %.1.us.i = phi i32 [ 0, %bb.k ], [ %.03034.us.i, %.preheader.split.us.i ]
  %i.ca = sub nuw nsw i32 2, %i.bu
  %gep118 = getelementptr [2 x i8], ptr %invariant.gep117, i64 %indvars.iv96
  %i.cb = load i16, ptr %gep118, align 2, !tbaa !16
  %i.cc = lshr i16 %i.cb, 6
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.ca, 10               ; 2 uses
  %i.cf = shl nuw nsw i32 1023, %i.ce
  %i.cg = xor i32 %i.cf, -1
  %i.ch = and i32 %.1.us.i, %i.cg
  %i.ci = shl nuw nsw i32 %i.cd, %i.ce
  %i.cj = or i32 %i.ci, %i.ch                     ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next97, %i.ae
  br i1 %exitcond38.not.i, label %.split.us.i, label %.preheader.split.us.i, !llvm.loop !2

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %bb.n
  %indvars.iv93 = phi i64 [ 1, %.preheader.split.i.preheader ], [ %indvars.iv.next94, %bb.n ] ; 3 uses
  %.03034.i = phi i32 [ %i.br, %.preheader.split.i.preheader ], [ %i.cz, %bb.n ] ; 2 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv93 to i32  ; 2 uses
  %i.cl = urem i32 %i.ck, 3                       ; 2 uses
  %i.cm = udiv i32 %i.ck, 3
  %i.cn = icmp eq i32 %i.cl, 0
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.split.i
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = getelementptr [4 x i8], ptr %i.j, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4
  store i32 %.03034.i, ptr %i.cq, align 4, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.split.i
  %.1.i = phi i32 [ 0, %bb.m ], [ %.03034.i, %.preheader.split.i ]
  %gep116 = getelementptr [2 x i8], ptr %invariant.gep115, i64 %indvars.iv93
  %i.cr = load i16, ptr %gep116, align 2, !tbaa !16
  %i.cs = lshr i16 %i.cr, 6
  %i.ct = zext nneg i16 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.cl, 10               ; 2 uses
  %i.cv = shl nuw nsw i32 1023, %i.cu
  %i.cw = xor i32 %i.cv, -1
  %i.cx = and i32 %.1.i, %i.cw
  %i.cy = shl nuw nsw i32 %i.ct, %i.cu
  %i.cz = or i32 %i.cy, %i.cx                     ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next94, %i.ae
  br i1 %exitcond.not.i70, label %.split.us.i, label %.preheader.split.i, !llvm.loop !3

.split.us.i:                                      ; preds = %bb.n, %bb.l, %bb.j, %bb.i
  %.us-phi.i = phi i32 [ %i.cj, %bb.l ], [ %i.bs, %bb.j ], [ %i.br, %bb.i ], [ %i.cz, %bb.n ]
  store i32 %.us-phi.i, ptr %i.x, align 4, !tbaa !11
  store i32 0, ptr %13, align 4, !tbaa !46
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !45
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit

_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split: ; preds = %bb.g, %bb.h
  %.pre.ph = phi i32 [ %.pre.pre, %bb.g ], [ %.pre.pre102, %bb.h ]
  %.pr = load i32, ptr %i.e, align 4, !tbaa !45
  %i.da = sext i32 %.pre.ph to i64
  br label %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit

_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit: ; preds = %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split, %.split.us.i, %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit
  %i.db = phi i32 [ %.pr, %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split ], [ %i.ac, %.split.us.i ], [ %i.r, %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit ] ; 2 uses
  %.pre = phi i64 [ %i.da, %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exitthread-pre-split ], [ 0, %.split.us.i ], [ 0, %_ZN3dpx17WritePackedMethodItLi10EEEvPT_S2_ibRNS_12BufferAccessE.exit ] ; 2 uses
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = shl nsw i64 %i.dc, 1                    ; 3 uses
  %i.de = trunc i64 %i.dd to i32
  %i.df = add i32 %.06683, %i.de                  ; 3 uses
  br i1 %12, label %bb.o, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit

bb.o:                                             ; preds = %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.pre ; 2 uses
  %i.dh = ashr i64 %i.dc, 1                       ; 4 uses
  %.not.i.i.i18.i = icmp ult i32 %i.db, 2
  br i1 %.not.i.i.i18.i, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i.preheader

.lr.ph.i.i.i19.i.preheader:                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i19.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i19.i.preheader
  %n.vec = and i64 %i.dh, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.di, align 4, !tbaa !11
  %wide.load121 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !11
  %i.dk = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.dl = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load121)
  store <4 x i32> %i.dk, ptr %i.di, align 4, !tbaa !11
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i.preheader122

.lr.ph.i.i.i19.i.preheader122:                    ; preds = %.lr.ph.i.i.i19.i.preheader, %middle.block
  %.06.i.i.i20.i.ph = phi i64 [ 0, %.lr.ph.i.i.i19.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i19.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i.i.i19.i.preheader122, %.lr.ph.i.i.i19.i
  %.06.i.i.i20.i = phi i64 [ %i.dq, %.lr.ph.i.i.i19.i ], [ %.06.i.i.i20.i.ph, %.lr.ph.i.i.i19.i.preheader122 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.06.i.i.i20.i ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !11
  %i.dp = call noundef i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !11
  %i.dq = add nuw i64 %.06.i.i.i20.i, 1           ; 2 uses
  %exitcond.not.i.i.i21.i = icmp eq i64 %i.dq, %i.dh
  br i1 %exitcond.not.i.i.i21.i, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i, !llvm.loop !99

_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit:  ; preds = %.lr.ph.i.i.i19.i, %middle.block, %_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE2EEEvPT_S3_ibRNS_12BufferAccessE.exit, %bb.o
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.j, i64 %.pre
  %i.ds = load ptr, ptr %0, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.dr, i64 noundef %i.dd), !inline_history !0
  %i.dw = icmp eq i64 %i.dv, %i.dd
  br i1 %i.dw, label %bb.p, label %.loopexit.sink.split

bb.p:                                             ; preds = %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = add nsw i32 %i.df, %9                   ; 2 uses
  %i.dy = load ptr, ptr %0, align 8, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef i64 %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %10, i64 noundef %i.ad), !inline_history !0
  %i.ec = icmp eq i64 %i.eb, %i.ad
  br i1 %i.ec, label %bb.r, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2.ph = phi i32 [ %i.df, %bb.p ], [ %i.dx, %bb.q ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !100

.loopexit.sink.split:                             ; preds = %bb.q, %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit
  %.3.ph = phi i32 [ %i.df, %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit ], [ %i.dx, %bb.q ]
  store i8 0, ptr %11, align 1, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.loopexit.sink.split, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %.3.ph, %.loopexit.sink.split ], [ %.2.ph, %bb.r ]
  call void @_ZdaPv(ptr noundef nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3dpx11WriteBufferItLi12ELb1EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbbiPcRbb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11, i1 noundef zeroext %12) local_unnamed_addr #1 {
bb.a:
  %i.a = mul i32 %5, %3                           ; 11 uses
  br i1 %7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3
  %i.c = add nuw nsw i32 %i.b, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = add i32 %i.a, 1
  %i.f = add i32 %i.e, %i.d
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #18 ; 20 uses
  %.not92 = icmp eq i32 %4, 0
  br i1 %.not92, label %.loopexit82, label %.lr.ph91

.lr.ph91:                                         ; preds = %._crit_edge
  %i.j = icmp sgt i32 %i.a, 0                     ; 5 uses
  %wide.trip.count.i28.i = zext i32 %i.a to i64   ; 14 uses
  %i.k = mul nsw i32 %i.a, 12                     ; 2 uses
  %i.l = sdiv i32 %i.k, 32
  %i.m = and i32 %i.k, 28
  %.not.i = icmp ne i32 %i.m, 0
  %i.n = zext i1 %.not.i to i32
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1                      ; 2 uses
  %i.q = icmp eq i32 %6, 0
  %.not = icmp eq i32 %9, 0
  %i.r = sext i32 %9 to i64                       ; 2 uses
  %i.s = shl nuw nsw i64 %wide.trip.count.i28.i, 1
  %wide.trip.count108 = zext i32 %4 to i64
  %min.iters.check209 = icmp ult i32 %i.a, 4
  %n.vec211 = and i64 %wide.trip.count.i28.i, 2147483644 ; 3 uses
  %cmp.n218 = icmp eq i64 %n.vec211, %wide.trip.count.i28.i
  %min.iters.check197 = icmp ult i32 %i.a, 8
  %n.vec199 = and i64 %wide.trip.count.i28.i, 2147483640 ; 3 uses
  %cmp.n206 = icmp eq i64 %n.vec199, %wide.trip.count.i28.i
  %min.iters.check170 = icmp ult i32 %i.a, 4
  %min.iters.check172 = icmp ult i32 %i.a, 16
  %i.t = and i64 %wide.trip.count.i28.i, 12
  %n.vec174 = and i64 %wide.trip.count.i28.i, 2147483632 ; 4 uses
  %cmp.n181 = icmp eq i64 %n.vec174, %wide.trip.count.i28.i
  %min.epilog.iters.check186 = icmp eq i64 %i.t, 0
  %n.vec188 = and i64 %wide.trip.count.i28.i, 2147483644 ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec188, %wide.trip.count.i28.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph91, %bb.p
  %indvars.iv105 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next106, %bb.p ] ; 2 uses
  %.06789 = phi i32 [ 0, %.lr.ph91 ], [ %.2.ph, %bb.p ]
  %.sroa.10.088 = phi i32 [ %i.a, %.lr.ph91 ], [ %.sroa.10.1, %bb.p ] ; 9 uses
  %i.u = tail call noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %1)
  %i.v = trunc nuw i64 %indvars.iv105 to i32      ; 2 uses
  %i.w = mul i32 %i.a, %i.v
  %i.x = mul i32 %i.w, %i.u
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %2, i64 %i.y
  %i.aa = mul i32 %9, %i.v
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab   ; 8 uses
  switch i32 %1, label %_ZN3dpx15CopyWriteBufferItEEvNS_8DataSizeEPhPT_i.exit [
    i32 0, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN3dpx16WriteFloatBufferIdLi64ELb0EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbiPcRbb:bb.a
  br i1 %min.iters.check110, label %.lr.ph.i23.i.preheader125, label %vector.body113

vector.body113:                                   ; preds = %.lr.ph.i23.i.preheader, %vector.body113
  %index114 = phi i64 [ %index.next117, %vector.body113 ], [ 0, %.lr.ph.i23.i.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index114 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index114 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %wide.load115 = load <2 x float>, ptr %i.aw, align 4, !tbaa !41
  %wide.load116 = load <2 x float>, ptr %i.ay, align 4, !tbaa !41
  %i.az = fpext <2 x float> %wide.load115 to <2 x double>
  %i.ba = fpext <2 x float> %wide.load116 to <2 x double>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x double> %i.az, ptr %i.ax, align 8, !tbaa !43
  store <2 x double> %i.ba, ptr %i.bb, align 8, !tbaa !43
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.bc, label %middle.block118, label %vector.body113, !llvm.loop !169

middle.block118:                                  ; preds = %vector.body113
  br i1 %cmp.n119, label %_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i23.i.preheader125

.lr.ph.i23.i.preheader125:                        ; preds = %.lr.ph.i23.i.preheader, %middle.block118
  %indvars.iv.i24.i.ph = phi i64 [ 0, %.lr.ph.i23.i.preheader ], [ %n.vec112, %middle.block118 ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader125, %.lr.ph.i23.i
  %indvars.iv.i24.i = phi i64 [ %indvars.iv.next.i25.i, %.lr.ph.i23.i ], [ %indvars.iv.i24.i.ph, %.lr.ph.i23.i.preheader125 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i24.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i24.i
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !41
  %i.bg = fpext float %i.bf to double
  store double %i.bg, ptr %i.be, align 8, !tbaa !43
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i24.i, 1 ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i26.i, label %_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i23.i, !llvm.loop !170

bb.g:                                             ; preds = %bb.c
  br i1 %i.i, label %.lr.ph.i29.i.preheader, label %_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i29.i.preheader:                           ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 8 %i.z, i64 %i.q, i1 false), !tbaa !43
  br label %_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit

_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit: ; preds = %.lr.ph.i23.i, %.lr.ph.i17.i, %.lr.ph.i.i, %middle.block118, %middle.block106, %middle.block94, %.lr.ph.i29.i.preheader, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bh = add i32 %.05165, %i.l                   ; 3 uses
  br i1 %brmerge.not, label %.lr.ph.i.i.i19.i.preheader, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit

.lr.ph.i.i.i19.i.preheader:                       ; preds = %_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit
  br i1 %min.iters.check, label %.lr.ph.i.i.i19.i.preheader121, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.i19.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i19.i.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !11
  %wide.load84 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !11
  %i.bk = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.bl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load84)
  store <4 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !11
  store <4 x i32> %i.bl, ptr %i.bj, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i.preheader121

.lr.ph.i.i.i19.i.preheader121:                    ; preds = %.lr.ph.i.i.i19.i.preheader, %middle.block
  %.06.i.i.i20.i.ph = phi i64 [ 0, %.lr.ph.i.i.i19.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i19.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i.i.i19.i.preheader121, %.lr.ph.i.i.i19.i
  %.06.i.i.i20.i = phi i64 [ %i.bq, %.lr.ph.i.i.i19.i ], [ %.06.i.i.i20.i.ph, %.lr.ph.i.i.i19.i.preheader121 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06.i.i.i20.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = tail call noundef i32 @llvm.bswap.i32(i32 %i.bo)
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !11
  %i.bq = add nuw i64 %.06.i.i.i20.i, 1           ; 2 uses
  %exitcond.not.i.i.i21.i = icmp eq i64 %i.bq, %i.n
  br i1 %exitcond.not.i.i.i21.i, label %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit, label %.lr.ph.i.i.i19.i, !llvm.loop !172

_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit:  ; preds = %.lr.ph.i.i.i19.i, %middle.block, %_ZN3dpx15CopyWriteBufferIdEEvNS_8DataSizeEPhPT_i.exit
  %i.br = load ptr, ptr %0, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i64 %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i64 noundef %i.k), !inline_history !0
  %i.bv = icmp eq i64 %i.bu, %i.k
  br i1 %i.bv, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = add nsw i32 %i.bh, %8                   ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %9, i64 noundef %i.p), !inline_history !0
  %i.cb = icmp eq i64 %i.ca, %i.p
  br i1 %i.cb, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.ph = phi i32 [ %i.bh, %bb.h ], [ %i.bw, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !173

.loopexit.sink.split:                             ; preds = %bb.i, %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit
  %.3.ph = phi i32 [ %i.bh, %_ZN3dpx16EndianBufferSwapEiNS_7PackingEPvm.exit ], [ %i.bw, %bb.i ]
  store i8 0, ptr %10, align 1, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.sink.split, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %.3.ph, %.loopexit.sink.split ], [ %.2.ph, %bb.j ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer6FinishEv(ptr noundef nonnull align 8 dereferenceable(2080) initializes((24, 28)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = trunc i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %i.e, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = tail call noundef zeroext i1 @_ZN3dpx6Header15WriteOffsetDataEP9OutStream(ptr noundef nonnull align 4 dereferenceable(2049) %i.a, ptr noundef %i.g)
  ret i1 %i.h
}

declare noundef zeroext i1 @_ZN3dpx6Header15WriteOffsetDataEP9OutStream(ptr noundef nonnull align 4 dereferenceable(2049), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #12 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef zeroext i1 @_ZNK3dpx6Header17DetermineByteSwapEj(ptr noundef nonnull align 4 dereferenceable(2049), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3dpx25WritePackedMethodAB_10bitItLNS_7PackingE1EEEvPT_S3_ibRNS_12BufferAccessE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.pre41 = load i32, ptr %4, align 4, !tbaa !46  ; 3 uses
  %i.b = sext i32 %.pre41 to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !16   ; 2 uses
  %exitcond38.peel.not = icmp eq i32 %2, 1        ; 2 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = lshr i16 %i.d, 4
  %i.f = and i16 %i.e, 4092
  %i.g = zext nneg i16 %i.f to i32                ; 2 uses
  br i1 %exitcond38.peel.not, label %.split.us, label %.preheader.split

bb.c:                                             ; preds = %.preheader
  %i.h = lshr i16 %i.d, 6
  %i.i = zext nneg i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 22                     ; 2 uses
  br i1 %exitcond38.peel.not, label %.split.us, label %.preheader.split.us

.preheader.split.us:                              ; preds = %bb.c, %bb.e
  %i.k = phi i32 [ %i.r, %bb.e ], [ %.pre41, %bb.c ]
  %.03034.us = phi i32 [ %i.ag, %bb.e ], [ %i.j, %bb.c ] ; 2 uses
  %.03133.us = phi i32 [ %i.ah, %bb.e ], [ 1, %bb.c ] ; 4 uses
  %i.l = urem i32 %.03133.us, 3                   ; 2 uses
  %i.m = udiv i32 %.03133.us, 3
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.split.us
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr [4 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  store i32 %.03034.us, ptr %i.q, align 4, !tbaa !11
  %.pre42 = load i32, ptr %4, align 4, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.split.us
  %i.r = phi i32 [ %.pre42, %bb.d ], [ %i.k, %.preheader.split.us ] ; 2 uses
  %.1.us = phi i32 [ 0, %bb.d ], [ %.03034.us, %.preheader.split.us ]
  %i.s = sub nuw nsw i32 2, %i.l
  %i.t = add nsw i32 %i.r, %.03133.us
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %0, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !16
  %i.x = lshr i16 %i.w, 6
  %i.y = zext nneg i16 %i.x to i32
  %i.z = mul nuw nsw i32 %i.s, 10                 ; 2 uses
  %i.aa = shl nuw nsw i32 %i.y, %i.z
  %i.ab = shl nuw i32 %i.aa, 2
  %i.ac = shl nuw i32 4092, %i.z                  ; 2 uses
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %.1.us, %i.ad
  %i.af = and i32 %i.ab, %i.ac
  %i.ag = or i32 %i.af, %i.ae                     ; 2 uses
  %i.ah = add nuw nsw i32 %.03133.us, 1           ; 2 uses
  %exitcond38.not = icmp eq i32 %i.ah, %2
  br i1 %exitcond38.not, label %.split.us, label %.preheader.split.us, !llvm.loop !175

.preheader.split:                                 ; preds = %bb.b, %bb.g
  %i.ai = phi i32 [ %i.ap, %bb.g ], [ %.pre41, %bb.b ]
  %.03034 = phi i32 [ %i.bd, %bb.g ], [ %i.g, %bb.b ] ; 2 uses
  %.03133 = phi i32 [ %i.be, %bb.g ], [ 1, %bb.b ] ; 4 uses
  %i.aj = urem i32 %.03133, 3                     ; 2 uses
  %i.ak = udiv i32 %.03133, 3
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.split
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr [4 x i8], ptr %1, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  store i32 %.03034, ptr %i.ao, align 4, !tbaa !11
  %.pre40 = load i32, ptr %4, align 4, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.split
  %i.ap = phi i32 [ %.pre40, %bb.f ], [ %i.ai, %.preheader.split ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.f ], [ %.03034, %.preheader.split ]
  %i.aq = add nsw i32 %i.ap, %.03133
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !16
  %i.au = lshr i16 %i.at, 6
  %i.av = zext nneg i16 %i.au to i32
  %i.aw = mul nuw nsw i32 %i.aj, 10               ; 2 uses
  %i.ax = shl nuw nsw i32 %i.av, %i.aw
  %i.ay = shl nuw i32 %i.ax, 2
  %i.az = shl nuw i32 4092, %i.aw                 ; 2 uses
  %i.ba = xor i32 %i.az, -1
  %i.bb = and i32 %.1, %i.ba
  %i.bc = and i32 %i.ay, %i.az
  %i.bd = or i32 %i.bc, %i.bb                     ; 2 uses
  %i.be = add nuw nsw i32 %.03133, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %2
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !176

.split.us:                                        ; preds = %bb.g, %bb.e, %bb.b, %bb.c
  %.us-phi = phi i32 [ %i.ag, %bb.e ], [ %i.j, %bb.c ], [ %i.g, %bb.b ], [ %i.bd, %bb.g ]
  %i.bf = add nuw nsw i32 %2, 2
  %i.bg = udiv i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  store i32 %.us-phi, ptr %i.bj, align 4, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !46
  %i.bk = udiv i32 %2, 3
  %i.bl = urem i32 %2, 3
  %.not = icmp ne i32 %i.bl, 0
  %i.bm = zext i1 %.not to i32
  %i.bn = add nuw nsw i32 %i.bk, %i.bm
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.split.us
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12, !47}
!3 = distinct !{!3, !12, !47}
!4 = distinct !{!4, !12}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"short", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"float", !9, i64 0}
!21 = !{!"_ZTSN3dpx13GenericHeaderE", !10, i64 0, !10, i64 4, !9, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !9, i64 36, !9, i64 136, !9, i64 160, !9, i64 260, !9, i64 460, !10, i64 660, !9, i64 664, !15, i64 768, !15, i64 770, !10, i64 772, !10, i64 776, !9, i64 780, !9, i64 1356, !10, i64 1408, !10, i64 1412, !20, i64 1416, !20, i64 1420, !10, i64 1424, !10, i64 1428, !9, i64 1432, !9, i64 1532, !9, i64 1556, !9, i64 1588, !9, i64 1620, !9, i64 1628, !20, i64 1636, !20, i64 1640, !9, i64 1644}
!22 = !{!"_ZTSN3dpx14IndustryHeaderE", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6, !9, i64 12, !9, i64 16, !10, i64 48, !10, i64 52, !10, i64 56, !20, i64 60, !20, i64 64, !9, i64 68, !9, i64 100, !9, i64 200, !10, i64 256, !10, i64 260, !9, i64 264, !9, i64 265, !9, i64 266, !9, i64 267, !20, i64 268, !20, i64 272, !20, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !20, i64 292, !20, i64 296, !20, i64 300, !20, i64 304, !9, i64 308}
!23 = !{!"bool", !9, i64 0}
!24 = !{!"_ZTSN3dpx6HeaderE", !21, i64 0, !22, i64 1664, !23, i64 2048}
!25 = !{!"long", !9, i64 0}
!26 = !{!"any pointer", !9, i64 0}
!27 = !{!"p1 _ZTS9OutStream", !26, i64 0}
!28 = !{!"_ZTSN3dpx6WriterE", !24, i64 8, !25, i64 2064, !27, i64 2072}
!29 = !{!28, !25, i64 2064}
!30 = !{!21, !10, i64 0}
!31 = !{!"_ZTSN3dpx12ImageElementE", !10, i64 0, !10, i64 4, !20, i64 8, !10, i64 12, !20, i64 16, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !15, i64 24, !15, i64 26, !10, i64 28, !10, i64 32, !10, i64 36, !9, i64 40}
!32 = !{!31, !9, i64 20}
!33 = !{!28, !27, i64 2072}
!34 = !{!21, !10, i64 32}
!35 = !{!31, !9, i64 23}
!36 = !{!31, !15, i64 24}
!37 = !{!31, !15, i64 26}
!38 = !{!31, !10, i64 28}
!39 = !{!23, !23, i64 0}
!40 = !{!9, !9, i64 0}
!41 = !{!20, !20, i64 0}
!42 = !{!"double", !9, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSN3dpx12BufferAccessE", !10, i64 0, !10, i64 4}
!45 = !{!44, !10, i64 4}
!46 = !{!44, !10, i64 0}
!47 = !{!"llvm.loop.peeled.count", i32 1}
!48 = distinct !{!48, !12, !13, !14}
!49 = distinct !{!49, !12, !14, !13}
!50 = distinct !{!50, !12, !13, !14}
!51 = distinct !{!51, !12, !13, !14}
!52 = distinct !{!52, !12, !14, !13}
!53 = distinct !{!53, !12, !13, !14}
!54 = distinct !{!54, !12, !13, !14}
!55 = distinct !{!55, !12, !14, !13}
!56 = distinct !{!56, !12, !13, !14}
!57 = distinct !{!57, !12, !14, !13}
!58 = !{!"p1 omnipotent char", !26, i64 0}
!59 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !58, i64 0, !25, i64 8}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !25, i64 8}
!62 = !{!21, !10, i64 660}
!63 = !{!21, !15, i64 768}
!64 = !{!21, !10, i64 772}
!65 = !{!21, !10, i64 776}
!66 = !{!31, !10, i64 0}
!67 = !{!31, !10, i64 4}
!68 = !{!31, !20, i64 8}
!69 = !{!31, !10, i64 12}
!70 = !{!31, !20, i64 16}
!71 = !{!31, !9, i64 21}
!72 = !{!31, !9, i64 22}
!73 = !{!31, !10, i64 32}
!74 = !{!31, !10, i64 36}
!75 = !{!21, !10, i64 4}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12, !13, !14}
!80 = distinct !{!80, !12, !13, !14}
!81 = distinct !{!81, !12, !14, !13}
!82 = distinct !{!82, !12, !13, !14}
!83 = distinct !{!83, !12, !14, !13}
!84 = distinct !{!84, !12, !13, !14}
!85 = distinct !{!85, !12, !14, !13}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12, !13, !14}
!89 = distinct !{!89, !12, !13, !14}
!90 = distinct !{!90, !12, !14, !13}
!91 = distinct !{!91, !12, !13, !14}
!92 = distinct !{!92, !12, !14, !13}
!93 = distinct !{!93, !12, !13, !14}
!94 = distinct !{!94, !12, !14, !13}
!95 = distinct !{!95, !12, !13, !14}
!96 = distinct !{!96, !12, !14, !13}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12, !13, !14}
!99 = distinct !{!99, !12, !14, !13}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12, !13, !14}
!102 = distinct !{!102, !12, !13, !14}
end_hunk_1
