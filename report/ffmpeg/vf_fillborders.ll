Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fillborders?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@smear_borders16:bb.a
vector.main.loop.iter.check177:                   ; preds = %iter.check189
  br i1 %min.iters.check178, label %vec.epilog.ph193, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %broadcast.splatinsert181 = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat182 = shufflevector <8 x i16> %broadcast.splatinsert181, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph179
  %index184 = phi i64 [ 0, %vector.ph179 ], [ %index.next185, %vector.body183 ] ; 2 uses
  %i.bk = getelementptr [2 x i8], ptr %i.bi, i64 %index184 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <8 x i16> %broadcast.splat182, ptr %i.bk, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat182, ptr %i.bl, align 2, !tbaa !66
  %index.next185 = add nuw i64 %index184, 16      ; 2 uses
  %i.bm = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.bm, label %middle.block186, label %vector.body183, !llvm.loop !78

middle.block186:                                  ; preds = %vector.body183
  br i1 %cmp.n187, label %..preheader_crit_edge, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block186
  br i1 %min.epilog.iters.check192, label %vec.epilog.scalar.ph190.preheader, label %vec.epilog.ph193, !prof !73

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check177, %vec.epilog.iter.check191
  %vec.epilog.resume.val188 = phi i64 [ %n.vec180, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check177 ]
  %broadcast.splatinsert195 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat196 = shufflevector <4 x i16> %broadcast.splatinsert195, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body197

vec.epilog.vector.body197:                        ; preds = %vec.epilog.vector.body197, %vec.epilog.ph193
  %index198 = phi i64 [ %vec.epilog.resume.val188, %vec.epilog.ph193 ], [ %index.next199, %vec.epilog.vector.body197 ] ; 2 uses
  %i.bn = getelementptr [2 x i8], ptr %i.bi, i64 %index198
  store <4 x i16> %broadcast.splat196, ptr %i.bn, align 2, !tbaa !66
  %index.next199 = add nuw i64 %index198, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.bo, label %vec.epilog.middle.block200, label %vec.epilog.vector.body197, !llvm.loop !79

vec.epilog.middle.block200:                       ; preds = %vec.epilog.vector.body197
  br i1 %cmp.n201, label %..preheader_crit_edge, label %vec.epilog.scalar.ph190.preheader

vec.epilog.scalar.ph190.preheader:                ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block200
  %indvars.iv.ph = phi i64 [ 0, %iter.check189 ], [ %n.vec180, %vec.epilog.iter.check191 ], [ %n.vec194, %vec.epilog.middle.block200 ]
  br label %vec.epilog.scalar.ph190

..preheader_crit_edge:                            ; preds = %vec.epilog.scalar.ph190, %vec.epilog.middle.block200, %middle.block186
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.bp = icmp slt i64 %indvars.iv.next106, %i.bd
  br i1 %i.bp, label %iter.check189, label %.preheader86, !llvm.loop !77

vec.epilog.scalar.ph190:                          ; preds = %vec.epilog.scalar.ph190.preheader, %vec.epilog.scalar.ph190
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph190 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph190.preheader ] ; 2 uses
  %i.bq = getelementptr [2 x i8], ptr %i.bi, i64 %indvars.iv
  store i16 %.pre, ptr %i.bq, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..preheader_crit_edge, label %vec.epilog.scalar.ph190, !llvm.loop !80

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv121 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next122, %bb.c ] ; 2 uses
  %i.br = phi i32 [ %i.p, %.lr.ph ], [ %i.ca, %bb.c ]
  %i.bs = mul nsw i64 %indvars.iv121, %i.m
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.bs
  %i.bu = sext i32 %i.br to i64
  %i.bv = mul nsw i64 %i.bu, %i.m
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.bv
  %i.bx = load i32, ptr %i.bg, align 4, !tbaa !45
  %i.by = shl nsw i32 %i.bx, 1
  %i.bz = sext i32 %i.by to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bt, ptr align 2 %i.bw, i64 %i.bz, i1 false)
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.ca = load i32, ptr %i.o, align 4, !tbaa !55  ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next122, %i.cb
  br i1 %i.cc, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !81

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre132 = load i32, ptr %i.s, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader86
  %i.cd = phi i32 [ %.pre132, %._crit_edge.loopexit ], [ %i.t, %.preheader86 ] ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %._crit_edge
  %i.cf = load i32, ptr %i.q, align 4, !tbaa !45  ; 2 uses
  %i.cg = sub i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  %i.ci = sext i32 %i.cg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph97, %bb.d
  %indvars.iv124 = phi i64 [ %i.ci, %.lr.ph97 ], [ %indvars.iv.next125, %bb.d ] ; 2 uses
  %i.cj = phi i32 [ %i.cf, %.lr.ph97 ], [ %i.cv, %bb.d ]
  %i.ck = mul nsw i64 %indvars.iv124, %i.m
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ck
  %i.cm = load i32, ptr %i.s, align 4, !tbaa !56
  %i.cn = xor i32 %i.cm, -1
  %i.co = add i32 %i.cj, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, %i.m
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.cq
  %i.cs = load i32, ptr %i.ch, align 4, !tbaa !45
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = sext i32 %i.ct to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cl, ptr align 2 %i.cr, i64 %i.cu, i1 false)
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.cv = load i32, ptr %i.q, align 4, !tbaa !45  ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next125, %i.cw
  br i1 %i.cx, label %bb.d, label %._crit_edge98, !llvm.loop !82

._crit_edge98:                                    ; preds = %bb.d, %._crit_edge
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !39
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next128, %i.cz
  br i1 %i.da, label %bb.b, label %._crit_edge102, !llvm.loop !83

._crit_edge102:                                   ; preds = %._crit_edge98, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mirror_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph104, %._crit_edge101
  %indvars.iv116 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next117, %._crit_edge101 ] ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv116
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sext i32 %i.k to i64                     ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv116 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55   ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv116 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !45
  %i.s = load i32, ptr %i.q, align 4, !tbaa !56   ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.s
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %.preheader89.lr.ph, label %.preheader91

.preheader89.lr.ph:                               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv116
  %i.x = sext i32 %i.o to i64
  br label %.preheader89

.preheader91.loopexit:                            ; preds = %._crit_edge
  %.pre = load i32, ptr %i.n, align 4, !tbaa !55
  br label %.preheader91

.preheader91:                                     ; preds = %.preheader91.loopexit, %bb.b
  %i.y = phi i32 [ %i.bi, %.preheader91.loopexit ], [ %i.s, %bb.b ]
  %i.z = phi i32 [ %.pre, %.preheader91.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph98, label %.preheader90

.lr.ph98:                                         ; preds = %.preheader91
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv116
  br label %bb.e

.preheader89:                                     ; preds = %.preheader89.lr.ph, %._crit_edge
  %indvars.iv110 = phi i64 [ %i.x, %.preheader89.lr.ph ], [ %indvars.iv.next111, %._crit_edge ] ; 3 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader89
  %i.ae = mul nsw i64 %indvars.iv110, %i.l
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ae   ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %bb.c, %.preheader89
  %i.ag = load i32, ptr %i.v, align 4, !tbaa !54  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph95, label %._crit_edge

.lr.ph95:                                         ; preds = %.preheader
  %i.ai = mul nsw i64 %indvars.iv110, %i.l
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aj = phi i32 [ %i.ac, %.lr.ph ], [ %i.aq, %bb.c ]
  %i.ak = shl nsw i32 %i.aj, 1
  %2 = sext i32 %i.ak to i64
  %i.al = xor i64 %indvars.iv, -1
  %i.am = getelementptr i8, ptr %i.af, i64 %2
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !58
  %i.ap = getelementptr i8, ptr %i.af, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.c, label %.preheader, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph95, %bb.d
  %indvars.iv107 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next108, %bb.d ] ; 3 uses
  %i.at = phi i32 [ %i.ag, %.lr.ph95 ], [ %i.be, %bb.d ]
  %i.au = load i32, ptr %i.w, align 4, !tbaa !45
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.at to i64
  %i.ax = sub nsw i64 %i.ai, %i.aw
  %i.ay = xor i64 %indvars.iv107, -1
  %i.az = getelementptr i8, ptr %i.i, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.av  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !58
  %i.bd = getelementptr i8, ptr %i.ba, i64 %indvars.iv107
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !58
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.be = load i32, ptr %i.v, align 4, !tbaa !54  ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next108, %i.bf
  br i1 %i.bg, label %bb.d, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !45
  %i.bi = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.bj = sub nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next111, %i.bk
  br i1 %i.bl, label %.preheader89, label %.preheader91.loopexit, !llvm.loop !86

.preheader90.loopexit:                            ; preds = %bb.e
  %.pre119 = load i32, ptr %i.q, align 4, !tbaa !56
  br label %.preheader90

.preheader90:                                     ; preds = %.preheader90.loopexit, %.preheader91
  %i.bm = phi i32 [ %.pre119, %.preheader90.loopexit ], [ %i.y, %.preheader91 ] ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %.preheader90
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv116
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph98, %bb.e
  %indvars.iv113 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next114, %bb.e ] ; 3 uses
  %i.bp = phi i32 [ %i.z, %.lr.ph98 ], [ %i.cb, %bb.e ]
  %i.bq = mul nsw i64 %indvars.iv113, %i.l
  %i.br = getelementptr inbounds i8, ptr %i.i, i64 %i.bq
  %i.bs = shl nsw i32 %i.bp, 1
  %i.bt = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.bu = xor i32 %i.bt, -1
  %i.bv = add i32 %i.bs, %i.bu
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.l
  %i.by = getelementptr inbounds i8, ptr %i.i, i64 %i.bx
  %i.bz = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ca = sext i32 %i.bz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.by, i64 %i.ca, i1 false)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.cb = load i32, ptr %i.n, align 4, !tbaa !55  ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next114, %i.cc
  br i1 %i.cd, label %bb.e, label %.preheader90.loopexit, !llvm.loop !87

bb.f:                                             ; preds = %.lr.ph100, %bb.f
  %i.ce = phi i32 [ %i.bm, %.lr.ph100 ], [ %i.ct, %bb.f ]
  %.299 = phi i32 [ 0, %.lr.ph100 ], [ %i.cs, %bb.f ] ; 3 uses
  %i.cf = load i32, ptr %i.p, align 4, !tbaa !45
  %i.cg = sub nsw i32 %i.cf, %i.ce                ; 2 uses
  %i.ch = add nsw i32 %i.cg, %.299
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.l
  %i.ck = getelementptr inbounds i8, ptr %i.i, i64 %i.cj
  %i.cl = xor i32 %.299, -1
  %i.cm = add i32 %i.cg, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, %i.l
  %i.cp = getelementptr inbounds i8, ptr %i.i, i64 %i.co
  %i.cq = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.cr = sext i32 %i.cq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.cp, i64 %i.cr, i1 false)
  %i.cs = add nuw nsw i32 %.299, 1                ; 2 uses
  %i.ct = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.f, label %._crit_edge101, !llvm.loop !88

._crit_edge101:                                   ; preds = %bb.f, %.preheader90
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !39
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next117, %i.cw
  br i1 %i.cx, label %bb.b, label %._crit_edge105, !llvm.loop !89

._crit_edge105:                                   ; preds = %._crit_edge101, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mirror_borders16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph104, %._crit_edge101
  %indvars.iv118 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next119, %._crit_edge101 ] ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv118
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sdiv i32 %i.k, 2
  %i.m = sext i32 %i.l to i64                     ; 6 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv118 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55   ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv118 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56   ; 2 uses
  %i.u = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = icmp slt i32 %i.p, %i.u
  br i1 %i.v, label %.preheader89.lr.ph, label %.preheader91

.preheader89.lr.ph:                               ; preds = %bb.b
  %i.w = load i32, ptr %i.n, align 4, !tbaa !52   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !54 ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = sext i32 %i.p to i64
  %i.ag = sext i32 %i.u to i64
  %wide.trip.count = zext i32 %i.w to i64         ; 2 uses
  %wide.trip.count110 = zext i32 %i.ab to i64     ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ah = icmp ult i32 %i.w, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod134 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.ab, 4
  %min.iters.check125 = icmp ult i32 %i.ab, 16
  %i.ai = and i64 %wide.trip.count110, 12
  %n.vec = and i64 %wide.trip.count110, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count110
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  %n.vec128 = and i64 %wide.trip.count110, 2147483644 ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec128, %wide.trip.count110
  br label %.preheader89

.preheader91:                                     ; preds = %._crit_edge, %bb.b
  %i.aj = icmp sgt i32 %i.p, 0
  br i1 %i.aj, label %.lr.ph98, label %.preheader90

.lr.ph98:                                         ; preds = %.preheader91
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118
  br label %bb.d

.preheader89:                                     ; preds = %.preheader89.lr.ph, %._crit_edge
  %indvars.iv112 = phi i64 [ %i.af, %.preheader89.lr.ph ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  br i1 %i.x, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader89
  %i.al = mul nsw i64 %indvars.iv112, %i.m
  %i.am = getelementptr [2 x i8], ptr %i.i, i64 %i.al ; 6 uses
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.z ; 5 uses
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.new

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ao = xor i64 %indvars.iv.epil, -1
  %i.ap = getelementptr [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !66
  %i.ar = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv.epil
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !66
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.c, !llvm.loop !90

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.c, %.preheader89
  br i1 %i.ac, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.as = mul nsw i64 %indvars.iv112, %i.m
  %i.at = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 %i.as, %i.ae
  %i.aw = getelementptr [2 x i8], ptr %i.i, i64 %i.av
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.au ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ay = xor i64 %index, -1
  %i.az = getelementptr [2 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -14
  %i.bb = getelementptr i8, ptr %i.az, i64 -30
  %wide.load = load <8 x i16>, ptr %i.ba, align 2, !tbaa !66
  %wide.load126 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !66
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse127 = shufflevector <8 x i16> %wide.load126, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bc = getelementptr [2 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store <8 x i16> %reverse, ptr %i.bc, align 2, !tbaa !66
  store <8 x i16> %reverse127, ptr %i.bd, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 3 uses
  %i.bf = xor i64 %index129, -1
  %i.bg = getelementptr [2 x i8], ptr %i.ax, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -6
  %wide.load130 = load <4 x i16>, ptr %i.bh, align 2, !tbaa !66
  %reverse131 = shufflevector <4 x i16> %wide.load130, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bi = getelementptr [2 x i8], ptr %i.ax, i64 %index129
  store <4 x i16> %reverse131, ptr %i.bi, align 2, !tbaa !66
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n133, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv107.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec128, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.bk = xor i64 %indvars.iv, -1
  %i.bl = getelementptr [2 x i8], ptr %i.an, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !66
  %i.bn = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !66
  %i.bo = xor i64 %indvars.iv, -2
  %i.bp = getelementptr [2 x i8], ptr %i.an, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !66
  %i.br = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 2
  store i16 %i.bq, ptr %i.bs, align 2, !tbaa !66
  %i.bt = xor i64 %indvars.iv, -3
  %i.bu = getelementptr [2 x i8], ptr %i.an, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !66
  %i.bw = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  store i16 %i.bv, ptr %i.bx, align 2, !tbaa !66
  %i.by = xor i64 %indvars.iv, -4
  %i.bz = getelementptr [2 x i8], ptr %i.an, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !66
  %i.cb = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 6
  store i16 %i.ca, ptr %i.cc, align 2, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !94

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %vec.epilog.scalar.ph ], [ %indvars.iv107.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cd = xor i64 %indvars.iv107, -1
  %i.ce = getelementptr [2 x i8], ptr %i.ax, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !66
  %i.cg = getelementptr [2 x i8], ptr %i.ax, i64 %indvars.iv107
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !66
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ch = icmp slt i64 %indvars.iv.next113, %i.ag
  br i1 %i.ch, label %.preheader89, label %.preheader91, !llvm.loop !96

.preheader90.loopexit:                            ; preds = %bb.d
  %.pre = load i32, ptr %i.s, align 4, !tbaa !56
  br label %.preheader90

.preheader90:                                     ; preds = %.preheader90.loopexit, %.preheader91
  %i.ci = phi i32 [ %.pre, %.preheader90.loopexit ], [ %i.t, %.preheader91 ] ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %.preheader90
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv118
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph98, %bb.d
  %indvars.iv115 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next116, %bb.d ] ; 3 uses
  %i.cl = phi i32 [ %i.p, %.lr.ph98 ], [ %i.cy, %bb.d ]
  %i.cm = mul nsw i64 %indvars.iv115, %i.m
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.cm
  %i.co = shl nsw i32 %i.cl, 1
  %i.cp = trunc nuw nsw i64 %indvars.iv115 to i32
  %i.cq = xor i32 %i.cp, -1
  %i.cr = add i32 %i.co, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cs, %i.m
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ct
  %i.cv = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = sext i32 %i.cw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cn, ptr align 2 %i.cu, i64 %i.cx, i1 false)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.cy = load i32, ptr %i.o, align 4, !tbaa !55  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next116, %i.cz
  br i1 %i.da, label %bb.d, label %.preheader90.loopexit, !llvm.loop !97

bb.e:                                             ; preds = %.lr.ph100, %bb.e
  %i.db = phi i32 [ %i.ci, %.lr.ph100 ], [ %i.dr, %bb.e ]
  %.299 = phi i32 [ 0, %.lr.ph100 ], [ %i.dq, %bb.e ] ; 3 uses
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !45
  %i.dd = sub nsw i32 %i.dc, %i.db                ; 2 uses
  %i.de = add nsw i32 %i.dd, %.299
  %i.df = sext i32 %i.de to i64
  %i.dg = mul nsw i64 %i.df, %i.m
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.dg
  %i.di = xor i32 %.299, -1
  %i.dj = add i32 %i.dd, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.dk, %i.m
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.dl
  %i.dn = load i32, ptr %i.ck, align 4, !tbaa !45
  %i.do = shl nsw i32 %i.dn, 1
  %i.dp = sext i32 %i.do to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dh, ptr align 2 %i.dm, i64 %i.dp, i1 false)
  %i.dq = add nuw nsw i32 %.299, 1                ; 2 uses
  %i.dr = load i32, ptr %i.s, align 4, !tbaa !56  ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.e, label %._crit_edge101, !llvm.loop !98

._crit_edge101:                                   ; preds = %bb.e, %.preheader90
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !39
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next119, %i.du
  br i1 %i.dv, label %bb.b, label %._crit_edge105, !llvm.loop !99

._crit_edge105:                                   ; preds = %._crit_edge101, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fixed_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph67, %._crit_edge64
  %indvars.iv76 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next77, %._crit_edge64 ] ; 9 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv76
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58    ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv76 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !55   ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv76 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !45
  %i.v = load i32, ptr %i.t, align 4, !tbaa !56   ; 2 uses
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = icmp slt i32 %i.r, %i.w
  br i1 %i.x, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv76
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.aa = sext i32 %i.r to i64
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.c
  %.pre = load i32, ptr %i.q, align 4, !tbaa !55
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.b
  %i.ab = phi i32 [ %i.ar, %.preheader.loopexit ], [ %i.v, %bb.b ]
  %i.ac = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.r, %bb.b ]
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv76
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.af = mul nsw i64 %indvars.iv, %i.o
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.p, align 4, !tbaa !52
  %i.ai = sext i32 %i.ah to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 %i.l, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.y, align 4, !tbaa !45
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.z, align 4, !tbaa !54
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 %i.l, i64 %i.an, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = load i32, ptr %i.s, align 4, !tbaa !45
  %i.ar = load i32, ptr %i.t, align 4, !tbaa !56  ; 2 uses
  %i.as = sub nsw i32 %i.aq, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.c, label %.preheader.loopexit, !llvm.loop !100

bb.d:                                             ; preds = %.lr.ph60, %bb.d
  %indvars.iv70 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next71, %bb.d ] ; 2 uses
  %i.av = mul nsw i64 %indvars.iv70, %i.o
  %i.aw = getelementptr inbounds i8, ptr %i.j, i64 %i.av
  %i.ax = load i32, ptr %i.ae, align 4, !tbaa !45
  %i.ay = sext i32 %i.ax to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 %i.l, i64 %i.ay, i1 false)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.az = load i32, ptr %i.q, align 4, !tbaa !55
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next71, %i.ba
  br i1 %i.bb, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre79 = load i32, ptr %i.t, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bc = phi i32 [ %.pre79, %._crit_edge.loopexit ], [ %i.ab, %.preheader ] ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge
  %i.be = load i32, ptr %i.s, align 4, !tbaa !45
  %i.bf = sub i32 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv76
  %i.bh = sext i32 %i.bf to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph63, %bb.e
  %indvars.iv73 = phi i64 [ %i.bh, %.lr.ph63 ], [ %indvars.iv.next74, %bb.e ] ; 2 uses
  %i.bi = mul nsw i64 %indvars.iv73, %i.o
  %i.bj = getelementptr inbounds i8, ptr %i.j, i64 %i.bi
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !45
  %i.bl = sext i32 %i.bk to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bj, i8 %i.l, i64 %i.bl, i1 false)
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.bm = load i32, ptr %i.s, align 4, !tbaa !45
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next74, %i.bn
  br i1 %i.bo, label %bb.e, label %._crit_edge64, !llvm.loop !102

._crit_edge64:                                    ; preds = %bb.e, %._crit_edge
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !39
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next77, %i.bq
  br i1 %i.br, label %bb.b, label %._crit_edge68, !llvm.loop !103

._crit_edge68:                                    ; preds = %._crit_edge64, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fixed_borders16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge94

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %i.g = add nsw i32 %i.f, -8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %wide.trip.count134 = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge91.split
end_hunk_0
begin_hunk_1_@fixed_borders16:bb.a

iter.check165:                                    ; preds = %.preheader74.preheader, %._crit_edge
  %indvars.iv118 = phi i64 [ 0, %.preheader74.preheader ], [ %indvars.iv.next119, %._crit_edge ] ; 2 uses
  %i.cf = mul nsw i64 %indvars.iv118, %i.v
  %i.cg = getelementptr [2 x i8], ptr %i.m, i64 %i.cf ; 3 uses
  br i1 %min.iters.check152, label %vec.epilog.scalar.ph166.preheader, label %vector.main.loop.iter.check153

vector.main.loop.iter.check153:                   ; preds = %iter.check165
  br i1 %min.iters.check154, label %vec.epilog.ph169, label %vector.body159

vector.body159:                                   ; preds = %vector.main.loop.iter.check153, %vector.body159
  %index160 = phi i64 [ %index.next161, %vector.body159 ], [ 0, %vector.main.loop.iter.check153 ] ; 2 uses
  %i.ch = getelementptr [2 x i8], ptr %i.cg, i64 %index160 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store <8 x i16> %broadcast.splat158, ptr %i.ch, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat158, ptr %i.ci, align 2, !tbaa !66
  %index.next161 = add nuw i64 %index160, 16      ; 2 uses
  %i.cj = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.cj, label %middle.block162, label %vector.body159, !llvm.loop !114

middle.block162:                                  ; preds = %vector.body159
  br i1 %cmp.n163, label %._crit_edge, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block162
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph166.preheader, label %vec.epilog.ph169, !prof !73

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check153, %vec.epilog.iter.check167
  %vec.epilog.resume.val164 = phi i64 [ %n.vec156, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check153 ]
  br label %vec.epilog.vector.body173

vec.epilog.vector.body173:                        ; preds = %vec.epilog.vector.body173, %vec.epilog.ph169
  %index174 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph169 ], [ %index.next175, %vec.epilog.vector.body173 ] ; 2 uses
  %i.ck = getelementptr [2 x i8], ptr %i.cg, i64 %index174
  store <4 x i16> %broadcast.splat172, ptr %i.ck, align 2, !tbaa !66
  %index.next175 = add nuw i64 %index174, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.cl, label %vec.epilog.middle.block176, label %vec.epilog.vector.body173, !llvm.loop !115

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body173
  br i1 %cmp.n177, label %._crit_edge, label %vec.epilog.scalar.ph166.preheader

vec.epilog.scalar.ph166.preheader:                ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block176
  %indvars.iv113.ph = phi i64 [ 0, %iter.check165 ], [ %n.vec156, %vec.epilog.iter.check167 ], [ %n.vec170, %vec.epilog.middle.block176 ]
  br label %vec.epilog.scalar.ph166

vec.epilog.scalar.ph166:                          ; preds = %vec.epilog.scalar.ph166.preheader, %vec.epilog.scalar.ph166
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %vec.epilog.scalar.ph166 ], [ %indvars.iv113.ph, %vec.epilog.scalar.ph166.preheader ] ; 2 uses
  %i.cm = getelementptr [2 x i8], ptr %i.cg, i64 %indvars.iv113
  store i16 %i.r, ptr %i.cm, align 2, !tbaa !66
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge, label %vec.epilog.scalar.ph166, !llvm.loop !116

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph166, %vec.epilog.middle.block176, %middle.block162
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %.preheader77, label %iter.check165, !llvm.loop !117

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge89
  %indvars.iv128 = phi i64 [ %i.cc, %.preheader.preheader ], [ %indvars.iv.next129, %._crit_edge89 ] ; 2 uses
  %i.cn = mul nsw i64 %indvars.iv128, %i.v
  %i.co = getelementptr [2 x i8], ptr %i.m, i64 %i.cn ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.cp = getelementptr [2 x i8], ptr %i.co, i64 %index ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.cp, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.cq, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge89, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = getelementptr [2 x i8], ptr %i.co, i64 %index149
  store <4 x i16> %broadcast.splat148, ptr %i.cs, align 2, !tbaa !66
  %index.next150 = add nuw i64 %index149, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n151, label %._crit_edge89, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv123.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec146, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %vec.epilog.scalar.ph ], [ %indvars.iv123.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cu = getelementptr [2 x i8], ptr %i.co, i64 %indvars.iv123
  store i16 %i.r, ptr %i.cu, align 2, !tbaa !66
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge89, label %vec.epilog.scalar.ph, !llvm.loop !120

._crit_edge89:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.cv = icmp slt i64 %indvars.iv.next129, %i.cd
  br i1 %i.cv, label %iter.check, label %._crit_edge91.split, !llvm.loop !121

._crit_edge91.split:                              ; preds = %._crit_edge89, %.preheader.lr.ph, %.preheader77
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge94, label %bb.b, !llvm.loop !122

._crit_edge94:                                    ; preds = %._crit_edge91.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @reflect_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %._crit_edge103
  %indvars.iv119 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next120, %._crit_edge103 ] ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv119
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv119
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sext i32 %i.k to i64                     ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv119 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55   ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv119 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !45
  %i.s = load i32, ptr %i.q, align 4, !tbaa !56   ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.s
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %.preheader91.lr.ph, label %.preheader93

.preheader91.lr.ph:                               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv119
  %i.x = sext i32 %i.o to i64
  br label %.preheader91

.preheader93.loopexit:                            ; preds = %._crit_edge
  %.pre = load i32, ptr %i.n, align 4, !tbaa !55
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.loopexit, %bb.b
  %i.y = phi i32 [ %i.bi, %.preheader93.loopexit ], [ %i.s, %bb.b ]
  %i.z = phi i32 [ %.pre, %.preheader93.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph100, label %.preheader92

.lr.ph100:                                        ; preds = %.preheader93
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv119
  br label %bb.e

.preheader91:                                     ; preds = %.preheader91.lr.ph, %._crit_edge
  %indvars.iv113 = phi i64 [ %i.x, %.preheader91.lr.ph ], [ %indvars.iv.next114, %._crit_edge ] ; 3 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader91
  %i.ae = mul nsw i64 %indvars.iv113, %i.l        ; 2 uses
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %bb.c

.preheader:                                       ; preds = %bb.c, %.preheader91
  %i.ag = load i32, ptr %i.v, align 4, !tbaa !54  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %.preheader
  %i.ai = mul nsw i64 %indvars.iv113, %i.l
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aj = phi i32 [ %i.ac, %.lr.ph ], [ %i.aq, %bb.c ]
  %i.ak = shl nsw i32 %i.aj, 1
  %2 = sext i32 %i.ak to i64
  %i.al = sub i64 %i.ae, %indvars.iv
  %i.am = getelementptr i8, ptr %i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 %2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !58
  %i.ap = getelementptr i8, ptr %i.af, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.c, label %.preheader, !llvm.loop !123

bb.d:                                             ; preds = %.lr.ph97, %bb.d
  %indvars.iv110 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next111, %bb.d ] ; 3 uses
  %i.at = phi i32 [ %i.ag, %.lr.ph97 ], [ %i.be, %bb.d ]
  %i.au = load i32, ptr %i.w, align 4, !tbaa !45
  %i.av = sext i32 %i.au to i64
  %i.aw = sext i32 %i.at to i64
  %i.ax = sub nsw i64 %i.ai, %i.aw
  %i.ay = add nsw i64 %i.ax, %i.av                ; 2 uses
  %reass.sub = sub i64 %i.ay, %indvars.iv110
  %i.az = getelementptr i8, ptr %i.i, i64 %reass.sub
  %i.ba = getelementptr i8, ptr %i.az, i64 -2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !58
  %i.bc = getelementptr i8, ptr %i.i, i64 %i.ay
  %i.bd = getelementptr i8, ptr %i.bc, i64 %indvars.iv110
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !58
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.be = load i32, ptr %i.v, align 4, !tbaa !54  ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next111, %i.bf
  br i1 %i.bg, label %bb.d, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.bh = load i32, ptr %i.p, align 4, !tbaa !45
  %i.bi = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.bj = sub nsw i32 %i.bh, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next114, %i.bk
  br i1 %i.bl, label %.preheader91, label %.preheader93.loopexit, !llvm.loop !125

.preheader92.loopexit:                            ; preds = %bb.e
  %.pre122 = load i32, ptr %i.q, align 4, !tbaa !56
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.loopexit, %.preheader93
  %i.bm = phi i32 [ %.pre122, %.preheader92.loopexit ], [ %i.y, %.preheader93 ] ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %.preheader92
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv119
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph100, %bb.e
  %indvars.iv116 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next117, %bb.e ] ; 3 uses
  %i.bp = phi i32 [ %i.z, %.lr.ph100 ], [ %i.bx, %bb.e ]
  %i.bq = mul nsw i64 %indvars.iv116, %i.l
  %i.br = getelementptr inbounds i8, ptr %i.i, i64 %i.bq
  %i.bs = shl nsw i32 %i.bp, 1
  %3 = trunc nuw nsw i64 %indvars.iv116 to i32
  %4 = sub nsw i32 %i.bs, %3
  %5 = sext i32 %4 to i64
  %i.bt = mul nsw i64 %5, %i.l
  %i.bu = getelementptr inbounds i8, ptr %i.i, i64 %i.bt
  %i.bv = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.bw = sext i32 %i.bv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bu, i64 %i.bw, i1 false)
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.bx = load i32, ptr %i.n, align 4, !tbaa !55  ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next117, %i.by
  br i1 %i.bz, label %bb.e, label %.preheader92.loopexit, !llvm.loop !126

bb.f:                                             ; preds = %.lr.ph102, %bb.f
  %i.ca = phi i32 [ %i.bm, %.lr.ph102 ], [ %i.co, %bb.f ]
  %.2101 = phi i32 [ 0, %.lr.ph102 ], [ %i.cn, %bb.f ] ; 3 uses
  %i.cb = load i32, ptr %i.p, align 4, !tbaa !45
  %i.cc = sub nsw i32 %i.cb, %i.ca                ; 2 uses
  %i.cd = add nsw i32 %i.cc, %.2101
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul nsw i64 %i.ce, %i.l
  %i.cg = getelementptr inbounds i8, ptr %i.i, i64 %i.cf
  %reass.sub108 = sub i32 %i.cc, %.2101
  %i.ch = add i32 %reass.sub108, -2
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.ci, %i.l
  %i.ck = getelementptr inbounds i8, ptr %i.i, i64 %i.cj
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.cm = sext i32 %i.cl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  %i.cn = add nuw nsw i32 %.2101, 1               ; 2 uses
  %i.co = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.f, label %._crit_edge103, !llvm.loop !127

._crit_edge103:                                   ; preds = %bb.f, %.preheader92
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !39
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next120, %i.cr
  br i1 %i.cs, label %bb.b, label %._crit_edge107, !llvm.loop !128

._crit_edge107:                                   ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @reflect_borders16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph108, %._crit_edge105
  %indvars.iv122 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next123, %._crit_edge105 ] ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv122
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 16 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv122
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sdiv i32 %i.k, 2
  %i.m = sext i32 %i.l to i64                     ; 6 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv122 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55   ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv122 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56   ; 2 uses
  %i.u = sub nsw i32 %i.r, %i.t                   ; 2 uses
  %i.v = icmp slt i32 %i.p, %i.u
  br i1 %i.v, label %.preheader91.lr.ph, label %.preheader93

.preheader91.lr.ph:                               ; preds = %bb.b
  %i.w = load i32, ptr %i.n, align 4, !tbaa !52   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !54 ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv122
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = sext i32 %i.p to i64
  %i.ag = sext i32 %i.u to i64
  %wide.trip.count = zext i32 %i.w to i64         ; 2 uses
  %wide.trip.count114 = zext i32 %i.ab to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ah = icmp ult i32 %i.w, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  %xtraiter131 = and i64 %wide.trip.count114, 3   ; 3 uses
  %i.ai = icmp ult i32 %i.ab, 4
  %unroll_iter135 = and i64 %wide.trip.count114, 2147483644
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  br label %.preheader91

.preheader93:                                     ; preds = %._crit_edge, %bb.b
  %i.aj = icmp sgt i32 %i.p, 0
  br i1 %i.aj, label %.lr.ph102, label %.preheader92

.lr.ph102:                                        ; preds = %.preheader93
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv122
  br label %bb.e

.preheader91:                                     ; preds = %.preheader91.lr.ph, %._crit_edge
  %indvars.iv116 = phi i64 [ %i.af, %.preheader91.lr.ph ], [ %indvars.iv.next117, %._crit_edge ] ; 3 uses
  br i1 %i.x, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader91
  %i.al = mul nsw i64 %indvars.iv116, %i.m        ; 2 uses
  %invariant.op = add nsw i64 %i.al, %i.z         ; 5 uses
  %i.am = getelementptr [2 x i8], ptr %i.i, i64 %i.al ; 5 uses
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.new

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.reass.epil = sub nsw i64 %invariant.op, %indvars.iv.epil
  %i.an = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass.epil
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !66
  %i.ap = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv.epil
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !66
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.c, !llvm.loop !129

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.c, %.preheader91
  br i1 %i.ac, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %.preheader
  %i.aq = mul nsw i64 %indvars.iv116, %i.m
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !45
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 %i.aq, %i.ae
  %i.au = add nsw i64 %i.at, %i.as                ; 2 uses
  %invariant.op98 = add nsw i64 %i.au, -2         ; 5 uses
  %i.av = getelementptr [2 x i8], ptr %i.i, i64 %i.au ; 5 uses
  br i1 %i.ai, label %.epil.preheader130, label %.lr.ph97.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %.reass = sub nsw i64 %invariant.op, %indvars.iv
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !66
  %i.ay = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !66
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.reass.1 = sub nsw i64 %invariant.op, %indvars.iv.next
  %i.az = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass.1
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !66
  %i.bb = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv.next
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !66
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %.reass.2 = sub nsw i64 %invariant.op, %indvars.iv.next.1
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass.2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !66
  %i.be = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !66
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %.reass.3 = sub nsw i64 %invariant.op, %indvars.iv.next.2
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass.3
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !66
  %i.bh = getelementptr [2 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !130

.lr.ph97.new:                                     ; preds = %.lr.ph97, %.lr.ph97.new
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.3, %.lr.ph97.new ], [ 0, %.lr.ph97 ] ; 6 uses
  %niter136 = phi i64 [ %niter136.next.3, %.lr.ph97.new ], [ 0, %.lr.ph97 ]
  %.reass99 = sub nsw i64 %invariant.op98, %indvars.iv111
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass99
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !66
  %i.bk = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv111
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !66
  %indvars.iv.next112 = or disjoint i64 %indvars.iv111, 1 ; 2 uses
  %.reass99.1 = sub nsw i64 %invariant.op98, %indvars.iv.next112
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass99.1
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !66
  %i.bn = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next112
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !66
  %indvars.iv.next112.1 = or disjoint i64 %indvars.iv111, 2 ; 2 uses
  %.reass99.2 = sub nsw i64 %invariant.op98, %indvars.iv.next112.1
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass99.2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !66
  %i.bq = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next112.1
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !66
  %indvars.iv.next112.2 = or disjoint i64 %indvars.iv111, 3 ; 2 uses
  %.reass99.3 = sub nsw i64 %invariant.op98, %indvars.iv.next112.2
  %i.br = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass99.3
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !66
  %i.bt = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next112.2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !66
  %indvars.iv.next112.3 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %niter136.next.3 = add i64 %niter136, 4         ; 2 uses
  %niter136.ncmp.3 = icmp eq i64 %niter136.next.3, %unroll_iter135
  br i1 %niter136.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph97.new, !llvm.loop !131

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph97.new
  br i1 %lcmp.mod133.not, label %._crit_edge, label %.epil.preheader130

.epil.preheader130:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph97
  %indvars.iv111.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next112.3, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader130
  %indvars.iv111.epil = phi i64 [ %indvars.iv111.epil.init, %.epil.preheader130 ], [ %indvars.iv.next112.epil, %bb.d ] ; 3 uses
  %epil.iter132 = phi i64 [ 0, %.epil.preheader130 ], [ %epil.iter132.next, %bb.d ]
  %.reass99.epil = sub nsw i64 %invariant.op98, %indvars.iv111.epil
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.reass99.epil
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !66
  %i.bw = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv111.epil
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !66
  %indvars.iv.next112.epil = add nuw nsw i64 %indvars.iv111.epil, 1
  %epil.iter132.next = add i64 %epil.iter132, 1   ; 2 uses
  %epil.iter132.cmp.not = icmp eq i64 %epil.iter132.next, %xtraiter131
  br i1 %epil.iter132.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !132

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.preheader
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next117, %i.ag
  br i1 %i.bx, label %.preheader91, label %.preheader93, !llvm.loop !133

.preheader92.loopexit:                            ; preds = %bb.e
  %.pre = load i32, ptr %i.s, align 4, !tbaa !56
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.loopexit, %.preheader93
  %i.by = phi i32 [ %.pre, %.preheader92.loopexit ], [ %i.t, %.preheader93 ] ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %.preheader92
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv122
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph102, %bb.e
  %indvars.iv119 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next120, %bb.e ] ; 3 uses
  %i.cb = phi i32 [ %i.p, %.lr.ph102 ], [ %i.ck, %bb.e ]
  %i.cc = mul nsw i64 %indvars.iv119, %i.m
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.cc
  %i.ce = shl nsw i32 %i.cb, 1
  %2 = trunc nuw nsw i64 %indvars.iv119 to i32
  %3 = sub nsw i32 %i.ce, %2
  %4 = sext i32 %3 to i64
  %i.cf = mul nsw i64 %4, %i.m
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.cf
  %i.ch = load i32, ptr %i.ak, align 4, !tbaa !45
  %i.ci = shl nsw i32 %i.ch, 1
  %i.cj = sext i32 %i.ci to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cd, ptr align 2 %i.cg, i64 %i.cj, i1 false)
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = load i32, ptr %i.o, align 4, !tbaa !55  ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next120, %i.cl
  br i1 %i.cm, label %bb.e, label %.preheader92.loopexit, !llvm.loop !134

bb.f:                                             ; preds = %.lr.ph104, %bb.f
  %i.cn = phi i32 [ %i.by, %.lr.ph104 ], [ %i.dc, %bb.f ]
  %.2103 = phi i32 [ 0, %.lr.ph104 ], [ %i.db, %bb.f ] ; 3 uses
  %i.co = load i32, ptr %i.q, align 4, !tbaa !45
  %i.cp = sub nsw i32 %i.co, %i.cn                ; 2 uses
  %i.cq = add nsw i32 %i.cp, %.2103
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, %i.m
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.cs
  %reass.sub = sub i32 %i.cp, %.2103
  %i.cu = add i32 %reass.sub, -2
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.cv, %i.m
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.cw
  %i.cy = load i32, ptr %i.ca, align 4, !tbaa !45
  %i.cz = shl nsw i32 %i.cy, 1
  %i.da = sext i32 %i.cz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ct, ptr align 2 %i.cx, i64 %i.da, i1 false)
  %i.db = add nuw nsw i32 %.2103, 1               ; 2 uses
  %i.dc = load i32, ptr %i.s, align 4, !tbaa !56  ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.f, label %._crit_edge105, !llvm.loop !135

._crit_edge105:                                   ; preds = %bb.f, %.preheader92
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.de = load i32, ptr %i.a, align 4, !tbaa !39
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next123, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge109, !llvm.loop !136

._crit_edge109:                                   ; preds = %._crit_edge105, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @wrap_borders8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %._crit_edge112
  %indvars.iv127 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next128, %._crit_edge112 ] ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv127
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 8 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv127
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sext i32 %i.k to i64                     ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv127 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55   ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv127 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 5 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !45
  %i.s = load i32, ptr %i.q, align 4, !tbaa !56   ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.s
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %.preheader100.lr.ph, label %.preheader102

.preheader100.lr.ph:                              ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  %i.x = sext i32 %i.o to i64
  br label %.preheader100

.preheader102.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.n, align 4, !tbaa !55
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.loopexit, %bb.b
  %i.y = phi i32 [ %i.br, %.preheader102.loopexit ], [ %i.s, %bb.b ]
  %i.z = phi i32 [ %.pre, %.preheader102.loopexit ], [ %i.o, %bb.b ] ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph109, label %.preheader101

.lr.ph109:                                        ; preds = %.preheader102
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  br label %bb.e

.preheader100:                                    ; preds = %.preheader100.lr.ph, %._crit_edge
  %indvars.iv121 = phi i64 [ %i.x, %.preheader100.lr.ph ], [ %indvars.iv.next122, %._crit_edge ] ; 3 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader100
  %i.ae = mul nsw i64 %indvars.iv121, %i.l        ; 2 uses
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %bb.c

.preheader:                                       ; preds = %bb.c, %.preheader100
  %i.ag = load i32, ptr %i.w, align 4, !tbaa !54  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph106, label %._crit_edge

.lr.ph106:                                        ; preds = %.preheader
  %i.ai = mul nsw i64 %indvars.iv121, %i.l        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.ak = phi i32 [ %i.ac, %.lr.ph ], [ %i.ax, %bb.c ]
  %i.al = load i32, ptr %i.v, align 4, !tbaa !45
  %i.am = sext i32 %i.al to i64
  %i.an = load i32, ptr %i.w, align 4, !tbaa !54
  %i.ao = sext i32 %i.an to i64
  %i.ap = sext i32 %i.ak to i64
  %i.aq = add nsw i64 %i.ae, %i.am
  %i.ar = add nsw i64 %i.ap, %i.ao
  %i.as = sub nsw i64 %i.aq, %i.ar
  %i.at = getelementptr i8, ptr %i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58
  %i.aw = getelementptr i8, ptr %i.af, i64 %indvars.iv
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !52  ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.c, label %.preheader, !llvm.loop !137

bb.d:                                             ; preds = %.lr.ph106, %bb.d
  %indvars.iv118 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next119, %bb.d ] ; 3 uses
  %i.ba = phi i32 [ %i.ag, %.lr.ph106 ], [ %i.bn, %bb.d ]
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !52
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.aj, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %indvars.iv118
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !58
  %i.bg = load i32, ptr %i.v, align 4, !tbaa !45
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sext i32 %i.ba to i64
  %i.bj = sub nsw i64 %i.ai, %i.bi
  %i.bk = getelementptr i8, ptr %i.i, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 %indvars.iv118
  store i8 %i.bf, ptr %i.bm, align 1, !tbaa !58
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !54  ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next119, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !45
  %i.br = load i32, ptr %i.q, align 4, !tbaa !56  ; 2 uses
  %i.bs = sub nsw i32 %i.bq, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next122, %i.bt
  br i1 %i.bu, label %.preheader100, label %.preheader102.loopexit, !llvm.loop !139

.preheader101.loopexit:                           ; preds = %bb.e
  %.pre130 = load i32, ptr %i.q, align 4, !tbaa !56
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.loopexit, %.preheader102
  %i.bv = phi i32 [ %.pre130, %.preheader101.loopexit ], [ %i.y, %.preheader102 ] ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %.preheader101
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv127
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph109, %bb.e
  %indvars.iv124 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next125, %bb.e ] ; 3 uses
  %i.by = phi i32 [ %i.z, %.lr.ph109 ], [ %i.cm, %bb.e ]
  %i.bz = mul nsw i64 %indvars.iv124, %i.l
  %i.ca = getelementptr inbounds i8, ptr %i.i, i64 %i.bz
  %i.cb = load i32, ptr %i.p, align 4, !tbaa !45
  %i.cc = load i32, ptr %i.q, align 4, !tbaa !56
  %i.cd = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.ce = add i32 %i.cb, %i.cd
  %i.cf = add i32 %i.by, %i.cc
  %i.cg = sub i32 %i.ce, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.ch, %i.l
  %i.cj = getelementptr inbounds i8, ptr %i.i, i64 %i.ci
  %i.ck = load i32, ptr %i.ab, align 4, !tbaa !45
end_hunk_1
