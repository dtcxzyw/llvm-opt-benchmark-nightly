Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx2?download=true
inline.NumInlined: 31
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local36initialize_block_encoder_tables_avx2Ev:bb.a
  %i.ac = icmp samesign ult i64 %.0122.i, 444
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [28 x i8], ptr @__const._ZN4ojph5localL15vlc_init_tablesEv.tbl0, i64 %.0122.i ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.af = icmp eq i32 %i.ae, %i.d
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.preheader151.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.ai = icmp eq i32 %i.ah, %i.f
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.loopexit152.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.preheader151.i
  %i.am = add nuw nsw i64 %.0122.i, 1
  br label %.preheader151.i, !llvm.loop !33

.loopexit152.i:                                   ; preds = %bb.h, %bb.j
  %.4131.i = phi ptr [ %i.ad, %bb.j ], [ %.2129.i, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.4131.i, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !44
  %i.ap = shl i32 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.4131.i, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.as = shl i32 %i.ar, 4
  %i.at = add nsw i32 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %.4131.i, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %i.aw = add nsw i32 %i.at, %i.av
  %i.ax = and i32 %i.aw, 65535
  br label %bb.l

bb.l:                                             ; preds = %.loopexit152.i, %.preheader155.i
  %.sink.i = phi i32 [ %i.ax, %.loopexit152.i ], [ 0, %.preheader155.i ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL8vlc_tbl0E, i64 %indvars.iv.i
  store i32 %.sink.i, ptr %i.ay, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next.i, 2048
  br i1 %exitcond171.not.i, label %.preheader150.i, label %.preheader155.i, !llvm.loop !34

.preheader150.i:                                  ; preds = %bb.l, %bb.v
  %indvars.iv173.i = phi i64 [ %indvars.iv.next174.i, %bb.v ], [ 0, %bb.l ] ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv173.i to i32 ; 4 uses
  %i.ba = lshr i32 %i.az, 8                       ; 3 uses
  %i.bb = lshr i32 %i.az, 4
  %i.bc = and i32 %i.bb, 15                       ; 4 uses
  %i.bd = and i32 %i.az, 15                       ; 3 uses
  %i.be = and i32 %i.bc, %i.az
  %.not.i = icmp ne i32 %i.be, %i.bd
  %i.bf = or i32 %i.bc, %i.ba
  %or.cond3.i = icmp eq i32 %i.bf, 0
  %or.cond145.i = or i1 %.not.i, %or.cond3.i
  br i1 %or.cond145.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %.preheader150.i
  %.not138.i = icmp eq i32 %i.bd, 0
  br i1 %.not138.i, label %.preheader.i, label %.preheader148.i

.preheader148.i:                                  ; preds = %bb.m, %bb.r
  %.0116164.i = phi i64 [ %i.by, %bb.r ], [ 0, %bb.m ] ; 2 uses
  %.0117163.i = phi i32 [ %.2.i, %bb.r ], [ -1, %bb.m ] ; 6 uses
  %.0118162.i = phi ptr [ %.2120.i, %bb.r ], [ null, %bb.m ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [28 x i8], ptr @__const._ZN4ojph5localL15vlc_init_tablesEv.tbl1, i64 %.0116164.i ; 6 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.bi = icmp eq i32 %i.bh, %i.ba
  br i1 %i.bi, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.preheader148.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40
  %i.bl = icmp eq i32 %i.bk, %i.bc
  br i1 %i.bl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !41
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !42 ; 2 uses
  %i.br = and i32 %i.bq, %i.bd
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !43
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bv = sext i32 %i.bq to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !9  ; 2 uses
  %.not139.i = icmp slt i32 %i.bx, %.0117163.i
  %spec.select146.i = select i1 %.not139.i, ptr %.0118162.i, ptr %i.bg
  %spec.select147.i = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 %.0117163.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %.preheader148.i
  %.2120.i = phi ptr [ %spec.select146.i, %bb.q ], [ %.0118162.i, %bb.p ], [ %.0118162.i, %bb.o ], [ %.0118162.i, %bb.n ], [ %.0118162.i, %.preheader148.i ] ; 2 uses
  %.2.i = phi i32 [ %spec.select147.i, %bb.q ], [ %.0117163.i, %bb.p ], [ %.0117163.i, %bb.o ], [ %.0117163.i, %bb.n ], [ %.0117163.i, %.preheader148.i ]
  %i.by = add nuw nsw i64 %.0116164.i, 1          ; 2 uses
  %exitcond172.not.i = icmp eq i64 %i.by, 358
  br i1 %exitcond172.not.i, label %.loopexit.i, label %.preheader148.i, !llvm.loop !35

.preheader.i:                                     ; preds = %bb.m, %bb.u
  %.0.i = phi i64 [ %i.cj, %bb.u ], [ 0, %bb.m ]  ; 3 uses
  %i.bz = icmp samesign ult i64 %.0.i, 358
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [28 x i8], ptr @__const._ZN4ojph5localL15vlc_init_tablesEv.tbl1, i64 %.0.i ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !39
  %i.cc = icmp eq i32 %i.cb, %i.ba
  br i1 %i.cc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.preheader.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40
  %i.cf = icmp eq i32 %i.ce, %i.bc
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !41
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.preheader.i
  %i.cj = add nuw nsw i64 %.0.i, 1
  br label %.preheader.i, !llvm.loop !36

.loopexit.i:                                      ; preds = %bb.r, %bb.t
  %.4.i = phi ptr [ %i.ca, %bb.t ], [ %.2120.i, %bb.r ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !44
  %i.cm = shl i32 %i.cl, 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.4.i, i64 24
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !45
  %i.cp = shl i32 %i.co, 4
  %i.cq = add nsw i32 %i.cp, %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %.4.i, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42
  %i.ct = add nsw i32 %i.cq, %i.cs
  %i.cu = and i32 %i.ct, 65535
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i, %.preheader150.i
  %.sink185.i = phi i32 [ %i.cu, %.loopexit.i ], [ 0, %.preheader150.i ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL8vlc_tbl1E, i64 %indvars.iv173.i
  store i32 %.sink185.i, ptr %i.cv, align 4, !tbaa !9
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1 ; 2 uses
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next174.i, 2048
  br i1 %exitcond176.not.i, label %_ZN4ojph5localL15vlc_init_tablesEv.exit, label %.preheader150.i, !llvm.loop !37

_ZN4ojph5localL15vlc_init_tablesEv.exit:          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i1 true, ptr @_ZN4ojph5localL18tables_initializedE, align 1
  store <4 x i32> <i32 0, i32 1, i32 2, i32 4>, ptr @_ZN4ojph5localL12ulvc_cwd_preE, align 16, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 16), align 16, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_ZN4ojph5localL12ulvc_cwd_sufE, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 20), i8 0, i64 112, i1 false), !tbaa !9
  store <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3>, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, align 32, !tbaa !9
  store <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 5, i32 5, i32 5>, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, align 32, !tbaa !9
  store <8 x i32> <i32 1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 16), align 16, !tbaa !9
  store <8 x i32> splat (i32 3), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 32), align 32, !tbaa !9
  store <8 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 32), align 32, !tbaa !9
  store <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 48), align 16, !tbaa !9
  store <8 x i32> splat (i32 3), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 64), align 32, !tbaa !9
  store <8 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 64), align 32, !tbaa !9
  store <8 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 80), align 16, !tbaa !9
  store <8 x i32> splat (i32 3), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 96), align 32, !tbaa !9
  store <4 x i32> <i32 23, i32 24, i32 25, i32 26>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 112), align 16, !tbaa !9
  store <8 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 96), align 32, !tbaa !9
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 128), align 32, !tbaa !9
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 128), align 16, !tbaa !9
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 128), align 32, !tbaa !9
  store i1 true, ptr @_ZN4ojph5localL18tables_initializedE, align 1
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ojph5localL15vlc_init_tablesEv.exit, %bb.a
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local26ojph_encode_codeblock_avx2EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x <4 x i64>], align 32         ; 7 uses
  %i.b = alloca [17477 x i8], align 16            ; 8 uses
  %i.c = alloca [3072 x i8], align 16             ; 4 uses
  %9 = alloca %"struct.ojph::local::mel_struct", align 8 ; 15 uses
  %10 = alloca %"struct.ojph::local::vlc_struct_avx2", align 8 ; 12 uses
  %i.d = alloca [65 x <4 x i64>], align 32        ; 6 uses
  %i.e = alloca [65 x <4 x i64>], align 32        ; 8 uses
  %i.f = alloca [4 x <4 x i64>], align 32         ; 9 uses
  %i.g = alloca [16 x i32], align 16              ; 9 uses
  %i.h = alloca <4 x i64>, align 32               ; 7 uses
  %i.i = alloca <4 x i64>, align 32               ; 4 uses
  %i.j = alloca [8 x i32], align 16               ; 4 uses
  %i.k = alloca [8 x i32], align 16               ; 4 uses
  %i.l = add i32 %3, 15                           ; 3 uses
  %i.m = and i32 %i.l, -16
  %i.n = sub i32 %i.m, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr %i.c, ptr %9, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 8 uses
  store <4 x i32> <i32 0, i32 192, i32 8, i32 0>, ptr %i.o, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i32 0, ptr %i.s, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %i.t, align 4, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 1, ptr %i.u, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3071 ; 2 uses
  store ptr %i.v, ptr %10, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 11 uses
  store i32 1, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 2880, ptr %i.x, align 4, !tbaa !53
  store i8 -1, ptr %i.v, align 1, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store i32 4, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  store i64 15, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store i8 1, ptr %i.aa, align 8, !tbaa !26
  %i.ab = sub i32 30, %1                          ; 4 uses
  %i.ac = lshr i32 %i.l, 4                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %.not243 = icmp eq i32 %i.ac, 0
  br i1 %.not243, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %.not244 = icmp eq i32 %4, 0
  br i1 %.not244, label %._crit_edge234.thread, label %.lr.ph233.split.preheader

._crit_edge.thread:                               ; preds = %bb.a
  %i.ad = lshr i32 %i.l, 4
  %i.ae = call i32 @llvm.umax.i32(i32 %i.ad, i32 1)
  %i.af = call i32 @llvm.umin.i32(i32 %i.ae, i32 64)
  %i.ag = shl nuw nsw i32 %i.af, 5
  %i.ah = zext nneg i32 %i.ag to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %i.d, i8 0, i64 %i.ah, i1 false), !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %.not244265 = icmp eq i32 %4, 0
  br i1 %.not244265, label %._crit_edge234.thread, label %.lr.ph213.us.preheader

.lr.ph213.us.preheader:                           ; preds = %._crit_edge.thread
  %i.ai = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.ai
  %i.al = and i32 %3, 15                          ; 2 uses
  %.not266 = icmp eq i32 %i.al, 0
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = zext i32 %5 to i64                      ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.av = add nsw i32 %i.ac, -1
  %i.aw = zext nneg i32 %i.av to i64
  %.32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %.lr.ph213.us

.lr.ph233.split.preheader:                        ; preds = %._crit_edge
  %i.ax = zext nneg i32 %i.ac to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.ax
  store <4 x i64> zeroinitializer, ptr %i.ay, align 32, !tbaa !23
  br label %._crit_edge234.thread

.lr.ph213.us:                                     ; preds = %.lr.ph213.us.preheader, %._crit_edge214.us
  %.098231.us = phi i32 [ %i.ol, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ] ; 3 uses
  %.099230.us = phi ptr [ @_ZN4ojph5localL16proc_vlc_encode2EPNS0_15vlc_struct_avx2EPjS3_j, %._crit_edge214.us ], [ @_ZN4ojph5localL16proc_vlc_encode1EPNS0_15vlc_struct_avx2EPjS3_j, %.lr.ph213.us.preheader ]
  %.0100229.us = phi ptr [ @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv4_xS4_S3_jS3_, %._crit_edge214.us ], [ @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv4_xS4_S3_jS3_, %.lr.ph213.us.preheader ]
  %.0101228.us = phi ptr [ @_ZN4ojph5localL8proc_cq2EjPDv4_xRS1_S1_, %._crit_edge214.us ], [ @_ZN4ojph5localL8proc_cq1EjPDv4_xRS1_S1_, %.lr.ph213.us.preheader ]
  %.0102227.us = phi ptr [ @_ZN4ojph5localL8vlc_tbl1E, %._crit_edge214.us ], [ @_ZN4ojph5localL8vlc_tbl0E, %.lr.ph213.us.preheader ]
  %.0103226.us = phi i32 [ %i.ok, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  %i.az = phi <8 x i32> [ %i.oc, %._crit_edge214.us ], [ zeroinitializer, %.lr.ph213.us.preheader ]
  %.0192224.us = phi <4 x i64> [ %i.oe, %._crit_edge214.us ], [ zeroinitializer, %.lr.ph213.us.preheader ]
  %.sroa.9154.0223.us = phi i32 [ %.sroa.9154.7.us, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  %.sroa.37.0222.us = phi i32 [ %.sroa.37.6.us, %._crit_edge214.us ], [ 8, %.lr.ph213.us.preheader ]
  %.sroa.47.0221.us = phi i32 [ %.sroa.47.6.us, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  %.sroa.62.0220.us = phi i32 [ %.sroa.62.6.us, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  store <4 x i64> %.0192224.us, ptr %i.aj, align 32, !tbaa !23
  %i.ba = lshr <8 x i32> %i.az, splat (i32 3)
  %i.bb = bitcast <8 x i32> %i.ba to <4 x i64>
  %i.bc = and <4 x i64> %i.bb, splat (i64 1)
  store <4 x i64> %i.bc, ptr %i.ak, align 32, !tbaa !23
  %i.bd = mul i32 %.098231.us, %5
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = or disjoint i32 %.098231.us, 1
  %i.bh = icmp ult i32 %i.bg, %4                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph213.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph213.us ], [ %indvars.iv.next, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ] ; 5 uses
  %.097210.us = phi ptr [ %i.bf, %.lr.ph213.us ], [ %.1.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ] ; 7 uses
  %.1104209.us = phi i32 [ %.0103226.us, %.lr.ph213.us ], [ %i.oa, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bi = phi <8 x i32> [ zeroinitializer, %.lr.ph213.us ], [ %i.oc, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bj = phi <8 x i32> [ zeroinitializer, %.lr.ph213.us ], [ %i.ob, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.9154.1206.us = phi i32 [ %.sroa.9154.0223.us, %.lr.ph213.us ], [ %.sroa.9154.7.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.37.1205.us = phi i32 [ %.sroa.37.0222.us, %.lr.ph213.us ], [ %.sroa.37.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.47.1204.us = phi i32 [ %.sroa.47.0221.us, %.lr.ph213.us ], [ %.sroa.47.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.62.1203.us = phi i32 [ %.sroa.62.0220.us, %.lr.ph213.us ], [ %.sroa.62.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bk = icmp ne i64 %indvars.iv, %i.aw          ; 2 uses
  %brmerge = or i1 %i.bk, %.not266
  br i1 %brmerge, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 4 %.097210.us, i64 %i.an, i1 false)
  %.0..0..0.131194.us = load <8 x i32>, ptr %i.g, align 16, !tbaa !23
  %.32..32..32.133196.us = load <8 x i32>, ptr %.32..32..32..sroa_idx, align 16, !tbaa !23
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.097210.us, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 4 %i.bl, i64 %i.an, i1 false)
  %.0..0..0.195.us = load <8 x i32>, ptr %i.g, align 16, !tbaa !23
  %.32..32..32.197.us = load <8 x i32>, ptr %.32..32..32..sroa_idx281, align 16, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi <8 x i32> [ %.32..32..32.197.us, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.bn = phi <8 x i32> [ %.0..0..0.195.us, %bb.d ], [ zeroinitializer, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.bo = load <8 x i32>, ptr %.097210.us, align 1, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.097210.us, i64 32 ; 2 uses
  %i.bq = load <8 x i32>, ptr %i.bp, align 1, !tbaa !23
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.097210.us, i64 %i.ao
  %i.bs = load <8 x i32>, ptr %i.br, align 1, !tbaa !23
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ao
  %i.bu = load <8 x i32>, ptr %i.bt, align 1, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bv = phi <8 x i32> [ %i.bu, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.bw = phi <8 x i32> [ %i.bs, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.097210.us, i64 64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.by = phi <8 x i32> [ %i.bv, %bb.h ], [ %i.bm, %bb.e ] ; 2 uses
  %i.bz = phi <8 x i32> [ %i.bq, %bb.h ], [ %.32..32..32.133196.us, %bb.e ] ; 2 uses
  %i.ca = phi <8 x i32> [ %i.bw, %bb.h ], [ %i.bn, %bb.e ] ; 2 uses
  %i.cb = phi <8 x i32> [ %i.bo, %bb.h ], [ %.0..0..0.131194.us, %bb.e ] ; 2 uses
  %.1.us = phi ptr [ %i.bx, %bb.h ], [ %.097210.us, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.cc = shl <8 x i32> %i.cb, splat (i32 1)
  %i.cd = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.cc, i32 %i.ab)
  %i.ce = and <8 x i32> %i.cd, splat (i32 -2)     ; 3 uses
  %.not.i118.us = icmp ne <8 x i32> %i.ce, zeroinitializer ; 3 uses
  %i.cf = add <8 x i32> %i.ce, splat (i32 -1)     ; 2 uses
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 8)
  %i.ch = xor <8 x i32> %i.cg, splat (i32 -1)
  %i.ci = and <8 x i32> %i.cf, %i.ch
  %i.cj = sitofp <8 x i32> %i.ci to <8 x float>
  %i.ck = bitcast <8 x float> %i.cj to <8 x i32>
  %i.cl = lshr <8 x i32> %i.ck, splat (i32 23)
  %i.cm = bitcast <8 x i32> %i.cl to <16 x i16>
  %i.cn = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.cm)
  %i.co = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.cn, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.cp = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cq = sub nsw <8 x i32> splat (i32 32), %i.cp
  %i.cr = add <8 x i32> %i.ce, splat (i32 -2)
  %i.cs = lshr <8 x i32> %i.cb, splat (i32 31)
  %i.ct = or disjoint <8 x i32> %i.cr, %i.cs
  %i.cu = select <8 x i1> %.not.i118.us, <8 x i32> %i.cq, <8 x i32> zeroinitializer ; 2 uses
  %i.cv = select <8 x i1> %.not.i118.us, <8 x i32> %i.ct, <8 x i32> zeroinitializer ; 2 uses
  %i.cw = shl <8 x i32> %i.ca, splat (i32 1)
  %i.cx = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.cw, i32 %i.ab)
  %i.cy = and <8 x i32> %i.cx, splat (i32 -2)     ; 3 uses
  %.not.1.i.us = icmp ne <8 x i32> %i.cy, zeroinitializer ; 3 uses
  %i.cz = add <8 x i32> %i.cy, splat (i32 -1)     ; 2 uses
  %i.da = lshr <8 x i32> %i.cz, splat (i32 8)
  %i.db = xor <8 x i32> %i.da, splat (i32 -1)
  %i.dc = and <8 x i32> %i.cz, %i.db
  %i.dd = sitofp <8 x i32> %i.dc to <8 x float>
  %i.de = bitcast <8 x float> %i.dd to <8 x i32>
  %i.df = lshr <8 x i32> %i.de, splat (i32 23)
  %i.dg = bitcast <8 x i32> %i.df to <16 x i16>
  %i.dh = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.dg)
  %i.di = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.dh, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.dj = bitcast <16 x i16> %i.di to <8 x i32>
  %i.dk = sub nsw <8 x i32> splat (i32 32), %i.dj
  %i.dl = add <8 x i32> %i.cy, splat (i32 -2)
  %i.dm = lshr <8 x i32> %i.ca, splat (i32 31)
  %i.dn = or disjoint <8 x i32> %i.dl, %i.dm
  %i.do = select <8 x i1> %.not.1.i.us, <8 x i32> %i.dk, <8 x i32> zeroinitializer ; 2 uses
  %i.dp = select <8 x i1> %.not.1.i.us, <8 x i32> %i.dn, <8 x i32> zeroinitializer ; 2 uses
  %i.dq = shl <8 x i32> %i.bz, splat (i32 1)
  %i.dr = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.dq, i32 %i.ab)
  %i.ds = and <8 x i32> %i.dr, splat (i32 -2)     ; 3 uses
  %.not.2.i.us = icmp ne <8 x i32> %i.ds, zeroinitializer ; 3 uses
  %i.dt = add <8 x i32> %i.ds, splat (i32 -1)     ; 2 uses
  %i.du = lshr <8 x i32> %i.dt, splat (i32 8)
  %i.dv = xor <8 x i32> %i.du, splat (i32 -1)
  %i.dw = and <8 x i32> %i.dt, %i.dv
  %i.dx = sitofp <8 x i32> %i.dw to <8 x float>
  %i.dy = bitcast <8 x float> %i.dx to <8 x i32>
  %i.dz = lshr <8 x i32> %i.dy, splat (i32 23)
  %i.ea = bitcast <8 x i32> %i.dz to <16 x i16>
  %i.eb = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.ea)
  %i.ec = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.eb, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.ed = bitcast <16 x i16> %i.ec to <8 x i32>
  %i.ee = sub nsw <8 x i32> splat (i32 32), %i.ed
  %i.ef = add <8 x i32> %i.ds, splat (i32 -2)
  %i.eg = lshr <8 x i32> %i.bz, splat (i32 31)
  %i.eh = or disjoint <8 x i32> %i.ef, %i.eg
  %i.ei = select <8 x i1> %.not.2.i.us, <8 x i32> %i.ee, <8 x i32> zeroinitializer ; 2 uses
  %i.ej = select <8 x i1> %.not.2.i.us, <8 x i32> %i.eh, <8 x i32> zeroinitializer ; 2 uses
  %i.ek = shl <8 x i32> %i.by, splat (i32 1)
  %i.el = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.ek, i32 %i.ab)
  %i.em = and <8 x i32> %i.el, splat (i32 -2)     ; 3 uses
  %.not.3.i.us = icmp ne <8 x i32> %i.em, zeroinitializer ; 3 uses
  %i.en = add <8 x i32> %i.em, splat (i32 -1)     ; 2 uses
  %i.eo = lshr <8 x i32> %i.en, splat (i32 8)
  %i.ep = xor <8 x i32> %i.eo, splat (i32 -1)
  %i.eq = and <8 x i32> %i.en, %i.ep
  %i.er = sitofp <8 x i32> %i.eq to <8 x float>
  %i.es = bitcast <8 x float> %i.er to <8 x i32>
  %i.et = lshr <8 x i32> %i.es, splat (i32 23)
  %i.eu = bitcast <8 x i32> %i.et to <16 x i16>
  %i.ev = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.eu)
  %i.ew = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.ev, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.ex = bitcast <16 x i16> %i.ew to <8 x i32>
  %i.ey = sub nsw <8 x i32> splat (i32 32), %i.ex
  %i.ez = add <8 x i32> %i.em, splat (i32 -2)
  %i.fa = lshr <8 x i32> %i.by, splat (i32 31)
  %i.fb = or disjoint <8 x i32> %i.ez, %i.fa
  %i.fc = select <8 x i1> %.not.3.i.us, <8 x i32> %i.ey, <8 x i32> zeroinitializer ; 2 uses
  %i.fd = select <8 x i1> %.not.3.i.us, <8 x i32> %i.fb, <8 x i32> zeroinitializer ; 2 uses
  %i.fe = shufflevector <8 x i32> %i.cu, <8 x i32> %i.ei, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ff = shufflevector <8 x i32> %i.cu, <8 x i32> %i.ei, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fg = shufflevector <8 x i32> %i.cv, <8 x i32> %i.ej, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  store <8 x i32> %i.fg, ptr %i.f, align 32, !tbaa !23
  %i.fh = shufflevector <8 x i32> %i.cv, <8 x i32> %i.ej, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  store <8 x i32> %i.fh, ptr %i.ap, align 32, !tbaa !23
  %i.fi = shufflevector <8 x i1> %.not.i118.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fj = zext <8 x i1> %i.fi to <8 x i32>        ; 2 uses
  %i.fk = shufflevector <8 x i1> %.not.2.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fl = zext <8 x i1> %i.fk to <8 x i32>        ; 2 uses
  %i.fm = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fn = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fo = shufflevector <8 x i32> %i.do, <8 x i32> %i.fc, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.fp = shufflevector <8 x i32> %i.do, <8 x i32> %i.fc, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.fq = shufflevector <8 x i32> %i.dp, <8 x i32> %i.fd, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  store <8 x i32> %i.fq, ptr %i.aq, align 32, !tbaa !23
  %i.fr = shufflevector <8 x i32> %i.dp, <8 x i32> %i.fd, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  store <8 x i32> %i.fr, ptr %i.ar, align 32, !tbaa !23
  %i.fs = shufflevector <8 x i1> %.not.1.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ft = zext <8 x i1> %i.fs to <8 x i32>        ; 2 uses
  %i.fu = shufflevector <8 x i1> %.not.3.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fv = zext <8 x i1> %i.fu to <8 x i32>        ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fx = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fe, <8 x i32> %i.fo)
  %i.fz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fy, <8 x i32> %i.ff) ; 2 uses
  %i.ga = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fz, <8 x i32> %i.fp) ; 4 uses
  %i.gb = shl nuw nsw <8 x i32> %i.fw, splat (i32 1)
  %i.gc = shl nuw nsw <8 x i32> %i.fn, splat (i32 2)
  %i.gd = shl nuw nsw <8 x i32> %i.fx, splat (i32 3)
  %i.ge = or disjoint <8 x i32> %i.gb, %i.gc
  %.inner277 = or disjoint <8 x i32> %i.fm, %i.gd
  %.inner278 = or disjoint <8 x i32> %.inner277, %i.ge ; 2 uses
  store <8 x i32> %.inner278, ptr %i.h, align 32, !tbaa !23
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.gg = load <8 x i32>, ptr %i.gf, align 32, !tbaa !23 ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.gg, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.gj = load <1 x i64>, ptr %i.gi, align 32, !tbaa !23
  %i.gk = shufflevector <1 x i64> %i.gj, <1 x i64> poison, <2 x i32> <i32 0, i32 poison>
  %i.gl = bitcast <2 x i64> %i.gk to <4 x i32>
  %i.gm = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.go = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> %i.gg)
  %i.gp = add <8 x i32> %i.go, splat (i32 -1)
  %i.gq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gp, <8 x i32> splat (i32 1))
  %i.gr = call range(i32 0, 5) <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %.inner278)
  %.inv = icmp samesign ugt <8 x i32> %i.gr, splat (i32 1)
  %i.gs = select <8 x i1> %.inv, <8 x i32> %i.gq, <8 x i32> splat (i32 1) ; 2 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv to i32
  %i.gu = call noundef <4 x i64> %.0101228.us(i32 noundef %i.gt, ptr noundef nonnull %i.e, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.gv = bitcast <4 x i64> %i.gu to <8 x i32>    ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.gv, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gx = insertelement <8 x i32> %i.gw, i32 %.1104209.us, i64 0 ; 2 uses
  store <8 x i32> %i.gx, ptr %i.i, align 32, !tbaa !23
  %i.gy = shufflevector <8 x i32> %i.fp, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gz = shufflevector <8 x i32> %i.bj, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ha = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fo, <8 x i32> %i.gz)
  store <8 x i32> %i.ha, ptr %i.gf, align 32, !tbaa !23
  %i.hb = load <8 x i32>, ptr %i.h, align 32, !tbaa !23 ; 4 uses
  %i.hc = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.hd = shufflevector <8 x i32> %i.bi, <8 x i32> %i.hc, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = lshr <8 x i32> %i.hd, splat (i32 3)
  %i.hf = lshr <8 x i32> %i.hb, splat (i32 1)
  %i.hg = or <8 x i32> %i.he, %i.hf
  %i.hh = bitcast <8 x i32> %i.hg to <4 x i64>
  %i.hi = and <4 x i64> %i.hh, splat (i64 4294967297)
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  store <4 x i64> %i.hi, ptr %i.hj, align 32, !tbaa !23
  %i.hk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gs, <8 x i32> %i.ga) ; 5 uses
  %i.hl = sub nsw <8 x i32> %i.hk, %i.gs          ; 3 uses
  %i.hm = bitcast <8 x i32> %i.hl to <4 x i64>
  %i.hn = icmp sgt <8 x i32> %i.hl, zeroinitializer
  %i.ho = icmp eq <8 x i32> %i.ga, %i.fe
  %i.hp = zext <8 x i1> %i.ho to <8 x i32>
  %i.hq = icmp eq <8 x i32> %i.ga, %i.fo
  %i.hr = select <8 x i1> %i.hq, <8 x i32> splat (i32 2), <8 x i32> zeroinitializer
  %i.hs = icmp eq <8 x i32> %i.ga, %i.ff
  %i.ht = select <8 x i1> %i.hs, <8 x i32> splat (i32 4), <8 x i32> zeroinitializer
  %.not198.us = icmp sgt <8 x i32> %i.fz, %i.fp
  %i.hu = select <8 x i1> %.not198.us, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8)
  %i.hv = or disjoint <8 x i32> %i.hu, %i.hp
  %i.hw = or disjoint <8 x i32> %i.hv, %i.hr
  %i.hx = or disjoint <8 x i32> %i.hw, %i.ht
  %i.hy = select <8 x i1> %i.hn, <8 x i32> %i.hx, <8 x i32> zeroinitializer
  %i.hz = shl <8 x i32> %i.gx, splat (i32 8)
  %i.ia = shl <8 x i32> %i.hb, splat (i32 4)
  %i.ib = add <8 x i32> %i.ia, %i.hz
  %i.ic = or disjoint <8 x i32> %i.hy, %i.ib
  %i.id = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull readonly %.0102227.us, <8 x i32> %i.ic, <8 x i32> splat (i32 -1), i8 4) ; 5 uses
  %i.ie = select i1 %i.bk, i32 0, i32 %i.n        ; 2 uses
  call void %.0100229.us(ptr noundef nonnull %9, ptr noundef nonnull align 32 dereferenceable(32) %i.i, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef %i.hm, i32 noundef %i.ie, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !55
  %.val115201.us = load <8 x i32>, ptr %i.h, align 32, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.if = and <8 x i32> %i.id, splat (i32 1)
  %i.ig = sub nuw nsw <8 x i32> %i.hk, %i.if
  %i.ih = and <8 x i32> %.val115201.us, splat (i32 1)
  %i.ii = icmp eq <8 x i32> %i.ih, zeroinitializer
  %i.ij = select <8 x i1> %i.ii, <8 x i32> zeroinitializer, <8 x i32> %i.ig ; 2 uses
  %i.ik = lshr <8 x i32> %i.id, splat (i32 1)
  %i.il = and <8 x i32> %i.ik, splat (i32 1)
  %i.im = sub nuw nsw <8 x i32> %i.hk, %i.il
  %i.in = and <8 x i32> %.val115201.us, splat (i32 2)
  %.not.i119.us = icmp eq <8 x i32> %i.in, zeroinitializer
  %i.io = select <8 x i1> %.not.i119.us, <8 x i32> zeroinitializer, <8 x i32> %i.im ; 2 uses
  %i.ip = lshr <8 x i32> %i.id, splat (i32 2)
  %i.iq = and <8 x i32> %i.ip, splat (i32 1)
  %i.ir = sub nuw nsw <8 x i32> %i.hk, %i.iq
  %i.is = and <8 x i32> %.val115201.us, splat (i32 4)
  %.not5.i.us = icmp eq <8 x i32> %i.is, zeroinitializer
  %i.it = select <8 x i1> %.not5.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.ir ; 2 uses
  %i.iu = lshr <8 x i32> %i.id, splat (i32 3)
  %i.iv = and <8 x i32> %i.iu, splat (i32 1)
  %i.iw = sub nuw nsw <8 x i32> %i.hk, %i.iv
  %i.ix = and <8 x i32> %.val115201.us, splat (i32 8)
  %.not6.i.us = icmp eq <8 x i32> %i.ix, zeroinitializer
  %i.iy = select <8 x i1> %.not6.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.iw ; 2 uses
  %i.iz = shufflevector <8 x i32> %i.ij, <8 x i32> %i.io, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ja = shufflevector <8 x i32> %i.it, <8 x i32> %i.iy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jb = shufflevector <8 x i32> %i.ij, <8 x i32> %i.io, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jc = shufflevector <8 x i32> %i.it, <8 x i32> %i.iy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jd = shufflevector <8 x i32> %i.iz, <8 x i32> %i.ja, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.je = shufflevector <8 x i32> %i.iz, <8 x i32> %i.ja, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.je, ptr %i.at, align 32, !tbaa !23
  store <8 x i32> %i.jd, ptr %i.a, align 32, !tbaa !23
  %i.jf = shufflevector <8 x i32> %i.jb, <8 x i32> %i.jc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jg = shufflevector <8 x i32> %i.jb, <8 x i32> %i.jc, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jg, ptr %i.au, align 32, !tbaa !23
  store <8 x i32> %i.jf, ptr %i.as, align 32, !tbaa !23
  %i.jh = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jj = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jk = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jl = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jm = shufflevector <8 x i32> %i.jh, <8 x i32> %i.ji, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jm, ptr %i.ap, align 32, !tbaa !23
  store <8 x i32> %i.jl, ptr %i.f, align 32, !tbaa !23
  %i.jn = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jo = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jo, ptr %i.ar, align 32, !tbaa !23
  store <8 x i32> %i.jn, ptr %i.aq, align 32, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us, %bb.i
  %.sroa.62.2.us = phi i32 [ %.sroa.62.1203.us, %bb.i ], [ %.sroa.62.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.47.2.us = phi i32 [ %.sroa.47.1204.us, %bb.i ], [ %.sroa.47.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.37.2.us = phi i32 [ %.sroa.37.1205.us, %bb.i ], [ %.sroa.37.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.9154.3.us = phi i32 [ %.sroa.9154.1206.us, %bb.i ], [ %.sroa.9154.7.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.jq = load <8 x i32>, ptr %i.jp, align 32, !tbaa !23 ; 9 uses
  %i.jr = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.jq)
  %i.js = add <8 x i32> %i.jr, splat (i32 -1)
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv.i.us
  %i.ju = load <8 x i32>, ptr %i.jt, align 32, !tbaa !23
  %i.jv = and <8 x i32> %i.ju, %i.js              ; 8 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 1
  %i.jw = add nsw i32 %.sroa.0.4.vec.extract.i.us, %.sroa.0.0.vec.extract.i.us ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.lr.ph.i.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.j
  %.sroa.012.4.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 1
  %i.jy = zext i32 %.sroa.012.4.vec.extract.i.us to i64
  %i.jz = zext nneg i32 %.sroa.0.0.vec.extract.i.us to i64
  %i.ka = shl i64 %i.jy, %i.jz
  %.sroa.012.0.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 0
  %i.kb = zext i32 %.sroa.012.0.vec.extract.i.us to i64
  %i.kc = or i64 %i.ka, %i.kb
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.us
  %.sroa.62.13.us = phi i32 [ %.sroa.62.2.us, %.lr.ph.i.i.us ], [ %.sroa.62.14.us, %bb.o ]
  %.sroa.47.13.us = phi i32 [ %.sroa.47.2.us, %.lr.ph.i.i.us ], [ %.sroa.47.14.us, %bb.o ] ; 3 uses
  %.sroa.37.13.us = phi i32 [ %.sroa.37.2.us, %.lr.ph.i.i.us ], [ %.sroa.37.14.us, %bb.o ] ; 3 uses
  %.sroa.9154.14.us = phi i32 [ %.sroa.9154.3.us, %.lr.ph.i.i.us ], [ %.sroa.9154.15.us, %bb.o ] ; 4 uses
  %.032.i.i.us = phi i32 [ %i.jw, %.lr.ph.i.i.us ], [ %i.kp, %bb.o ] ; 2 uses
  %.02731.i.i.us = phi i64 [ %i.kc, %.lr.ph.i.i.us ], [ %i.ko, %bb.o ] ; 2 uses
  %.not.i.i.us = icmp ult i32 %.sroa.9154.14.us, 17477
  br i1 %.not.i.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !57
  %i.kf = load ptr, ptr %i.ke, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.kg = sub nuw nsw i32 %.sroa.37.13.us, %.sroa.47.13.us
  %..0.i.i.us = call i32 @llvm.smin.i32(i32 %i.kg, i32 %.032.i.i.us) ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %..0.i.i.us
  %i.kh = xor i32 %notmask.i.i.us, -1
  %i.ki = trunc i64 %.02731.i.i.us to i32
  %i.kj = and i32 %i.kh, %i.ki
  %i.kk = shl nuw nsw i32 %i.kj, %.sroa.47.13.us
  %i.kl = or i32 %i.kk, %.sroa.62.13.us           ; 3 uses
  %i.km = add nuw nsw i32 %..0.i.i.us, %.sroa.47.13.us ; 2 uses
  %i.kn = zext nneg i32 %..0.i.i.us to i64
  %i.ko = lshr i64 %.02731.i.i.us, %i.kn
  %i.kp = sub nsw i32 %.032.i.i.us, %..0.i.i.us   ; 2 uses
  %.not30.i.i.us = icmp slt i32 %i.km, %.sroa.37.13.us
  br i1 %.not30.i.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kq = trunc i32 %i.kl to i8
  %i.kr = add nuw i32 %.sroa.9154.14.us, 1
  %i.ks = zext i32 %.sroa.9154.14.us to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ks
  store i8 %i.kq, ptr %i.kt, align 1, !tbaa !23
  %i.ku = icmp eq i32 %i.kl, 255
  %i.kv = select i1 %i.ku, i32 7, i32 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.62.14.us = phi i32 [ %i.kl, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.47.14.us = phi i32 [ %i.km, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.37.14.us = phi i32 [ %.sroa.37.13.us, %bb.m ], [ %i.kv, %bb.n ] ; 2 uses
  %.sroa.9154.15.us = phi i32 [ %.sroa.9154.14.us, %bb.m ], [ %i.kr, %bb.n ] ; 2 uses
  %i.kw = icmp sgt i32 %i.kp, 0
  br i1 %i.kw, label %bb.k, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us: ; preds = %bb.o, %bb.j
  %.sroa.62.3.us = phi i32 [ %.sroa.62.2.us, %bb.j ], [ %.sroa.62.14.us, %bb.o ] ; 2 uses
  %.sroa.47.3.us = phi i32 [ %.sroa.47.2.us, %bb.j ], [ %.sroa.47.14.us, %bb.o ] ; 2 uses
  %.sroa.37.3.us = phi i32 [ %.sroa.37.2.us, %bb.j ], [ %.sroa.37.14.us, %bb.o ] ; 2 uses
  %.sroa.9154.4.us = phi i32 [ %.sroa.9154.3.us, %bb.j ], [ %.sroa.9154.15.us, %bb.o ] ; 2 uses
  %.sroa.0.8.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 2 ; 2 uses
  %.sroa.0.12.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 3
  %i.kx = add nsw i32 %.sroa.0.12.vec.extract.i.us, %.sroa.0.8.vec.extract.i.us ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.i.1.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us

.lr.ph.i.1.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %.sroa.012.12.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 3
  %i.kz = zext i32 %.sroa.012.12.vec.extract.i.us to i64
  %i.la = zext nneg i32 %.sroa.0.8.vec.extract.i.us to i64
  %i.lb = shl i64 %i.kz, %i.la
  %.sroa.012.8.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 2
  %i.lc = zext i32 %.sroa.012.8.vec.extract.i.us to i64
  %i.ld = or i64 %i.lb, %i.lc
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.1.i.us
  %.sroa.62.11.us = phi i32 [ %.sroa.62.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.62.12.us, %bb.t ]
  %.sroa.47.11.us = phi i32 [ %.sroa.47.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.47.12.us, %bb.t ] ; 3 uses
  %.sroa.37.11.us = phi i32 [ %.sroa.37.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.37.12.us, %bb.t ] ; 3 uses
  %.sroa.9154.12.us = phi i32 [ %.sroa.9154.4.us, %.lr.ph.i.1.i.us ], [ %.sroa.9154.13.us, %bb.t ] ; 4 uses
  %.032.i.1.i.us = phi i32 [ %i.kx, %.lr.ph.i.1.i.us ], [ %i.lq, %bb.t ] ; 2 uses
  %.02731.i.1.i.us = phi i64 [ %i.ld, %.lr.ph.i.1.i.us ], [ %i.lp, %bb.t ] ; 2 uses
  %.not.i.1.i.us = icmp ult i32 %.sroa.9154.12.us, 17477
  br i1 %.not.i.1.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.le = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !57
  %i.lg = load ptr, ptr %i.lf, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.le, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.lh = sub nuw nsw i32 %.sroa.37.11.us, %.sroa.47.11.us
  %..0.i.1.i.us = call i32 @llvm.smin.i32(i32 %i.lh, i32 %.032.i.1.i.us) ; 4 uses
  %notmask.i.1.i.us = shl nsw i32 -1, %..0.i.1.i.us
  %i.li = xor i32 %notmask.i.1.i.us, -1
  %i.lj = trunc i64 %.02731.i.1.i.us to i32
  %i.lk = and i32 %i.li, %i.lj
  %i.ll = shl nuw nsw i32 %i.lk, %.sroa.47.11.us
  %i.lm = or i32 %i.ll, %.sroa.62.11.us           ; 3 uses
  %i.ln = add nuw nsw i32 %..0.i.1.i.us, %.sroa.47.11.us ; 2 uses
  %i.lo = zext nneg i32 %..0.i.1.i.us to i64
  %i.lp = lshr i64 %.02731.i.1.i.us, %i.lo
  %i.lq = sub nsw i32 %.032.i.1.i.us, %..0.i.1.i.us ; 2 uses
  %.not30.i.1.i.us = icmp slt i32 %i.ln, %.sroa.37.11.us
  br i1 %.not30.i.1.i.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lr = trunc i32 %i.lm to i8
  %i.ls = add nuw i32 %.sroa.9154.12.us, 1
  %i.lt = zext i32 %.sroa.9154.12.us to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lt
  store i8 %i.lr, ptr %i.lu, align 1, !tbaa !23
  %i.lv = icmp eq i32 %i.lm, 255
  %i.lw = select i1 %i.lv, i32 7, i32 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.62.12.us = phi i32 [ %i.lm, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %.sroa.47.12.us = phi i32 [ %i.ln, %bb.r ], [ 0, %bb.s ] ; 2 uses
  %.sroa.37.12.us = phi i32 [ %.sroa.37.11.us, %bb.r ], [ %i.lw, %bb.s ] ; 2 uses
  %.sroa.9154.13.us = phi i32 [ %.sroa.9154.12.us, %bb.r ], [ %i.ls, %bb.s ] ; 2 uses
  %i.lx = icmp sgt i32 %i.lq, 0
  br i1 %i.lx, label %bb.p, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us: ; preds = %bb.t, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %.sroa.62.4.us = phi i32 [ %.sroa.62.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.62.12.us, %bb.t ] ; 2 uses
  %.sroa.47.4.us = phi i32 [ %.sroa.47.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.47.12.us, %bb.t ] ; 2 uses
  %.sroa.37.4.us = phi i32 [ %.sroa.37.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.37.12.us, %bb.t ] ; 2 uses
  %.sroa.9154.5.us = phi i32 [ %.sroa.9154.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ], [ %.sroa.9154.13.us, %bb.t ] ; 2 uses
  %.sroa.0.16.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 4 ; 2 uses
  %.sroa.0.20.vec.extract.i.us = extractelement <8 x i32> %i.jq, i64 5
  %i.ly = add nsw i32 %.sroa.0.20.vec.extract.i.us, %.sroa.0.16.vec.extract.i.us ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph.i.2.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.2.i.us

.lr.ph.i.2.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us
  %.sroa.012.20.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 5
  %i.ma = zext i32 %.sroa.012.20.vec.extract.i.us to i64
  %i.mb = zext nneg i32 %.sroa.0.16.vec.extract.i.us to i64
  %i.mc = shl i64 %i.ma, %i.mb
  %.sroa.012.16.vec.extract.i.us = extractelement <8 x i32> %i.jv, i64 4
  %i.md = zext i32 %.sroa.012.16.vec.extract.i.us to i64
  %i.me = or i64 %i.mc, %i.md
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.2.i.us
  %.sroa.62.9.us = phi i32 [ %.sroa.62.4.us, %.lr.ph.i.2.i.us ], [ %.sroa.62.10.us, %bb.y ]
  %.sroa.47.9.us = phi i32 [ %.sroa.47.4.us, %.lr.ph.i.2.i.us ], [ %.sroa.47.10.us, %bb.y ] ; 3 uses
  %.sroa.37.9.us = phi i32 [ %.sroa.37.4.us, %.lr.ph.i.2.i.us ], [ %.sroa.37.10.us, %bb.y ] ; 3 uses
  %.sroa.9154.10.us = phi i32 [ %.sroa.9154.5.us, %.lr.ph.i.2.i.us ], [ %.sroa.9154.11.us, %bb.y ] ; 4 uses
  %.032.i.2.i.us = phi i32 [ %i.ly, %.lr.ph.i.2.i.us ], [ %i.mr, %bb.y ] ; 2 uses
  %.02731.i.2.i.us = phi i64 [ %i.me, %.lr.ph.i.2.i.us ], [ %i.mq, %bb.y ] ; 2 uses
  %.not.i.2.i.us = icmp ult i32 %.sroa.9154.10.us, 17477
  br i1 %.not.i.2.i.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mf = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !57
  %i.mh = load ptr, ptr %i.mg, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.w

end_hunk_0
