Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_huf_avx2_compress?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ZS_HufAvx2_encode:bb.a
  store i8 %i.ug, ptr %i.ua, align 1, !tbaa !12
  %i.ui = add i32 %.0141.lcssa, 7
  %i.uj = and i32 %i.ui, 31
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !11
  %i.un = trunc i32 %i.um to i8
  %i.uo = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 282
  store i8 %i.un, ptr %i.uh, align 1, !tbaa !12
  %i.up = add i32 %.0141.lcssa, 6
  %i.uq = and i32 %i.up, 31
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !11
  %i.uu = trunc i32 %i.ut to i8
  %i.uv = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 283
  store i8 %i.uu, ptr %i.uo, align 1, !tbaa !12
  %i.uw = add i32 %.0141.lcssa, 5
  %i.ux = and i32 %i.uw, 31
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.uy
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !11
  %i.vb = trunc i32 %i.va to i8
  %i.vc = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 284
  store i8 %i.vb, ptr %i.uv, align 1, !tbaa !12
  %i.vd = add i32 %.0141.lcssa, 4
  %i.ve = and i32 %i.vd, 31
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !11
  %i.vi = trunc i32 %i.vh to i8
  %i.vj = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 285
  store i8 %i.vi, ptr %i.vc, align 1, !tbaa !12
  %i.vk = add i32 %.0141.lcssa, 3
  %i.vl = and i32 %i.vk, 31
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !11
  %i.vp = trunc i32 %i.vo to i8
  %i.vq = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 286
  store i8 %i.vp, ptr %i.vj, align 1, !tbaa !12
  %i.vr = add i32 %.0141.lcssa, 2
  %i.vs = and i32 %i.vr, 31
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !11
  %i.vw = trunc i32 %i.vv to i8
  %i.vx = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 287
  store i8 %i.vw, ptr %i.vq, align 1, !tbaa !12
  %i.vy = add i32 %.0141.lcssa, 1
  %i.vz = and i32 %i.vy, 31
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !11
  %i.wd = trunc i32 %i.wc to i8
  %i.we = getelementptr inbounds nuw i8, ptr %.2132.lcssa, i64 288
  store i8 %i.wd, ptr %i.vx, align 1, !tbaa !12
  %i.wf = ptrtoint ptr %i.we to i64
  %i.wg = sub i64 %i.wf, %i.j
  br label %.loopexit183

.loopexit183:                                     ; preds = %._crit_edge219, %._crit_edge, %.preheader181.preheader, %bb.s, %.preheader.preheader, %bb.k
  %.10 = phi i64 [ 0, %bb.k ], [ 0, %.preheader181.preheader ], [ 0, %._crit_edge ], [ %i.wg, %.preheader.preheader ], [ 0, %bb.s ], [ 0, %._crit_edge219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.j, %.loopexit183
  %.11 = phi i64 [ %.10, %.loopexit183 ], [ 0, %bb.j ], [ %.0.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t
  %.12 = phi i64 [ %.11, %bb.t ], [ 0, %bb.a ]
  ret i64 %.12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @ZS_HIST_count(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ZS_HIST_isError(i64 noundef) local_unnamed_addr #3

declare i64 @ZS_HUF_buildCTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ZS_HUF_isError(i64 noundef) local_unnamed_addr #3

declare i64 @ZS_HUF_writeCTable(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 100, 99) i64 @ZS_Huf16Avx2_encodeBound(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %0, 1
  %i.b = add i64 %i.a, 100
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define i64 @ZS_Huf16Avx2_encode(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca [4096 x %struct.ZS_Huf16CElt], align 16 ; 5 uses
  %i.a = alloca [4096 x i32], align 16            ; 7 uses
  %5 = alloca %struct.ZL_WriteCursor, align 8     ; 7 uses
  %i.b = alloca [32 x i32], align 16              ; 36 uses
  %i.c = alloca [32 x i32], align 16              ; 38 uses
  %i.d = alloca [32 x i32], align 16              ; 36 uses
  %i.e = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 5 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %3 to i32
  store i32 %i.i, ptr %0, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.a, i8 0, i64 16384, i1 false)
  %.not203.not = icmp eq i64 %3, 0                ; 2 uses
  br i1 %.not203.not, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0147204 = phi i64 [ %i.r, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0147204
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27   ; 2 uses
  %i.m = icmp ugt i16 %i.l, 4095
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = zext nneg i16 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !11
  %i.r = add nuw i64 %.0147204, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %.critedge.preheader, label %.lr.ph, !llvm.loop !18

.critedge.preheader:                              ; preds = %bb.c, %bb.b
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.0150 = phi i16 [ %i.y, %.critedge ], [ 4095, %.critedge.preheader ] ; 6 uses
  %i.s = zext i16 %.0150 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %i.w = icmp ne i16 %.0150, 0
  %i.x = and i1 %i.w, %i.v
  %i.y = add nsw i16 %.0150, -1
  br i1 %i.x, label %.critedge, label %bb.d, !llvm.loop !19

bb.d:                                             ; preds = %.critedge
  %i.z = zext i32 %i.u to i64
  %i.aa = icmp eq i64 %3, %i.z
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %1, 6
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %i.j, align 1, !tbaa !12
  store i16 %.0150, ptr %i.ac, align 1
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.ad = call { i32, i64 } @ZS_largeHuffmanBuildCTable(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i16 noundef zeroext %.0150, i32 noundef 13) #5 ; 2 uses
  %i.ae = extractvalue { i32, i64 } %i.ad, 0
  %.not190 = icmp ne i32 %i.ae, 0
  %i.af = icmp eq i64 %1, 4
  %or.cond = or i1 %i.af, %.not190
  br i1 %or.cond, label %.thread, label %bb.h

.thread:                                          ; preds = %.lr.ph, %bb.f, %bb.e, %bb.g
  %.2.ph = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ 7, %bb.f ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ag = extractvalue { i32, i64 } %i.ad, 1
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  store i8 2, ptr %i.j, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr %i.ai, ptr %5, align 8, !tbaa !31, !alias.scope !32
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !33, !alias.scope !32
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.ak, align 8, !tbaa !34, !alias.scope !32
  %i.al = call { i32, i64 } @ZS_largeHuffmanWriteCTable(ptr noundef nonnull %5, ptr noundef nonnull %4, i16 noundef zeroext %.0150, i32 noundef %i.ah) #5
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %.not191 = icmp eq i32 %i.am, 0
  br i1 %.not191, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 -1, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.an = ptrtoint ptr %.val to i64               ; 2 uses
  %i.ao = sub i64 %i.f, %i.an
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %.loopexit195, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 3 uses
  br i1 %.not203.not, label %._crit_edge, label %.preheader194.lr.ph

.preheader194.lr.ph:                              ; preds = %bb.k
  %.idx = shl nuw nsw i64 %3, 1
  %i.ar = getelementptr i8, ptr %2, i64 %.idx
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = ptrtoint ptr %i.aq to i64
  br label %.preheader194

.preheader194:                                    ; preds = %.preheader194.lr.ph, %.loopexit
  %.3135210 = phi ptr [ %i.aq, %.preheader194.lr.ph ], [ %.4136198, %.loopexit ]
  %.0144209 = phi i32 [ 31, %.preheader194.lr.ph ], [ %.1145.ph, %.loopexit ]
  %.0146208 = phi ptr [ %i.as, %.preheader194.lr.ph ], [ %i.cd, %.loopexit ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader194, %bb.q
  %indvars.iv = phi i64 [ 0, %.preheader194 ], [ %indvars.iv.next, %bb.q ] ; 8 uses
  %.4136206 = phi ptr [ %.3135210, %.preheader194 ], [ %.6138, %bb.q ] ; 5 uses
  %i.au = sub nsw i64 0, %indvars.iv
  %i.av = getelementptr inbounds [2 x i8], ptr %.0146208, i64 %i.au ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = add nuw nsw i32 %i.ax, 31
  %i.az = and i32 %i.ay, 31
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.ba = load i16, ptr %i.av, align 2, !tbaa !27
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bb ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.bc, align 4, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !27
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !11 ; 3 uses
  %i.bf = zext i16 %.sroa.4.0.copyload to i32     ; 2 uses
  %i.bg = add i32 %i.be, %i.bf                    ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, 31
  br i1 %i.bh, label %bb.o, label %._crit_edge232

._crit_edge232:                                   ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %.pre233 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = icmp eq i32 %i.bj, -1
  %i.bl = ptrtoint ptr %.4136206 to i64           ; 2 uses
  br i1 %i.bk, label %bb.p, label %._crit_edge235

bb.p:                                             ; preds = %bb.o
  %i.bm = sub i64 %i.bl, %i.at
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !11
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %bb.o, %bb.p
  %i.bo = add i32 %i.be, -16
  store i32 %i.bo, ptr %i.bd, align 4, !tbaa !11
  %i.bp = sub i64 %i.f, %i.bl
  %i.bq = icmp ugt i64 %i.bp, 1
  br i1 %i.bq, label %.thread172, label %.loopexit195

.thread172:                                       ; preds = %._crit_edge235
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bt = trunc i32 %i.bs to i16
  store i16 %i.bt, ptr %.4136206, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.4136206, i64 2
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bw = lshr i32 %i.bv, 16
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !11 ; 2 uses
  %.pre234 = add i32 %.pre, %i.bf
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge232, %.thread172
  %.pre-phi = phi i32 [ %i.bg, %._crit_edge232 ], [ %.pre234, %.thread172 ]
  %i.bx = phi i32 [ %.pre233, %._crit_edge232 ], [ %i.bw, %.thread172 ]
  %i.by = phi i32 [ %i.be, %._crit_edge232 ], [ %.pre, %.thread172 ]
  %.6138 = phi ptr [ %.4136206, %._crit_edge232 ], [ %i.bu, %.thread172 ] ; 2 uses
  %i.bz = zext i16 %.sroa.0.0.copyload to i32
  %i.ca = shl i32 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.cc = or i32 %i.bx, %i.ca
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !11
  store i32 %.pre-phi, ptr %i.bd, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond222.not, label %.loopexit, label %bb.l, !llvm.loop !24

.loopexit:                                        ; preds = %bb.q, %bb.m
  %.4136198 = phi ptr [ %.4136206, %bb.m ], [ %.6138, %bb.q ] ; 2 uses
  %.1145.ph = phi i32 [ %i.az, %bb.m ], [ %.0144209, %bb.q ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.0146208, i64 -64 ; 2 uses
  %.not161 = icmp ult ptr %i.cd, %2
  br i1 %.not161, label %._crit_edge, label %.preheader194, !llvm.loop !25

._crit_edge:                                      ; preds = %.loopexit, %bb.k
  %.0144.lcssa = phi i32 [ 31, %bb.k ], [ %.1145.ph, %.loopexit ] ; 63 uses
  %.3135.lcssa = phi ptr [ %i.aq, %bb.k ], [ %.4136198, %.loopexit ] ; 98 uses
  %i.ce = ptrtoint ptr %.3135.lcssa to i64        ; 2 uses
  %i.cf = sub i64 %i.ce, %i.an
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = add i32 %i.cg, -4
  store i32 %i.ch, ptr %.val, align 1
  %i.ci = sub i64 %i.f, %i.ce
  %i.cj = icmp ult i64 %i.ci, 128
  br i1 %i.cj, label %.loopexit195, label %.preheader193.preheader

.preheader193.preheader:                          ; preds = %._crit_edge
  %i.ck = zext nneg i32 %.0144.lcssa to i64       ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4
  store i32 %i.cm, ptr %.3135.lcssa, align 1
  %i.cn = add i32 %.0144.lcssa, 31
  %i.co = and i32 %i.cn, 31
  %i.cp = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 4
  %i.cq = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  store i32 %i.cs, ptr %i.cp, align 1
  %i.ct = add i32 %.0144.lcssa, 30
  %i.cu = and i32 %i.ct, 31
  %i.cv = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 8
  %i.cw = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4
  store i32 %i.cy, ptr %i.cv, align 1
  %i.cz = add i32 %.0144.lcssa, 29
  %i.da = and i32 %i.cz, 31
  %i.db = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 12
  %i.dc = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4
  store i32 %i.de, ptr %i.db, align 1
  %i.df = add i32 %.0144.lcssa, 28
  %i.dg = and i32 %i.df, 31
  %i.dh = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 16
  %i.di = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4
  store i32 %i.dk, ptr %i.dh, align 1
  %i.dl = add i32 %.0144.lcssa, 27
  %i.dm = and i32 %i.dl, 31
  %i.dn = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 20
  %i.do = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4
  store i32 %i.dq, ptr %i.dn, align 1
  %i.dr = add i32 %.0144.lcssa, 26
  %i.ds = and i32 %i.dr, 31
  %i.dt = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 24
  %i.du = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4
  store i32 %i.dw, ptr %i.dt, align 1
  %i.dx = add i32 %.0144.lcssa, 25
  %i.dy = and i32 %i.dx, 31
  %i.dz = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 28
  %i.ea = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  store i32 %i.ec, ptr %i.dz, align 1
  %i.ed = add i32 %.0144.lcssa, 24
  %i.ee = and i32 %i.ed, 31
  %i.ef = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 32
  %i.eg = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4
  store i32 %i.ei, ptr %i.ef, align 1
end_hunk_0
begin_hunk_1_@ZS_Huf16Avx2_encode:bb.a
  %i.rh = add i32 %.0144.lcssa, 18
  %i.ri = and i32 %i.rh, 31
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rj
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !11
  %i.rm = trunc i32 %i.rl to i8
  %i.rn = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 271
  store i8 %i.rm, ptr %i.rg, align 1, !tbaa !12
  %i.ro = add i32 %.0144.lcssa, 17
  %i.rp = and i32 %i.ro, 31
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !11
  %i.rt = trunc i32 %i.rs to i8
  %i.ru = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 272
  store i8 %i.rt, ptr %i.rn, align 1, !tbaa !12
  %i.rv = and i32 %.0144.lcssa, 31
  %i.rw = xor i32 %i.rv, 16
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !11
  %i.sa = trunc i32 %i.rz to i8
  %i.sb = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 273
  store i8 %i.sa, ptr %i.ru, align 1, !tbaa !12
  %i.sc = add i32 %.0144.lcssa, 15
  %i.sd = and i32 %i.sc, 31
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !11
  %i.sh = trunc i32 %i.sg to i8
  %i.si = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 274
  store i8 %i.sh, ptr %i.sb, align 1, !tbaa !12
  %i.sj = add i32 %.0144.lcssa, 14
  %i.sk = and i32 %i.sj, 31
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !11
  %i.so = trunc i32 %i.sn to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 275
  store i8 %i.so, ptr %i.si, align 1, !tbaa !12
  %i.sq = add i32 %.0144.lcssa, 13
  %i.sr = and i32 %i.sq, 31
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ss
  %i.su = load i32, ptr %i.st, align 4, !tbaa !11
  %i.sv = trunc i32 %i.su to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 276
  store i8 %i.sv, ptr %i.sp, align 1, !tbaa !12
  %i.sx = add i32 %.0144.lcssa, 12
  %i.sy = and i32 %i.sx, 31
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !11
  %i.tc = trunc i32 %i.tb to i8
  %i.td = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 277
  store i8 %i.tc, ptr %i.sw, align 1, !tbaa !12
  %i.te = add i32 %.0144.lcssa, 11
  %i.tf = and i32 %i.te, 31
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !11
  %i.tj = trunc i32 %i.ti to i8
  %i.tk = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 278
  store i8 %i.tj, ptr %i.td, align 1, !tbaa !12
  %i.tl = add i32 %.0144.lcssa, 10
  %i.tm = and i32 %i.tl, 31
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !11
  %i.tq = trunc i32 %i.tp to i8
  %i.tr = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 279
  store i8 %i.tq, ptr %i.tk, align 1, !tbaa !12
  %i.ts = add i32 %.0144.lcssa, 9
  %i.tt = and i32 %i.ts, 31
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !11
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 280
  store i8 %i.tx, ptr %i.tr, align 1, !tbaa !12
  %i.tz = add i32 %.0144.lcssa, 8
  %i.ua = and i32 %i.tz, 31
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !11
  %i.ue = trunc i32 %i.ud to i8
  %i.uf = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 281
  store i8 %i.ue, ptr %i.ty, align 1, !tbaa !12
  %i.ug = add i32 %.0144.lcssa, 7
  %i.uh = and i32 %i.ug, 31
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !11
  %i.ul = trunc i32 %i.uk to i8
  %i.um = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 282
  store i8 %i.ul, ptr %i.uf, align 1, !tbaa !12
  %i.un = add i32 %.0144.lcssa, 6
  %i.uo = and i32 %i.un, 31
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !11
  %i.us = trunc i32 %i.ur to i8
  %i.ut = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 283
  store i8 %i.us, ptr %i.um, align 1, !tbaa !12
  %i.uu = add i32 %.0144.lcssa, 5
  %i.uv = and i32 %i.uu, 31
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !11
  %i.uz = trunc i32 %i.uy to i8
  %i.va = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 284
  store i8 %i.uz, ptr %i.ut, align 1, !tbaa !12
  %i.vb = add i32 %.0144.lcssa, 4
  %i.vc = and i32 %i.vb, 31
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !11
  %i.vg = trunc i32 %i.vf to i8
  %i.vh = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 285
  store i8 %i.vg, ptr %i.va, align 1, !tbaa !12
  %i.vi = add i32 %.0144.lcssa, 3
  %i.vj = and i32 %i.vi, 31
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !11
  %i.vn = trunc i32 %i.vm to i8
  %i.vo = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 286
  store i8 %i.vn, ptr %i.vh, align 1, !tbaa !12
  %i.vp = add i32 %.0144.lcssa, 2
  %i.vq = and i32 %i.vp, 31
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !11
  %i.vu = trunc i32 %i.vt to i8
  %i.vv = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 287
  store i8 %i.vu, ptr %i.vo, align 1, !tbaa !12
  %i.vw = add i32 %.0144.lcssa, 1
  %i.vx = and i32 %i.vw, 31
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vy
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !11
  %i.wb = trunc i32 %i.wa to i8
  %i.wc = getelementptr inbounds nuw i8, ptr %.3135.lcssa, i64 288
  store i8 %i.wb, ptr %i.vv, align 1, !tbaa !12
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = sub i64 %i.wd, %i.g
  br label %.loopexit195

.loopexit195:                                     ; preds = %._crit_edge235, %.preheader192.preheader, %.preheader193.preheader, %._crit_edge, %.preheader.preheader, %bb.j
  %.12 = phi i64 [ 0, %bb.j ], [ 0, %.preheader192.preheader ], [ %i.we, %.preheader.preheader ], [ 0, %._crit_edge ], [ 0, %.preheader193.preheader ], [ 0, %._crit_edge235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %.thread, %.loopexit195
  %.13 = phi i64 [ %.12, %.loopexit195 ], [ 0, %bb.i ], [ %.2.ph, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.14 = phi i64 [ %.13, %bb.r ], [ 0, %bb.a ]
  ret i64 %.14
}

declare { i32, i64 } @ZS_largeHuffmanBuildCTable(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare { i32, i64 } @ZS_largeHuffmanWriteCTable(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!"long", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, i1 false, !"ZL_WC_wrap"}
!21 = distinct !{!21, !20, !"ZL_WC_wrap: argument 0"}
!22 = distinct !{!22, i1 false, !"ZL_WC_wrapPartial"}
!23 = distinct !{!23, !22, !"ZL_WC_wrapPartial: argument 0"}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = !{!"short", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!23, !21}
!33 = !{!30, !29, i64 8}
!34 = !{!30, !29, i64 16}
end_hunk_1
