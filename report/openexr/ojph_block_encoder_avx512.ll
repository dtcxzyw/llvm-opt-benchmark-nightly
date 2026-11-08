Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx512?download=true
inline.NumInlined: 23
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local38initialize_block_encoder_tables_avx512Ev:bb.a
  %or.cond3.i = icmp eq i32 %i.be, 0
  %or.cond145.i = or i1 %.not.i, %or.cond3.i
  br i1 %or.cond145.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %.preheader150.i
  %.not138.i = icmp eq i32 %i.bc, 0
  br i1 %.not138.i, label %.preheader.i, label %.preheader148.i

.preheader148.i:                                  ; preds = %bb.m, %bb.r
  %.0116164.i = phi i64 [ %i.bx, %bb.r ], [ 0, %bb.m ] ; 2 uses
  %.0117163.i = phi i32 [ %.2.i, %bb.r ], [ -1, %bb.m ] ; 6 uses
  %.0118162.i = phi ptr [ %.2120.i, %bb.r ], [ null, %bb.m ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [28 x i8], ptr @__const._ZN4ojph5localL15vlc_init_tablesEv.tbl1, i64 %.0116164.i ; 6 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.bh = icmp eq i32 %i.bg, %i.az
  br i1 %i.bh, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.preheader148.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.bk = icmp eq i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !42 ; 2 uses
  %i.bq = and i32 %i.bp, %i.bc
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9  ; 2 uses
  %.not139.i = icmp slt i32 %i.bw, %.0117163.i
  %spec.select146.i = select i1 %.not139.i, ptr %.0118162.i, ptr %i.bf
  %spec.select147.i = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 %.0117163.i)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %.preheader148.i
  %.2120.i = phi ptr [ %spec.select146.i, %bb.q ], [ %.0118162.i, %bb.p ], [ %.0118162.i, %bb.o ], [ %.0118162.i, %bb.n ], [ %.0118162.i, %.preheader148.i ] ; 2 uses
  %.2.i = phi i32 [ %spec.select147.i, %bb.q ], [ %.0117163.i, %bb.p ], [ %.0117163.i, %bb.o ], [ %.0117163.i, %bb.n ], [ %.0117163.i, %.preheader148.i ]
  %i.bx = add nuw nsw i64 %.0116164.i, 1          ; 2 uses
  %exitcond172.not.i = icmp eq i64 %i.bx, 358
  br i1 %exitcond172.not.i, label %.loopexit.i, label %.preheader148.i, !llvm.loop !35

.preheader.i:                                     ; preds = %bb.m, %bb.u
  %.0.i = phi i64 [ %i.ci, %bb.u ], [ 0, %bb.m ]  ; 3 uses
  %i.by = icmp samesign ult i64 %.0.i, 358
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [28 x i8], ptr @__const._ZN4ojph5localL15vlc_init_tablesEv.tbl1, i64 %.0.i ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !39
  %i.cb = icmp eq i32 %i.ca, %i.az
  br i1 %i.cb, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.preheader.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = icmp eq i32 %i.cd, %i.bb
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.preheader.i
  %i.ci = add nuw nsw i64 %.0.i, 1
  br label %.preheader.i, !llvm.loop !36

.loopexit.i:                                      ; preds = %bb.r, %bb.t
  %.4.i = phi ptr [ %i.bz, %bb.t ], [ %.2120.i, %bb.r ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.4.i, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !44
  %i.cl = shl i32 %i.ck, 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.4.i, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !45
  %i.co = shl i32 %i.cn, 4
  %i.cp = add nsw i32 %i.co, %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !42
  %i.cs = add nsw i32 %i.cp, %i.cr
  %i.ct = and i32 %i.cs, 65535
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.i, %.preheader150.i
  %.sink185.i = phi i32 [ %i.ct, %.loopexit.i ], [ 0, %.preheader150.i ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5localL8vlc_tbl1E, i64 %indvars.iv173.i
  store i32 %.sink185.i, ptr %i.cu, align 4, !tbaa !9
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1 ; 2 uses
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next174.i, 2048
  br i1 %exitcond176.not.i, label %_ZN4ojph5localL15vlc_init_tablesEv.exit, label %.preheader150.i, !llvm.loop !37

_ZN4ojph5localL15vlc_init_tablesEv.exit:          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  store i1 true, ptr @_ZN4ojph5localL18tables_initializedE, align 1
  store <4 x i32> <i32 0, i32 1, i32 2, i32 4>, ptr @_ZN4ojph5localL12ulvc_cwd_preE, align 16, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 16), align 16, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_ZN4ojph5localL12ulvc_cwd_sufE, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_preE, i64 20), i8 0, i64 112, i1 false), !tbaa !9
  store <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, align 64, !tbaa !9
  store <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, align 64, !tbaa !9
  store <16 x i32> <i32 1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 16), align 16, !tbaa !9
  store <8 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 80), align 16, !tbaa !9
  store <16 x i32> splat (i32 3), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 64), align 64, !tbaa !9
  store <4 x i32> <i32 23, i32 24, i32 25, i32 26>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 112), align 16, !tbaa !9
  store <16 x i32> splat (i32 5), ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 64), align 64, !tbaa !9
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_pre_lenE, i64 128), align 64, !tbaa !9
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL12ulvc_cwd_sufE, i64 128), align 16, !tbaa !9
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN4ojph5localL16ulvc_cwd_suf_lenE, i64 128), align 64, !tbaa !9
  store i1 true, ptr @_ZN4ojph5localL18tables_initializedE, align 1
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ojph5localL15vlc_init_tablesEv.exit, %bb.a
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local28ojph_encode_codeblock_avx512EPjjjjjjS1_PNS_21mem_elastic_allocatorERPNS_11coded_listsE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 14 uses
  %i.b = alloca [16 x i32], align 16              ; 14 uses
  %i.c = alloca [17477 x i8], align 16            ; 8 uses
  %i.d = alloca [3072 x i8], align 16             ; 4 uses
  %9 = alloca %"struct.ojph::local::mel_struct", align 8 ; 15 uses
  %10 = alloca %"struct.ojph::local::vlc_struct_avx512", align 8 ; 12 uses
  %i.e = alloca [33 x <8 x i64>], align 64        ; 6 uses
  %i.f = alloca [33 x <8 x i64>], align 64        ; 6 uses
  %i.g = alloca <8 x i64>, align 64               ; 7 uses
  %i.h = alloca <8 x i64>, align 64               ; 4 uses
  %i.i = alloca [16 x i32], align 16              ; 4 uses
  %i.j = alloca [16 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr %i.d, ptr %9, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 8 uses
  store <4 x i32> <i32 0, i32 192, i32 8, i32 0>, ptr %i.k, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 1, ptr %i.q, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 3071 ; 2 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 11 uses
  store i32 1, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 2880, ptr %i.t, align 4, !tbaa !53
  store i8 -1, ptr %i.r, align 1, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store i32 4, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  store i64 15, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store i8 1, ptr %i.w, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false), !tbaa !23
  %i.x = add i32 %3, 31                           ; 2 uses
  %i.y = and i32 %i.x, -32
  %i.z = sub i32 %i.y, %3
  %i.aa = sub i32 30, %1                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge233.thread, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.a
  %i.ab = lshr i32 %i.x, 5                        ; 3 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.ac ; 2 uses
  %.not241 = icmp eq i32 %i.ab, 0
  %i.af = zext i32 %5 to i64                      ; 2 uses
  br i1 %.not241, label %.lr.ph232.split.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph232
  %i.ag = add nsw i32 %i.ab, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %invariant.op = sub i32 32, %3
  br label %.lr.ph.us

.lr.ph232.split.preheader:                        ; preds = %.lr.ph232
  store <8 x i64> zeroinitializer, ptr %i.ae, align 64, !tbaa !23
  br label %._crit_edge233.thread

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.098230.us = phi i32 [ %i.od, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.099229.us = phi ptr [ @_ZN4ojph5localL16proc_vlc_encode2EPNS0_17vlc_struct_avx512EPjS3_j, %._crit_edge.us ], [ @_ZN4ojph5localL16proc_vlc_encode1EPNS0_17vlc_struct_avx512EPjS3_j, %.lr.ph.us.preheader ]
  %.0100228.us = phi ptr [ @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv8_xS4_S3_jS3_, %._crit_edge.us ], [ @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv8_xS4_S3_jS3_, %.lr.ph.us.preheader ]
  %.0101227.us = phi ptr [ @_ZN4ojph5localL8proc_cq2EjPDv8_xRS1_S1_, %._crit_edge.us ], [ @_ZN4ojph5localL8proc_cq1EjPDv8_xRS1_S1_, %.lr.ph.us.preheader ]
  %.0102226.us = phi ptr [ @_ZN4ojph5localL8vlc_tbl1E, %._crit_edge.us ], [ @_ZN4ojph5localL8vlc_tbl0E, %.lr.ph.us.preheader ]
  %i.ai = phi <16 x i32> [ %i.oc, %._crit_edge.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %i.aj = phi <16 x i32> [ %i.nv, %._crit_edge.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %.0203225.us = phi <8 x i64> [ %i.nx, %._crit_edge.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %.sroa.9165.0224.us = phi i32 [ %.sroa.9165.10.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.sroa.37.0223.us = phi i32 [ %.sroa.37.9.us, %._crit_edge.us ], [ 8, %.lr.ph.us.preheader ]
  %.sroa.47.0222.us = phi i32 [ %.sroa.47.9.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.sroa.62.0221.us = phi i32 [ %.sroa.62.9.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  store <8 x i64> %.0203225.us, ptr %i.ad, align 64, !tbaa !23
  %i.ak = lshr <16 x i32> %i.aj, splat (i32 3)
  %11 = bitcast <16 x i32> %i.ak to <8 x i64>
  %12 = and <8 x i64> %11, splat (i64 1)
  store <8 x i64> %12, ptr %i.ae, align 64, !tbaa !23
  %i.al = mul i32 %.098230.us, %5
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %i.ao = or disjoint i32 %.098230.us, 1
  %i.ap = icmp ult i32 %i.ao, %4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ] ; 6 uses
  %.097214.us = phi ptr [ %i.an, %.lr.ph.us ], [ %i.ns, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ] ; 4 uses
  %i.aq = phi <16 x i32> [ %i.ai, %.lr.ph.us ], [ %i.nt, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %i.ar = phi <16 x i32> [ zeroinitializer, %.lr.ph.us ], [ %i.nv, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %i.as = phi <16 x i32> [ zeroinitializer, %.lr.ph.us ], [ %i.nu, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.9165.1212.us = phi i32 [ %.sroa.9165.0224.us, %.lr.ph.us ], [ %.sroa.9165.10.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.37.1211.us = phi i32 [ %.sroa.37.0223.us, %.lr.ph.us ], [ %.sroa.37.9.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.47.1210.us = phi i32 [ %.sroa.47.0222.us, %.lr.ph.us ], [ %.sroa.47.9.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %.sroa.62.1209.us = phi i32 [ %.sroa.62.0221.us, %.lr.ph.us ], [ %.sroa.62.9.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv8_xS4_S4_PS3_.exit.us ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.at = shl nuw i32 %indvars.iv.tr, 5
  %.reass.reass = add i32 %i.at, %invariant.op
  %i.au = call i32 @llvm.smax.i32(i32 %.reass.reass, i32 0) ; 2 uses
  %i.av = lshr i32 -1, %i.au
  %i.aw = trunc i32 %i.av to i16
  %i.ax = lshr i32 65535, %i.au
  %i.ay = trunc nuw i32 %i.ax to i16
  %i.az = bitcast i16 %i.aw to <16 x i1>          ; 2 uses
  %i.ba = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %.097214.us, <16 x i1> %i.az, <16 x i32> zeroinitializer) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.097214.us, i64 64 ; 2 uses
  %i.bc = bitcast i16 %i.ay to <16 x i1>          ; 2 uses
  %i.bd = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr nonnull align 1 %i.bb, <16 x i1> %i.bc, <16 x i32> zeroinitializer) ; 2 uses
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.097214.us, i64 %i.af
  %i.bf = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr align 1 %i.be, <16 x i1> %i.az, <16 x i32> zeroinitializer)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.af
  %i.bh = call <16 x i32> @llvm.masked.load.v16i32.p0(ptr nonnull align 1 %i.bg, <16 x i1> %i.bc, <16 x i32> zeroinitializer)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = phi <16 x i32> [ %i.bh, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.bj = phi <16 x i32> [ %i.bf, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.bk = shl <16 x i32> %i.ba, splat (i32 1)
  %i.bl = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.bk, i32 %i.aa)
  %i.bm = and <16 x i32> %i.bl, splat (i32 -2)    ; 2 uses
  %i.bn = icmp ne <16 x i32> %i.bm, zeroinitializer ; 2 uses
  %i.bo = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.bm, <16 x i32> splat (i32 1)) ; 2 uses
  %i.bp = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.bo, i1 false)
  %i.bq = sub nuw nsw <16 x i32> splat (i32 32), %i.bp ; 2 uses
  %i.br = lshr <16 x i32> %i.ba, splat (i32 31)
  %i.bs = add nsw <16 x i32> %i.br, splat (i32 -1)
  %i.bt = add <16 x i32> %i.bs, %i.bo
  %i.bu = select <16 x i1> %i.bn, <16 x i32> %i.bt, <16 x i32> zeroinitializer ; 2 uses
  %i.bv = shl <16 x i32> %i.bj, splat (i32 1)
  %i.bw = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.bv, i32 %i.aa)
  %i.bx = and <16 x i32> %i.bw, splat (i32 -2)    ; 2 uses
  %i.by = icmp ne <16 x i32> %i.bx, zeroinitializer ; 2 uses
  %i.bz = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.bx, <16 x i32> splat (i32 1)) ; 2 uses
  %i.ca = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.bz, i1 false)
  %i.cb = sub nuw nsw <16 x i32> splat (i32 32), %i.ca ; 2 uses
  %i.cc = lshr <16 x i32> %i.bj, splat (i32 31)
  %i.cd = add nsw <16 x i32> %i.cc, splat (i32 -1)
  %i.ce = add <16 x i32> %i.cd, %i.bz
  %i.cf = select <16 x i1> %i.by, <16 x i32> %i.ce, <16 x i32> zeroinitializer ; 2 uses
  %i.cg = shl <16 x i32> %i.bd, splat (i32 1)
  %i.ch = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.cg, i32 %i.aa)
  %i.ci = and <16 x i32> %i.ch, splat (i32 -2)    ; 2 uses
  %i.cj = icmp ne <16 x i32> %i.ci, zeroinitializer ; 2 uses
  %i.ck = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.ci, <16 x i32> splat (i32 1)) ; 2 uses
  %i.cl = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.ck, i1 false)
  %i.cm = sub nuw nsw <16 x i32> splat (i32 32), %i.cl ; 2 uses
  %i.cn = lshr <16 x i32> %i.bd, splat (i32 31)
  %i.co = add nsw <16 x i32> %i.cn, splat (i32 -1)
  %i.cp = add <16 x i32> %i.co, %i.ck
  %i.cq = select <16 x i1> %i.cj, <16 x i32> %i.cp, <16 x i32> zeroinitializer ; 2 uses
  %i.cr = shl <16 x i32> %i.bi, splat (i32 1)
  %i.cs = call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %i.cr, i32 %i.aa)
  %i.ct = and <16 x i32> %i.cs, splat (i32 -2)    ; 2 uses
  %i.cu = icmp ne <16 x i32> %i.ct, zeroinitializer ; 2 uses
  %i.cv = call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.ct, <16 x i32> splat (i32 1)) ; 2 uses
  %i.cw = call range(i32 0, 33) <16 x i32> @llvm.ctlz.v16i32(<16 x i32> %i.cv, i1 false)
  %i.cx = sub nuw nsw <16 x i32> splat (i32 32), %i.cw ; 2 uses
  %i.cy = lshr <16 x i32> %i.bi, splat (i32 31)
  %i.cz = add nsw <16 x i32> %i.cy, splat (i32 -1)
  %i.da = add <16 x i32> %i.cz, %i.cv
  %i.db = select <16 x i1> %i.cu, <16 x i32> %i.da, <16 x i32> zeroinitializer ; 2 uses
  %i.dc = zext <16 x i1> %i.bn to <16 x i32>      ; 2 uses
  %i.dd = zext <16 x i1> %i.by to <16 x i32>      ; 2 uses
  %i.de = zext <16 x i1> %i.cj to <16 x i32>      ; 2 uses
  %i.df = zext <16 x i1> %i.cu to <16 x i32>      ; 2 uses
  %i.dg = shufflevector <16 x i32> %i.bq, <16 x i32> %i.cm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.dh = shufflevector <16 x i32> %i.bu, <16 x i32> %i.cq, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.di = shufflevector <16 x i32> %i.dc, <16 x i32> %i.de, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dj = shufflevector <16 x i32> %i.cb, <16 x i32> %i.cx, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 3 uses
  %i.dk = shufflevector <16 x i32> %i.cf, <16 x i32> %i.db, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.dl = shufflevector <16 x i32> %i.dd, <16 x i32> %i.df, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dm = shl nuw nsw <16 x i32> %i.dl, splat (i32 1)
  %i.dn = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dg, <16 x i32> %i.dj)
  %i.do = shufflevector <16 x i32> %i.bq, <16 x i32> %i.cm, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.dp = shufflevector <16 x i32> %i.bu, <16 x i32> %i.cq, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x i32> %i.dc, <16 x i32> %i.de, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.dr = shl nuw nsw <16 x i32> %i.dq, splat (i32 2)
  %i.ds = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dn, <16 x i32> %i.do) ; 2 uses
  %i.dt = shufflevector <16 x i32> %i.cb, <16 x i32> %i.cx, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 3 uses
  %i.du = shufflevector <16 x i32> %i.cf, <16 x i32> %i.db, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.dv = shufflevector <16 x i32> %i.dd, <16 x i32> %i.df, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.dw = shl nuw nsw <16 x i32> %i.dv, splat (i32 3)
  %i.dx = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ds, <16 x i32> %i.dt) ; 4 uses
  %i.dy = or disjoint <16 x i32> %i.dm, %i.di
  %i.dz = or disjoint <16 x i32> %i.dy, %i.dr
  %i.ea = or disjoint <16 x i32> %i.dz, %i.dw     ; 2 uses
  store <16 x i32> %i.ea, ptr %i.g, align 64, !tbaa !23
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.ec = load <16 x i32>, ptr %i.eb, align 64, !tbaa !23 ; 2 uses
  %i.ed = shufflevector <16 x i32> %i.ec, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ef = load <1 x i32>, ptr %i.ee, align 64, !tbaa !23
  %i.eg = shufflevector <1 x i32> %i.ef, <1 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.eh = shufflevector <16 x i32> %i.ed, <16 x i32> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 31>
  %i.ei = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ec, <16 x i32> %i.eh)
  %i.ej = add <16 x i32> %i.ei, splat (i32 -1)
  %i.ek = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ej, <16 x i32> splat (i32 1))
  %i.el = call range(i32 0, 5) <16 x i32> @llvm.ctpop.v16i32(<16 x i32> %i.ea)
  %.not.us.inv = icmp samesign ugt <16 x i32> %i.el, splat (i32 1)
  %i.em = select <16 x i1> %.not.us.inv, <16 x i32> %i.ek, <16 x i32> splat (i32 1) ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  %i.eo = call noundef <8 x i64> %.0101227.us(i32 noundef %i.en, ptr noundef nonnull %i.f, ptr noundef nonnull align 64 dereferenceable(64) %i.g, <8 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 34359738375, i64 42949672969, i64 51539607563, i64 60129542157, i64 15>), !callees !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.ep = bitcast <8 x i64> %i.eo to <16 x i32>
  %i.eq = shufflevector <16 x i32> %i.ep, <16 x i32> poison, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.er = shufflevector <16 x i32> %i.aq, <16 x i32> %i.eq, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  store <16 x i32> %i.er, ptr %i.h, align 64, !tbaa !23
  %i.es = shufflevector <16 x i32> %i.dt, <16 x i32> poison, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.et = shufflevector <16 x i32> %i.as, <16 x i32> %i.es, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eu = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dj, <16 x i32> %i.et)
  store <16 x i32> %i.eu, ptr %i.eb, align 64, !tbaa !23
  %i.ev = load <16 x i32>, ptr %i.g, align 64, !tbaa !23 ; 3 uses
  %i.ew = shufflevector <16 x i32> %i.ev, <16 x i32> poison, <16 x i32> <i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.ex = shufflevector <16 x i32> %i.ar, <16 x i32> %i.ew, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ey = lshr <16 x i32> %i.ex, splat (i32 3)
  %i.ez = lshr <16 x i32> %i.ev, splat (i32 1)
  %i.fa = or <16 x i32> %i.ey, %i.ez
  %13 = bitcast <16 x i32> %i.fa to <8 x i64>
  %14 = and <8 x i64> %13, splat (i64 4294967297)
  %15 = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv
  store <8 x i64> %14, ptr %15, align 64, !tbaa !23
  %i.fb = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.em, <16 x i32> %i.dx) ; 5 uses
  %i.fc = sub nsw <16 x i32> %i.fb, %i.em         ; 3 uses
  %i.fd = bitcast <16 x i32> %i.fc to <8 x i64>
  %i.fe = icmp sgt <16 x i32> %i.fc, zeroinitializer ; 2 uses
  %i.ff = icmp eq <16 x i32> %i.dg, %i.dx
  %narrow.i.us = select <16 x i1> %i.fe, <16 x i1> %i.ff, <16 x i1> zeroinitializer
  %i.fg = zext <16 x i1> %narrow.i.us to <16 x i32>
  %i.fh = icmp eq <16 x i32> %i.dj, %i.dx
  %i.fi = select <16 x i1> %i.fh, <16 x i32> splat (i32 2), <16 x i32> zeroinitializer
  %i.fj = icmp eq <16 x i32> %i.do, %i.dx
  %i.fk = select <16 x i1> %i.fj, <16 x i32> splat (i32 4), <16 x i32> zeroinitializer
  %.not205.us = icmp samesign ult <16 x i32> %i.dt, %i.ds
  %i.fl = select <16 x i1> %.not205.us, <16 x i32> zeroinitializer, <16 x i32> splat (i32 8)
  %i.fm = or disjoint <16 x i32> %i.fi, %i.fl
  %i.fn = or disjoint <16 x i32> %i.fm, %i.fk
  %i.fo = or disjoint <16 x i32> %i.fn, %i.fg
  %i.fp = select <16 x i1> %i.fe, <16 x i32> %i.fo, <16 x i32> zeroinitializer
  %i.fq = shl <16 x i32> %i.er, splat (i32 8)
  %i.fr = shl <16 x i32> %i.ev, splat (i32 4)
  %i.fs = add <16 x i32> %i.fr, %i.fq
  %i.ft = or disjoint <16 x i32> %i.fp, %i.fs
  %i.fu = call <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32> zeroinitializer, ptr nonnull readonly %.0102226.us, <16 x i32> %i.ft, <16 x i1> splat (i1 true), i32 4) ; 5 uses
  %i.fv = icmp eq i64 %indvars.iv, %i.ah
  %i.fw = select i1 %i.fv, i32 %i.z, i32 0        ; 2 uses
  call void %.0100228.us(ptr noundef nonnull %9, ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 64 dereferenceable(64) %i.g, <8 x i64> noundef %i.fd, i32 noundef %i.fw, <8 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 34359738375, i64 42949672969, i64 51539607563, i64 60129542157, i64 15>), !callees !55
  %.val113207.us = load <16 x i32>, ptr %i.g, align 64, !tbaa !23 ; 4 uses
  %i.fx = and <16 x i32> %i.fu, splat (i32 1)
  %i.fy = sub nuw nsw <16 x i32> %i.fb, %i.fx
  %i.fz = and <16 x i32> %.val113207.us, splat (i32 1)
  %.not.i116.us = icmp eq <16 x i32> %i.fz, zeroinitializer
  %i.ga = select <16 x i1> %.not.i116.us, <16 x i32> zeroinitializer, <16 x i32> %i.fy ; 2 uses
  %i.gb = lshr <16 x i32> %i.fu, splat (i32 1)
  %i.gc = and <16 x i32> %i.gb, splat (i32 1)
  %i.gd = sub nuw nsw <16 x i32> %i.fb, %i.gc
  %i.ge = and <16 x i32> %.val113207.us, splat (i32 2)
  %.not5.i.us = icmp eq <16 x i32> %i.ge, zeroinitializer
  %i.gf = select <16 x i1> %.not5.i.us, <16 x i32> zeroinitializer, <16 x i32> %i.gd ; 2 uses
  %i.gg = lshr <16 x i32> %i.fu, splat (i32 2)
  %i.gh = and <16 x i32> %i.gg, splat (i32 1)
  %i.gi = sub nuw nsw <16 x i32> %i.fb, %i.gh
  %i.gj = and <16 x i32> %.val113207.us, splat (i32 4)
  %.not6.i.us = icmp eq <16 x i32> %i.gj, zeroinitializer
  %i.gk = select <16 x i1> %.not6.i.us, <16 x i32> zeroinitializer, <16 x i32> %i.gi ; 2 uses
  %i.gl = lshr <16 x i32> %i.fu, splat (i32 3)
  %i.gm = and <16 x i32> %i.gl, splat (i32 1)
  %i.gn = sub nuw nsw <16 x i32> %i.fb, %i.gm
  %i.go = and <16 x i32> %.val113207.us, splat (i32 8)
  %.not7.i.us = icmp eq <16 x i32> %i.go, zeroinitializer
  %i.gp = select <16 x i1> %.not7.i.us, <16 x i32> zeroinitializer, <16 x i32> %i.gn ; 2 uses
  %i.gq = shufflevector <16 x i32> %i.ga, <16 x i32> %i.gf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gr = shufflevector <16 x i32> %i.ga, <16 x i32> %i.gf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gs = shufflevector <16 x i32> %i.gk, <16 x i32> %i.gp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gt = shufflevector <16 x i32> %i.gk, <16 x i32> %i.gp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gu = shufflevector <16 x i32> %i.gq, <16 x i32> %i.gs, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.gv = shufflevector <16 x i32> %i.gr, <16 x i32> %i.gt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.gw = shufflevector <16 x i32> %i.gu, <16 x i32> %i.gv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.gx = shufflevector <16 x i32> %i.dh, <16 x i32> %i.dk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.gy = shufflevector <16 x i32> %i.dh, <16 x i32> %i.dk, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gz = shufflevector <16 x i32> %i.dp, <16 x i32> %i.du, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ha = shufflevector <16 x i32> %i.dp, <16 x i32> %i.du, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hb = shufflevector <16 x i32> %i.gx, <16 x i32> %i.gz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.hc = shufflevector <16 x i32> %i.gy, <16 x i32> %i.ha, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.hd = shufflevector <16 x i32> %i.hb, <16 x i32> %i.hc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store <16 x i32> %i.gw, ptr %i.b, align 16, !tbaa !23
  %i.he = call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> splat (i32 1), <16 x i32> %i.gw)
  %i.hf = add <16 x i32> %i.he, splat (i32 -1)
  %i.hg = and <16 x i32> %i.hf, %i.hd
  store <16 x i32> %i.hg, ptr %i.a, align 16, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, %bb.d
  %.sroa.62.2.us = phi i32 [ %.sroa.62.1209.us, %bb.d ], [ %.sroa.62.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %.sroa.47.2.us = phi i32 [ %.sroa.47.1210.us, %bb.d ], [ %.sroa.47.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %.sroa.37.2.us = phi i32 [ %.sroa.37.1211.us, %bb.d ], [ %.sroa.37.3.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %.sroa.9165.3.us = phi i32 [ %.sroa.9165.1212.us, %bb.d ], [ %.sroa.9165.4.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us ] ; 2 uses
  %i.hh = shl nuw nsw i64 %indvars.iv.i.us, 1     ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !9  ; 2 uses
  %i.hk = or disjoint i64 %i.hh, 1                ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !9
  %i.hn = add nsw i32 %i.hm, %i.hj                ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.e
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hk
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !9
  %i.hr = zext i32 %i.hq to i64
  %i.hs = zext nneg i32 %i.hj to i64
  %i.ht = shl i64 %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hh
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !9
  %i.hw = zext i32 %i.hv to i64
  %i.hx = or i64 %i.ht, %i.hw
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.us
  %.sroa.62.16.us = phi i32 [ %.sroa.62.2.us, %.lr.ph.i.i.us ], [ %.sroa.62.17.us, %bb.j ]
  %.sroa.47.16.us = phi i32 [ %.sroa.47.2.us, %.lr.ph.i.i.us ], [ %.sroa.47.17.us, %bb.j ] ; 3 uses
  %.sroa.37.16.us = phi i32 [ %.sroa.37.2.us, %.lr.ph.i.i.us ], [ %.sroa.37.17.us, %bb.j ] ; 3 uses
  %.sroa.9165.17.us = phi i32 [ %.sroa.9165.3.us, %.lr.ph.i.i.us ], [ %.sroa.9165.18.us, %bb.j ] ; 4 uses
  %.032.i.i.us = phi i32 [ %i.hn, %.lr.ph.i.i.us ], [ %i.ik, %bb.j ] ; 2 uses
  %.02731.i.i.us = phi i64 [ %i.hx, %.lr.ph.i.i.us ], [ %i.ij, %bb.j ] ; 2 uses
  %.not.i.i.us = icmp ult i32 %.sroa.9165.17.us, 17477
  br i1 %.not.i.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hy = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !57
  %i.ia = load ptr, ptr %i.hz, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 448, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ib = sub nuw nsw i32 %.sroa.37.16.us, %.sroa.47.16.us
  %..0.i.i.us = call i32 @llvm.smin.i32(i32 %i.ib, i32 %.032.i.i.us) ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %..0.i.i.us
  %i.ic = xor i32 %notmask.i.i.us, -1
  %i.id = trunc i64 %.02731.i.i.us to i32
  %i.ie = and i32 %i.ic, %i.id
  %i.if = shl nuw nsw i32 %i.ie, %.sroa.47.16.us
  %i.ig = or i32 %i.if, %.sroa.62.16.us           ; 3 uses
  %i.ih = add nuw nsw i32 %..0.i.i.us, %.sroa.47.16.us ; 2 uses
  %i.ii = zext nneg i32 %..0.i.i.us to i64
  %i.ij = lshr i64 %.02731.i.i.us, %i.ii
  %i.ik = sub nsw i32 %.032.i.i.us, %..0.i.i.us   ; 2 uses
  %.not30.i.i.us = icmp slt i32 %i.ih, %.sroa.37.16.us
  br i1 %.not30.i.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.il = trunc i32 %i.ig to i8
  %i.im = add nuw i32 %.sroa.9165.17.us, 1
  %i.in = zext i32 %.sroa.9165.17.us to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.in
  store i8 %i.il, ptr %i.io, align 1, !tbaa !23
  %i.ip = icmp eq i32 %i.ig, 255
  %i.iq = select i1 %i.ip, i32 7, i32 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.62.17.us = phi i32 [ %i.ig, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %.sroa.47.17.us = phi i32 [ %i.ih, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %.sroa.37.17.us = phi i32 [ %.sroa.37.16.us, %bb.h ], [ %i.iq, %bb.i ] ; 2 uses
  %.sroa.9165.18.us = phi i32 [ %.sroa.9165.17.us, %bb.h ], [ %i.im, %bb.i ] ; 2 uses
  %i.ir = icmp sgt i32 %i.ik, 0
  br i1 %i.ir, label %bb.f, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us: ; preds = %bb.j, %bb.e
  %.sroa.62.3.us = phi i32 [ %.sroa.62.2.us, %bb.e ], [ %.sroa.62.17.us, %bb.j ] ; 2 uses
  %.sroa.47.3.us = phi i32 [ %.sroa.47.2.us, %bb.e ], [ %.sroa.47.17.us, %bb.j ] ; 2 uses
  %.sroa.37.3.us = phi i32 [ %.sroa.37.2.us, %bb.e ], [ %.sroa.37.17.us, %bb.j ] ; 2 uses
  %.sroa.9165.4.us = phi i32 [ %.sroa.9165.3.us, %bb.e ], [ %.sroa.9165.18.us, %bb.j ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 8
  br i1 %exitcond.not.i.us, label %bb.k, label %bb.e, !llvm.loop !48

bb.k:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %i.is = shufflevector <16 x i32> %i.gq, <16 x i32> %i.gs, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.it = shufflevector <16 x i32> %i.gr, <16 x i32> %i.gt, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.iu = shufflevector <16 x i32> %i.is, <16 x i32> %i.it, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.iv = shufflevector <16 x i32> %i.gx, <16 x i32> %i.gz, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.iw = shufflevector <16 x i32> %i.gy, <16 x i32> %i.ha, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ix = shufflevector <16 x i32> %i.iv, <16 x i32> %i.iw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  store <16 x i32> %i.iu, ptr %i.b, align 16, !tbaa !23
  %i.iy = call <16 x i32> @llvm.x86.avx512.psllv.d.512(<16 x i32> splat (i32 1), <16 x i32> %i.iu)
  %i.iz = add <16 x i32> %i.iy, splat (i32 -1)
  %i.ja = and <16 x i32> %i.iz, %i.ix
  store <16 x i32> %i.ja, ptr %i.a, align 16, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us, %bb.k
  %.sroa.62.4.us = phi i32 [ %.sroa.62.3.us, %bb.k ], [ %.sroa.62.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %.sroa.47.4.us = phi i32 [ %.sroa.47.3.us, %bb.k ], [ %.sroa.47.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %.sroa.37.4.us = phi i32 [ %.sroa.37.3.us, %bb.k ], [ %.sroa.37.5.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %.sroa.9165.5.us = phi i32 [ %.sroa.9165.4.us, %bb.k ], [ %.sroa.9165.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %indvars.iv.1.i.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.1.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us ] ; 2 uses
  %i.jb = shl nuw nsw i64 %indvars.iv.1.i.us, 1   ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !9  ; 2 uses
  %i.je = or disjoint i64 %i.jb, 1                ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !9
  %i.jh = add nsw i32 %i.jg, %i.jd                ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph.i.1.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us

.lr.ph.i.1.i.us:                                  ; preds = %bb.l
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.je
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !9
  %i.jl = zext i32 %i.jk to i64
  %i.jm = zext nneg i32 %i.jd to i64
  %i.jn = shl i64 %i.jl, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jb
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !9
  %i.jq = zext i32 %i.jp to i64
  %i.jr = or i64 %i.jn, %i.jq
end_hunk_0
