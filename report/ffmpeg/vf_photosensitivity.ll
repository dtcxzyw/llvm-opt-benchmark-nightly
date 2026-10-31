Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_photosensitivity?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@convert_frame_partial:bb.a
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add nsw i32 %2, 1
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 6
  %i.i = sdiv i64 %i.h, %i.c
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !38     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 108
  %i.n = load i32, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !54   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40   ; 4 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.s = icmp slt i32 %i.e, %i.j
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !34
  %i.v = mul nsw i32 %i.q, 3
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.y = sext i32 %i.q to i64
  %i.z = sext i32 %i.u to i64
  %i.aa = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.split93.us
  %.06694 = phi i32 [ %i.e, %.lr.ph ], [ %i.dc, %.split93.us ] ; 3 uses
  %i.ac = srem i32 %.06694, 8                     ; 3 uses
  %i.ad = sdiv i32 %.06694, 8                     ; 3 uses
  %i.ae = mul nsw i32 %i.ac, %i.n
  %i.af = add nsw i32 %i.ac, 1
  %i.ag = mul nsw i32 %i.af, %i.n
  %i.ah = mul nsw i32 %i.ad, %i.o
  %i.ai = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ah, i64 1
  %i.ak = sdiv <2 x i32> %i.aj, splat (i32 8)     ; 3 uses
  %i.al = add nsw i32 %i.ad, 1
  %i.am = mul nsw i32 %i.al, %i.o
  %i.an = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %i.am, i64 1
  %i.ap = sdiv <2 x i32> %i.ao, splat (i32 8)     ; 3 uses
  %i.aq = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  %i.ar = extractelement <2 x i32> %i.ap, i64 1   ; 2 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.at = extractelement <2 x i32> %i.ak, i64 0   ; 3 uses
  %i.au = mul nsw i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
  %invariant.gep = getelementptr i8, ptr %i.r, i64 %i.av
  %i.aw = extractelement <2 x i32> %i.ap, i64 0   ; 2 uses
  %i.ax = icmp slt i32 %i.at, %i.aw
  br i1 %i.ax, label %.lr.ph.us.preheader, label %._crit_edge82

.lr.ph.us.preheader:                              ; preds = %.lr.ph81
  %i.ay = sext i32 %i.aq to i64
  %i.az = sext i32 %i.ar to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.lcssa7688.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.bo, %._crit_edge.us ]
  %.lcssa7485.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.bk, %._crit_edge.us ]
  %.lcssa7879.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.bg, %._crit_edge.us ]
  %i.ba = mul nsw i64 %indvars.iv, %i.z
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %i.ba
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %i.bb = phi i32 [ %.lcssa7688.us, %.lr.ph.us ], [ %i.bo, %bb.b ]
  %i.bc = phi i32 [ %.lcssa7485.us, %.lr.ph.us ], [ %i.bk, %bb.b ]
  %.072.us = phi ptr [ %gep.us, %.lr.ph.us ], [ %i.bp, %bb.b ] ; 4 uses
  %.06571.us = phi i32 [ %i.at, %.lr.ph.us ], [ %i.bq, %bb.b ]
  %i.bd = phi i32 [ %.lcssa7879.us, %.lr.ph.us ], [ %i.bg, %bb.b ]
  %i.be = load i8, ptr %.072.us, align 1, !tbaa !42
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bd, %i.bf                ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.072.us, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bc, %i.bj                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !42
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bb, %i.bn                ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.072.us, i64 %i.w
  %i.bq = add nsw i32 %.06571.us, %i.q            ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.aw
  br i1 %i.br, label %bb.b, label %._crit_edge.us, !llvm.loop !69

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.y ; 2 uses
  %i.bs = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.bs, label %.lr.ph.us, label %._crit_edge82, !llvm.loop !70

._crit_edge82:                                    ; preds = %._crit_edge.us, %.lr.ph81, %.preheader
  %.sroa.9.0 = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph81 ], [ %i.bk, %._crit_edge.us ] ; 2 uses
  %.sroa.15.0 = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph81 ], [ %i.bo, %._crit_edge.us ] ; 2 uses
  %.lcssa78.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph81 ], [ %i.bg, %._crit_edge.us ] ; 2 uses
  %i.bt = xor <2 x i32> %i.ak, splat (i32 -1)
  %i.bu = add <2 x i32> %i.ab, %i.bt
  %i.bv = add <2 x i32> %i.bu, %i.ap
  %i.bw = sdiv <2 x i32> %i.bv, %i.ab             ; 2 uses
  %i.bx = extractelement <2 x i32> %i.bw, i64 0
  %i.by = extractelement <2 x i32> %i.bw, i64 1
  %i.bz = mul nsw i32 %i.by, %i.bx                ; 4 uses
  %.not = icmp eq i32 %i.bz, 0
  %i.ca = sext i32 %i.ad to i64                   ; 5 uses
  %i.cb = sext i32 %i.ac to i64                   ; 5 uses
  br i1 %.not, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %._crit_edge82
  %i.cc = sdiv i32 %.lcssa78.lcssa, %i.bz
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.cf = getelementptr inbounds [32 x i8], ptr %i.ce, i64 %i.ca
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cb
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !42
  %i.ch = sdiv i32 %.sroa.9.0, %i.bz
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.cj, i64 %i.ca
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cb
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !42
  %i.cn = sdiv i32 %.sroa.15.0, %i.bz
  br label %.split93.us

.split.us.preheader:                              ; preds = %._crit_edge82
  %i.co = trunc i32 %.lcssa78.lcssa to i8
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.cq = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %i.ca
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cb
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !42
  %i.cs = trunc i32 %.sroa.9.0 to i8
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.cu = getelementptr inbounds [32 x i8], ptr %i.ct, i64 %i.ca
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cb
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.cs, ptr %i.cw, align 1, !tbaa !42
  br label %.split93.us

.split93.us:                                      ; preds = %.split.preheader, %.split.us.preheader
  %.sink133 = phi i32 [ %i.cn, %.split.preheader ], [ %.sroa.15.0, %.split.us.preheader ]
  %i.cx = trunc i32 %.sink133 to i8
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.cz = getelementptr inbounds [32 x i8], ptr %i.cy, i64 %i.ca
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.cb
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cx, ptr %i.db, align 1, !tbaa !42
  %i.dc = add nsw i32 %.06694, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.dc, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !71

._crit_edge:                                      ; preds = %.split93.us, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @blend_frame_partial(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !47   ; 6 uses
  %i.c = sub i16 256, %i.b                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = sext i32 %2 to i64
  %i.i = mul nsw i64 %i.g, %i.h
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %i.k = sdiv i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = add nsw i32 %2, 1
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.g, %i.n
  %i.p = sdiv i64 %i.o, %i.j
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34   ; 8 uses
  %i.t = icmp slt i32 %i.l, %i.q
  br i1 %i.t, label %.lr.ph37, label %._crit_edge38.split

.lr.ph37:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = icmp sgt i32 %i.s, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge38.split

.lr.ph.preheader:                                 ; preds = %.lr.ph37
  %i.w = zext nneg i32 %i.s to i64                ; 2 uses
  %i.x = zext nneg i32 %i.s to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 4
  %min.iters.check46 = icmp ult i32 %i.s, 16
  %i.y = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 2147483632               ; 6 uses
  %i.z = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <16 x i16> poison, i16 %i.b, i64 0
  %broadcast.splat48 = shufflevector <16 x i16> %broadcast.splatinsert47, <16 x i16> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.x
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  %n.vec51 = and i64 %i.x, 2147483644             ; 5 uses
  %i.aa = trunc nuw nsw i64 %n.vec51 to i32
  %broadcast.splatinsert52 = insertelement <4 x i16> poison, i16 %i.c, i64 0
  %broadcast.splat53 = shufflevector <4 x i16> %broadcast.splatinsert52, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <4 x i16> poison, i16 %i.b, i64 0
  %broadcast.splat55 = shufflevector <4 x i16> %broadcast.splatinsert54, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n62 = icmp eq i64 %n.vec51, %i.x
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %.03035 = phi i32 [ %i.cu, %._crit_edge ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34
  %i.af = mul i32 %i.ae, %.03035
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ac, i64 %i.ag  ; 7 uses
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !46  ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !34
  %i.am = mul i32 %i.al, %.03035
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.an  ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.w
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %i.ag
  %scevgep44 = getelementptr i8, ptr %i.aj, i64 %i.w
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.an
  %bound0 = icmp ult ptr %i.ah, %scevgep45
  %bound1 = icmp ult ptr %i.ao, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = getelementptr i8, ptr %i.ao, i64 %n.vec
  %i.aq = getelementptr i8, ptr %i.ah, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.ah, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !42, !alias.scope !79, !noalias !80
  %i.ar = zext <16 x i8> %wide.load to <16 x i16>
  %i.as = mul <16 x i16> %broadcast.splat, %i.ar
  %wide.load50 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !42, !alias.scope !80
  %i.at = zext <16 x i8> %wide.load50 to <16 x i16>
  %i.au = mul <16 x i16> %broadcast.splat48, %i.at
  %i.av = add <16 x i16> %i.au, %i.as
  %i.aw = lshr <16 x i16> %i.av, splat (i16 8)
  %i.ax = trunc nuw <16 x i16> %i.aw to <16 x i8>
  store <16 x i8> %i.ax, ptr %next.gep49, align 1, !tbaa !42, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.az = getelementptr i8, ptr %i.ao, i64 %n.vec51
  %i.ba = getelementptr i8, ptr %i.ah, i64 %n.vec51
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.ao, i64 %index56
  %next.gep58 = getelementptr i8, ptr %i.ah, i64 %index56 ; 2 uses
  %wide.load59 = load <4 x i8>, ptr %next.gep58, align 1, !tbaa !42, !alias.scope !79, !noalias !80
  %i.bb = zext <4 x i8> %wide.load59 to <4 x i16>
  %i.bc = mul <4 x i16> %broadcast.splat53, %i.bb
  %wide.load60 = load <4 x i8>, ptr %next.gep57, align 1, !tbaa !42, !alias.scope !80
  %i.bd = zext <4 x i8> %wide.load60 to <4 x i16>
  %i.be = mul <4 x i16> %broadcast.splat55, %i.bd
  %i.bf = add <4 x i16> %i.be, %i.bc
  %i.bg = lshr <4 x i16> %i.bf, splat (i16 8)
  %i.bh = trunc nuw <4 x i16> %i.bg to <4 x i8>
  store <4 x i8> %i.bh, ptr %next.gep58, align 1, !tbaa !42, !alias.scope !79, !noalias !80
  %index.next61 = add nuw i64 %index56, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next61, %n.vec51
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n62, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.034.ph = phi ptr [ %i.ao, %iter.check ], [ %i.ao, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ] ; 3 uses
  %.02933.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 4 uses
  %.03132.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.bj = sub i32 %i.s, %.03132.ph
  %.neg = add i32 %.03132.ph, 1
  %xtraiter = and i32 %i.bj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bk = load i8, ptr %.02933.ph, align 1, !tbaa !42
  %i.bl = zext i8 %i.bk to i16
  %i.bm = mul i16 %i.c, %i.bl
  %i.bn = load i8, ptr %.034.ph, align 1, !tbaa !42
  %i.bo = zext i8 %i.bn to i16
  %i.bp = mul i16 %i.b, %i.bo
  %i.bq = add i16 %i.bp, %i.bm
  %i.br = lshr i16 %i.bq, 8
  %i.bs = trunc nuw i16 %i.br to i8
  store i8 %i.bs, ptr %.02933.ph, align 1, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %.02933.ph, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.034.ph, i64 1
  %i.bv = add nuw nsw i32 %.03132.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.034.unr = phi ptr [ %.034.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bu, %vec.epilog.scalar.ph.prol ]
  %.02933.unr = phi ptr [ %.02933.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bt, %vec.epilog.scalar.ph.prol ]
  %.03132.unr = phi i32 [ %.03132.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %i.bw = icmp eq i32 %i.s, %.neg
  br i1 %i.bw, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.034 = phi ptr [ %i.cs, %vec.epilog.scalar.ph ], [ %.034.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.02933 = phi ptr [ %i.cr, %vec.epilog.scalar.ph ], [ %.02933.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %.03132 = phi i32 [ %i.ct, %vec.epilog.scalar.ph ], [ %.03132.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.bx = load i8, ptr %.02933, align 1, !tbaa !42
  %i.by = zext i8 %i.bx to i16
  %i.bz = mul i16 %i.c, %i.by
  %i.ca = load i8, ptr %.034, align 1, !tbaa !42
  %i.cb = zext i8 %i.ca to i16
  %i.cc = mul i16 %i.b, %i.cb
  %i.cd = add i16 %i.cc, %i.bz
  %i.ce = lshr i16 %i.cd, 8
  %i.cf = trunc nuw i16 %i.ce to i8
  store i8 %i.cf, ptr %.02933, align 1, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %.02933, i64 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !42
  %i.cj = zext i8 %i.ci to i16
  %i.ck = mul i16 %i.c, %i.cj
  %i.cl = load i8, ptr %i.ch, align 1, !tbaa !42
  %i.cm = zext i8 %i.cl to i16
  %i.cn = mul i16 %i.b, %i.cm
  %i.co = add i16 %i.cn, %i.ck
  %i.cp = lshr i16 %i.co, 8
  %i.cq = trunc nuw i16 %i.cp to i8
  store i8 %i.cq, ptr %i.cg, align 1, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %.02933, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.034, i64 2
  %i.ct = add nuw nsw i32 %.03132, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ct, %i.s
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cu = add nsw i32 %.03035, 1                  ; 2 uses
  %exitcond39.not = icmp eq i32 %i.cu, %i.q
  br i1 %exitcond39.not, label %._crit_edge38.split, label %iter.check, !llvm.loop !78

._crit_edge38.split:                              ; preds = %._crit_edge, %.lr.ph37, %bb.a
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!24 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!25 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!26 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!27 = !{!"AVFilterFormatsConfig", !25, i64 0, !25, i64 8, !26, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!28 = !{!"AVFilterLink", !21, i64 0, !13, i64 8, !21, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !23, i64 72, !22, i64 96, !24, i64 104, !6, i64 112, !6, i64 116, !27, i64 120, !27, i64 168}
!29 = !{!28, !21, i64 16}
!30 = !{!"float", !5, i64 0}
!31 = !{!"PhotosensitivityFrame", !5, i64 0}
!32 = !{!"PhotosensitivityContext", !10, i64 0, !6, i64 8, !6, i64 12, !30, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !6, i64 988, !31, i64 992, !20, i64 1248}
!33 = !{!32, !6, i64 8}
!34 = !{!6, !6, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTS21PhotosensitivityFrame", !9, i64 0}
end_hunk_0
