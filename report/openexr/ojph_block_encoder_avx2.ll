Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_encoder_avx2?download=true
inline.NumInlined: 31
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local36initialize_block_encoder_tables_avx2Ev:bb.a
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
  %i.f = alloca [4 x <4 x i64>], align 32         ; 10 uses
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %i.d, i8 0, i64 range(i64 0, 2049) %i.ah, i1 false), !tbaa !23
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
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
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
  %.098231.us = phi i32 [ %i.oi, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ] ; 3 uses
  %.099230.us = phi ptr [ @_ZN4ojph5localL16proc_vlc_encode2EPNS0_15vlc_struct_avx2EPjS3_j, %._crit_edge214.us ], [ @_ZN4ojph5localL16proc_vlc_encode1EPNS0_15vlc_struct_avx2EPjS3_j, %.lr.ph213.us.preheader ]
  %.0100229.us = phi ptr [ @_ZN4ojph5localL16proc_mel_encode2EPNS0_10mel_structERDv4_xS4_S3_jS3_, %._crit_edge214.us ], [ @_ZN4ojph5localL16proc_mel_encode1EPNS0_10mel_structERDv4_xS4_S3_jS3_, %.lr.ph213.us.preheader ]
  %.0101228.us = phi ptr [ @_ZN4ojph5localL8proc_cq2EjPDv4_xRS1_S1_, %._crit_edge214.us ], [ @_ZN4ojph5localL8proc_cq1EjPDv4_xRS1_S1_, %.lr.ph213.us.preheader ]
  %.0102227.us = phi ptr [ @_ZN4ojph5localL8vlc_tbl1E, %._crit_edge214.us ], [ @_ZN4ojph5localL8vlc_tbl0E, %.lr.ph213.us.preheader ]
  %.0103226.us = phi i32 [ %i.oh, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  %i.az = phi <8 x i32> [ %i.nz, %._crit_edge214.us ], [ zeroinitializer, %.lr.ph213.us.preheader ]
  %.0192224.us = phi <4 x i64> [ %i.ob, %._crit_edge214.us ], [ zeroinitializer, %.lr.ph213.us.preheader ]
  %.sroa.9154.0223.us = phi i32 [ %.sroa.9154.7.us, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  %.sroa.37.0222.us = phi i32 [ %.sroa.37.6.us, %._crit_edge214.us ], [ 8, %.lr.ph213.us.preheader ]
  %.sroa.47.0221.us = phi i32 [ %.sroa.47.6.us, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  %.sroa.62.0220.us = phi i32 [ %.sroa.62.6.us, %._crit_edge214.us ], [ 0, %.lr.ph213.us.preheader ]
  store <4 x i64> %.0192224.us, ptr %i.aj, align 32, !tbaa !23
  %i.ba = lshr <8 x i32> %i.az, splat (i32 3)
  %11 = bitcast <8 x i32> %i.ba to <4 x i64>
  %12 = and <4 x i64> %11, splat (i64 1)
  store <4 x i64> %12, ptr %i.ak, align 32, !tbaa !23
  %i.bb = mul i32 %.098231.us, %5
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  %i.be = or disjoint i32 %.098231.us, 1
  %i.bf = icmp ult i32 %i.be, %4                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph213.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph213.us ], [ %indvars.iv.next, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ] ; 5 uses
  %.097210.us = phi ptr [ %i.bd, %.lr.ph213.us ], [ %.1.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ] ; 7 uses
  %.1104209.us = phi i32 [ %.0103226.us, %.lr.ph213.us ], [ %i.nx, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bg = phi <8 x i32> [ zeroinitializer, %.lr.ph213.us ], [ %i.nz, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bh = phi <8 x i32> [ zeroinitializer, %.lr.ph213.us ], [ %i.ny, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.9154.1206.us = phi i32 [ %.sroa.9154.0223.us, %.lr.ph213.us ], [ %.sroa.9154.7.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.37.1205.us = phi i32 [ %.sroa.37.0222.us, %.lr.ph213.us ], [ %.sroa.37.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.47.1204.us = phi i32 [ %.sroa.47.0221.us, %.lr.ph213.us ], [ %.sroa.47.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %.sroa.62.1203.us = phi i32 [ %.sroa.62.0220.us, %.lr.ph213.us ], [ %.sroa.62.6.us, %_ZN4ojph5localL14proc_ms_encodeEPNS0_9ms_structERDv4_xS4_S4_PS3_.exit.us ]
  %i.bi = icmp ne i64 %indvars.iv, %i.aw          ; 2 uses
  %brmerge = or i1 %i.bi, %.not266
  br i1 %brmerge, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 4 %.097210.us, i64 %i.an, i1 false)
  %.0..0..0.131194.us = load <8 x i32>, ptr %i.g, align 16, !tbaa !23
  %.32..32..32.133196.us = load <8 x i32>, ptr %.32..32..32..sroa_idx, align 16, !tbaa !23
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.097210.us, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr align 4 %i.bj, i64 %i.an, i1 false)
  %.0..0..0.195.us = load <8 x i32>, ptr %i.g, align 16, !tbaa !23
  %.32..32..32.197.us = load <8 x i32>, ptr %.32..32..32..sroa_idx281, align 16, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bk = phi <8 x i32> [ %.32..32..32.197.us, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.bl = phi <8 x i32> [ %.0..0..0.195.us, %bb.d ], [ zeroinitializer, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.bm = load <8 x i32>, ptr %.097210.us, align 1, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %.097210.us, i64 32 ; 2 uses
  %i.bo = load <8 x i32>, ptr %i.bn, align 1, !tbaa !23
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.097210.us, i64 %i.ao
  %i.bq = load <8 x i32>, ptr %i.bp, align 1, !tbaa !23
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ao
  %i.bs = load <8 x i32>, ptr %i.br, align 1, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = phi <8 x i32> [ %i.bs, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.bu = phi <8 x i32> [ %i.bq, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.097210.us, i64 64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.bw = phi <8 x i32> [ %i.bt, %bb.h ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bx = phi <8 x i32> [ %i.bo, %bb.h ], [ %.32..32..32.133196.us, %bb.e ] ; 2 uses
  %i.by = phi <8 x i32> [ %i.bu, %bb.h ], [ %i.bl, %bb.e ] ; 2 uses
  %i.bz = phi <8 x i32> [ %i.bm, %bb.h ], [ %.0..0..0.131194.us, %bb.e ] ; 2 uses
  %.1.us = phi ptr [ %i.bv, %bb.h ], [ %.097210.us, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.ca = shl <8 x i32> %i.bz, splat (i32 1)
  %i.cb = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.ca, i32 %i.ab)
  %i.cc = and <8 x i32> %i.cb, splat (i32 -2)     ; 3 uses
  %.not.i118.us = icmp ne <8 x i32> %i.cc, zeroinitializer ; 3 uses
  %i.cd = add <8 x i32> %i.cc, splat (i32 -1)     ; 2 uses
  %i.ce = lshr <8 x i32> %i.cd, splat (i32 8)
  %i.cf = xor <8 x i32> %i.ce, splat (i32 -1)
  %i.cg = and <8 x i32> %i.cd, %i.cf
  %i.ch = sitofp <8 x i32> %i.cg to <8 x float>
  %i.ci = bitcast <8 x float> %i.ch to <8 x i32>
  %i.cj = lshr <8 x i32> %i.ci, splat (i32 23)
  %i.ck = bitcast <8 x i32> %i.cj to <16 x i16>
  %i.cl = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.ck)
  %i.cm = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.cl, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.cn = bitcast <16 x i16> %i.cm to <8 x i32>
  %i.co = sub nsw <8 x i32> splat (i32 32), %i.cn
  %i.cp = add <8 x i32> %i.cc, splat (i32 -2)
  %i.cq = lshr <8 x i32> %i.bz, splat (i32 31)
  %i.cr = or disjoint <8 x i32> %i.cp, %i.cq
  %i.cs = select <8 x i1> %.not.i118.us, <8 x i32> %i.co, <8 x i32> zeroinitializer ; 2 uses
  %i.ct = select <8 x i1> %.not.i118.us, <8 x i32> %i.cr, <8 x i32> zeroinitializer ; 2 uses
  %i.cu = shl <8 x i32> %i.by, splat (i32 1)
  %i.cv = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.cu, i32 %i.ab)
  %i.cw = and <8 x i32> %i.cv, splat (i32 -2)     ; 3 uses
  %.not.1.i.us = icmp ne <8 x i32> %i.cw, zeroinitializer ; 3 uses
  %i.cx = add <8 x i32> %i.cw, splat (i32 -1)     ; 2 uses
  %i.cy = lshr <8 x i32> %i.cx, splat (i32 8)
  %i.cz = xor <8 x i32> %i.cy, splat (i32 -1)
  %i.da = and <8 x i32> %i.cx, %i.cz
  %i.db = sitofp <8 x i32> %i.da to <8 x float>
  %i.dc = bitcast <8 x float> %i.db to <8 x i32>
  %i.dd = lshr <8 x i32> %i.dc, splat (i32 23)
  %i.de = bitcast <8 x i32> %i.dd to <16 x i16>
  %i.df = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.de)
  %i.dg = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.df, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.dh = bitcast <16 x i16> %i.dg to <8 x i32>
  %i.di = sub nsw <8 x i32> splat (i32 32), %i.dh
  %i.dj = add <8 x i32> %i.cw, splat (i32 -2)
  %i.dk = lshr <8 x i32> %i.by, splat (i32 31)
  %i.dl = or disjoint <8 x i32> %i.dj, %i.dk
  %i.dm = select <8 x i1> %.not.1.i.us, <8 x i32> %i.di, <8 x i32> zeroinitializer ; 2 uses
  %i.dn = select <8 x i1> %.not.1.i.us, <8 x i32> %i.dl, <8 x i32> zeroinitializer ; 2 uses
  %i.do = shl <8 x i32> %i.bx, splat (i32 1)
  %i.dp = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.do, i32 %i.ab)
  %i.dq = and <8 x i32> %i.dp, splat (i32 -2)     ; 3 uses
  %.not.2.i.us = icmp ne <8 x i32> %i.dq, zeroinitializer ; 3 uses
  %i.dr = add <8 x i32> %i.dq, splat (i32 -1)     ; 2 uses
  %i.ds = lshr <8 x i32> %i.dr, splat (i32 8)
  %i.dt = xor <8 x i32> %i.ds, splat (i32 -1)
  %i.du = and <8 x i32> %i.dr, %i.dt
  %i.dv = sitofp <8 x i32> %i.du to <8 x float>
  %i.dw = bitcast <8 x float> %i.dv to <8 x i32>
  %i.dx = lshr <8 x i32> %i.dw, splat (i32 23)
  %i.dy = bitcast <8 x i32> %i.dx to <16 x i16>
  %i.dz = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.dy)
  %i.ea = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.dz, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.eb = bitcast <16 x i16> %i.ea to <8 x i32>
  %i.ec = sub nsw <8 x i32> splat (i32 32), %i.eb
  %i.ed = add <8 x i32> %i.dq, splat (i32 -2)
  %i.ee = lshr <8 x i32> %i.bx, splat (i32 31)
  %i.ef = or disjoint <8 x i32> %i.ed, %i.ee
  %i.eg = select <8 x i1> %.not.2.i.us, <8 x i32> %i.ec, <8 x i32> zeroinitializer ; 2 uses
  %i.eh = select <8 x i1> %.not.2.i.us, <8 x i32> %i.ef, <8 x i32> zeroinitializer ; 2 uses
  %i.ei = shl <8 x i32> %i.bw, splat (i32 1)
  %i.ej = call <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32> %i.ei, i32 %i.ab)
  %i.ek = and <8 x i32> %i.ej, splat (i32 -2)     ; 3 uses
  %.not.3.i.us = icmp ne <8 x i32> %i.ek, zeroinitializer ; 3 uses
  %i.el = add <8 x i32> %i.ek, splat (i32 -1)     ; 2 uses
  %i.em = lshr <8 x i32> %i.el, splat (i32 8)
  %i.en = xor <8 x i32> %i.em, splat (i32 -1)
  %i.eo = and <8 x i32> %i.el, %i.en
  %i.ep = sitofp <8 x i32> %i.eo to <8 x float>
  %i.eq = bitcast <8 x float> %i.ep to <8 x i32>
  %i.er = lshr <8 x i32> %i.eq, splat (i32 23)
  %i.es = bitcast <8 x i32> %i.er to <16 x i16>
  %i.et = call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.es)
  %i.eu = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.et, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.ev = bitcast <16 x i16> %i.eu to <8 x i32>
  %i.ew = sub nsw <8 x i32> splat (i32 32), %i.ev
  %i.ex = add <8 x i32> %i.ek, splat (i32 -2)
  %i.ey = lshr <8 x i32> %i.bw, splat (i32 31)
  %i.ez = or disjoint <8 x i32> %i.ex, %i.ey
  %i.fa = select <8 x i1> %.not.3.i.us, <8 x i32> %i.ew, <8 x i32> zeroinitializer ; 2 uses
  %i.fb = select <8 x i1> %.not.3.i.us, <8 x i32> %i.ez, <8 x i32> zeroinitializer ; 2 uses
  %i.fc = shufflevector <8 x i32> %i.cs, <8 x i32> %i.eg, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.fd = shufflevector <8 x i32> %i.cs, <8 x i32> %i.eg, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.fe = shufflevector <8 x i32> %i.ct, <8 x i32> %i.eh, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  store <8 x i32> %i.fe, ptr %i.f, align 32, !tbaa !23
  %i.ff = shufflevector <8 x i32> %i.ct, <8 x i32> %i.eh, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i32> %i.ff, ptr %i.ap, align 32, !tbaa !23
  %i.fg = shufflevector <8 x i1> %.not.i118.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fh = zext <8 x i1> %i.fg to <8 x i32>        ; 2 uses
  %i.fi = shufflevector <8 x i1> %.not.2.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fj = zext <8 x i1> %i.fi to <8 x i32>        ; 2 uses
  %i.fk = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fl = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fm = shufflevector <8 x i32> %i.dm, <8 x i32> %i.fa, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.fn = shufflevector <8 x i32> %i.dm, <8 x i32> %i.fa, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.fo = shufflevector <8 x i32> %i.dn, <8 x i32> %i.fb, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  store <8 x i32> %i.fo, ptr %i.aq, align 32, !tbaa !23
  %i.fp = shufflevector <8 x i32> %i.dn, <8 x i32> %i.fb, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i32> %i.fp, ptr %i.ar, align 32, !tbaa !23
  %i.fq = shufflevector <8 x i1> %.not.1.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.fr = zext <8 x i1> %i.fq to <8 x i32>        ; 2 uses
  %i.fs = shufflevector <8 x i1> %.not.3.i.us, <8 x i1> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ft = zext <8 x i1> %i.fs to <8 x i32>        ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fv = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fc, <8 x i32> %i.fm)
  %i.fx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fw, <8 x i32> %i.fd) ; 2 uses
  %i.fy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fx, <8 x i32> %i.fn) ; 4 uses
  %i.fz = shl nuw nsw <8 x i32> %i.fu, splat (i32 1)
  %i.ga = shl nuw nsw <8 x i32> %i.fl, splat (i32 2)
  %i.gb = shl nuw nsw <8 x i32> %i.fv, splat (i32 3)
  %i.gc = or disjoint <8 x i32> %i.fz, %i.ga
  %.inner277.a = or disjoint <8 x i32> %i.fk, %i.gb
  %.inner278 = or disjoint <8 x i32> %.inner277.a, %i.gc ; 2 uses
  store <8 x i32> %.inner278, ptr %i.h, align 32, !tbaa !23
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ge = load <8 x i32>, ptr %i.gd, align 32, !tbaa !23 ; 2 uses
  %i.gf = shufflevector <8 x i32> %i.ge, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.gh = load <1 x i64>, ptr %i.gg, align 32, !tbaa !23
  %i.gi = shufflevector <1 x i64> %i.gh, <1 x i64> poison, <2 x i32> <i32 0, i32 poison>
  %i.gj = bitcast <2 x i64> %i.gi to <4 x i32>
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %i.gm = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gl, <8 x i32> %i.ge)
  %i.gn = add <8 x i32> %i.gm, splat (i32 -1)
  %i.go = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> splat (i32 1))
  %i.gp = call range(i32 0, 5) <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %.inner278)
  %.inv = icmp samesign ugt <8 x i32> %i.gp, splat (i32 1)
  %i.gq = select <8 x i1> %.inv, <8 x i32> %i.go, <8 x i32> splat (i32 1) ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gs = call noundef <4 x i64> %.0101228.us(i32 noundef %i.gr, ptr noundef nonnull %i.e, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.gt = bitcast <4 x i64> %i.gs to <8 x i32>    ; 2 uses
  %i.gu = shufflevector <8 x i32> %i.gt, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gv = insertelement <8 x i32> %i.gu, i32 %.1104209.us, i64 0 ; 2 uses
  store <8 x i32> %i.gv, ptr %i.i, align 32, !tbaa !23
  %i.gw = shufflevector <8 x i32> %i.fn, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.gx = shufflevector <8 x i32> %i.bh, <8 x i32> %i.gw, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fm, <8 x i32> %i.gx)
  store <8 x i32> %i.gy, ptr %i.gd, align 32, !tbaa !23
  %i.gz = load <8 x i32>, ptr %i.h, align 32, !tbaa !23 ; 4 uses
  %i.ha = shufflevector <8 x i32> %i.gz, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.hb = shufflevector <8 x i32> %i.bg, <8 x i32> %i.ha, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = lshr <8 x i32> %i.hb, splat (i32 3)
  %i.hd = lshr <8 x i32> %i.gz, splat (i32 1)
  %i.he = or <8 x i32> %i.hc, %i.hd
  %13 = bitcast <8 x i32> %i.he to <4 x i64>
  %14 = and <4 x i64> %13, splat (i64 4294967297)
  %15 = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  store <4 x i64> %14, ptr %15, align 32, !tbaa !23
  %i.hf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gq, <8 x i32> %i.fy) ; 5 uses
  %i.hg = sub nsw <8 x i32> %i.hf, %i.gq          ; 3 uses
  %i.hh = bitcast <8 x i32> %i.hg to <4 x i64>
  %i.hi = icmp sgt <8 x i32> %i.hg, zeroinitializer
  %i.hj = icmp eq <8 x i32> %i.fy, %i.fc
  %i.hk = zext <8 x i1> %i.hj to <8 x i32>
  %i.hl = icmp eq <8 x i32> %i.fy, %i.fm
  %i.hm = select <8 x i1> %i.hl, <8 x i32> splat (i32 2), <8 x i32> zeroinitializer
  %i.hn = icmp eq <8 x i32> %i.fy, %i.fd
  %i.ho = select <8 x i1> %i.hn, <8 x i32> splat (i32 4), <8 x i32> zeroinitializer
  %.not198.us = icmp sgt <8 x i32> %i.fx, %i.fn
  %i.hp = select <8 x i1> %.not198.us, <8 x i32> zeroinitializer, <8 x i32> splat (i32 8)
  %i.hq = or disjoint <8 x i32> %i.hp, %i.hk
  %i.hr = or disjoint <8 x i32> %i.hq, %i.hm
  %i.hs = or disjoint <8 x i32> %i.hr, %i.ho
  %i.ht = select <8 x i1> %i.hi, <8 x i32> %i.hs, <8 x i32> zeroinitializer
  %i.hu = shl <8 x i32> %i.gv, splat (i32 8)
  %i.hv = shl <8 x i32> %i.gz, splat (i32 4)
  %i.hw = add <8 x i32> %i.hv, %i.hu
  %i.hx = or disjoint <8 x i32> %i.ht, %i.hw
  %i.hy = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull readonly %.0102227.us, <8 x i32> %i.hx, <8 x i32> splat (i32 -1), i8 4) ; 5 uses
  %i.hz = select i1 %i.bi, i32 0, i32 %i.n        ; 2 uses
  call void %.0100229.us(ptr noundef nonnull %9, ptr noundef nonnull align 32 dereferenceable(32) %i.i, ptr noundef nonnull align 32 dereferenceable(32) %i.h, <4 x i64> noundef %i.hh, i32 noundef %i.hz, <4 x i64> noundef <i64 8589934593, i64 17179869187, i64 25769803781, i64 7>), !callees !55
  %.val115201.us = load <8 x i32>, ptr %i.h, align 32, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ia = and <8 x i32> %i.hy, splat (i32 1)
  %i.ib = sub nuw nsw <8 x i32> %i.hf, %i.ia
  %i.ic = and <8 x i32> %.val115201.us, splat (i32 1)
  %i.id = icmp eq <8 x i32> %i.ic, zeroinitializer
  %i.ie = select <8 x i1> %i.id, <8 x i32> zeroinitializer, <8 x i32> %i.ib ; 2 uses
  %i.if = lshr <8 x i32> %i.hy, splat (i32 1)
  %i.ig = and <8 x i32> %i.if, splat (i32 1)
  %i.ih = sub nuw nsw <8 x i32> %i.hf, %i.ig
  %i.ii = and <8 x i32> %.val115201.us, splat (i32 2)
  %.not.i119.us = icmp eq <8 x i32> %i.ii, zeroinitializer
  %i.ij = select <8 x i1> %.not.i119.us, <8 x i32> zeroinitializer, <8 x i32> %i.ih ; 2 uses
  %i.ik = lshr <8 x i32> %i.hy, splat (i32 2)
  %i.il = and <8 x i32> %i.ik, splat (i32 1)
  %i.im = sub nuw nsw <8 x i32> %i.hf, %i.il
  %i.in = and <8 x i32> %.val115201.us, splat (i32 4)
  %.not5.i.us = icmp eq <8 x i32> %i.in, zeroinitializer
  %i.io = select <8 x i1> %.not5.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.im ; 2 uses
  %i.ip = lshr <8 x i32> %i.hy, splat (i32 3)
  %i.iq = and <8 x i32> %i.ip, splat (i32 1)
  %i.ir = sub nuw nsw <8 x i32> %i.hf, %i.iq
  %i.is = and <8 x i32> %.val115201.us, splat (i32 8)
  %.not6.i.us = icmp eq <8 x i32> %i.is, zeroinitializer
  %i.it = select <8 x i1> %.not6.i.us, <8 x i32> zeroinitializer, <8 x i32> %i.ir ; 2 uses
  %i.iu = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.iv = shufflevector <8 x i32> %i.io, <8 x i32> %i.it, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.iw = shufflevector <8 x i32> %i.ie, <8 x i32> %i.ij, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ix = shufflevector <8 x i32> %i.io, <8 x i32> %i.it, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.iy = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.iz = shufflevector <8 x i32> %i.iu, <8 x i32> %i.iv, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.iz, ptr %i.at, align 32, !tbaa !23
  store <8 x i32> %i.iy, ptr %i.a, align 32, !tbaa !23
  %i.ja = shufflevector <8 x i32> %i.iw, <8 x i32> %i.ix, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jb = shufflevector <8 x i32> %i.iw, <8 x i32> %i.ix, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jb, ptr %i.au, align 32, !tbaa !23
  store <8 x i32> %i.ja, ptr %i.as, align 32, !tbaa !23
  %i.jc = load <16 x i32>, ptr %i.f, align 32, !tbaa !23 ; 2 uses
  %i.jd = shufflevector <16 x i32> %i.jc, <16 x i32> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.je = load <16 x i32>, ptr %i.ap, align 32, !tbaa !23 ; 2 uses
  %i.jf = shufflevector <16 x i32> %i.je, <16 x i32> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jg = shufflevector <16 x i32> %i.jc, <16 x i32> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jh = shufflevector <16 x i32> %i.je, <16 x i32> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ji = shufflevector <8 x i32> %i.jd, <8 x i32> %i.jf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jj = shufflevector <8 x i32> %i.jd, <8 x i32> %i.jf, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jj, ptr %i.ap, align 32, !tbaa !23
  store <8 x i32> %i.ji, ptr %i.f, align 32, !tbaa !23
  %i.jk = shufflevector <8 x i32> %i.jg, <8 x i32> %i.jh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.jl = shufflevector <8 x i32> %i.jg, <8 x i32> %i.jh, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.jl, ptr %i.ar, align 32, !tbaa !23
  store <8 x i32> %i.jk, ptr %i.aq, align 32, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us, %bb.i
  %.sroa.62.2.us = phi i32 [ %.sroa.62.1203.us, %bb.i ], [ %.sroa.62.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.47.2.us = phi i32 [ %.sroa.47.1204.us, %bb.i ], [ %.sroa.47.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.37.2.us = phi i32 [ %.sroa.37.1205.us, %bb.i ], [ %.sroa.37.6.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %.sroa.9154.3.us = phi i32 [ %.sroa.9154.1206.us, %bb.i ], [ %.sroa.9154.7.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 2 uses
  %indvars.iv.i.us = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i.us, %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.3.i.us ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.jn = load <8 x i32>, ptr %i.jm, align 32, !tbaa !23 ; 9 uses
  %i.jo = call <8 x i32> @llvm.x86.avx2.psllv.d.256(<8 x i32> splat (i32 1), <8 x i32> %i.jn)
  %i.jp = add <8 x i32> %i.jo, splat (i32 -1)
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv.i.us
  %i.jr = load <8 x i32>, ptr %i.jq, align 32, !tbaa !23
  %i.js = and <8 x i32> %i.jr, %i.jp              ; 8 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <8 x i32> %i.jn, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.us = extractelement <8 x i32> %i.jn, i64 1
  %i.jt = add nsw i32 %.sroa.0.4.vec.extract.i.us, %.sroa.0.0.vec.extract.i.us ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.i.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.j
  %.sroa.012.4.vec.extract.i.us = extractelement <8 x i32> %i.js, i64 1
  %i.jv = zext i32 %.sroa.012.4.vec.extract.i.us to i64
  %i.jw = zext nneg i32 %.sroa.0.0.vec.extract.i.us to i64
  %i.jx = shl i64 %i.jv, %i.jw
  %.sroa.012.0.vec.extract.i.us = extractelement <8 x i32> %i.js, i64 0
  %i.jy = zext i32 %.sroa.012.0.vec.extract.i.us to i64
  %i.jz = or i64 %i.jx, %i.jy
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i.i.us
  %.sroa.62.13.us = phi i32 [ %.sroa.62.2.us, %.lr.ph.i.i.us ], [ %.sroa.62.14.us, %bb.o ]
  %.sroa.47.13.us = phi i32 [ %.sroa.47.2.us, %.lr.ph.i.i.us ], [ %.sroa.47.14.us, %bb.o ] ; 3 uses
  %.sroa.37.13.us = phi i32 [ %.sroa.37.2.us, %.lr.ph.i.i.us ], [ %.sroa.37.14.us, %bb.o ] ; 3 uses
  %.sroa.9154.14.us = phi i32 [ %.sroa.9154.3.us, %.lr.ph.i.i.us ], [ %.sroa.9154.15.us, %bb.o ] ; 4 uses
  %.032.i.i.us = phi i32 [ %i.jt, %.lr.ph.i.i.us ], [ %i.km, %bb.o ] ; 2 uses
  %.02731.i.i.us = phi i64 [ %i.jz, %.lr.ph.i.i.us ], [ %i.kl, %bb.o ] ; 2 uses
  %.not.i.i.us = icmp ult i32 %.sroa.9154.14.us, 17477
  br i1 %.not.i.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ka = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !57
  %i.kc = load ptr, ptr %i.kb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.kd = sub nuw nsw i32 %.sroa.37.13.us, %.sroa.47.13.us
  %..0.i.i.us = call i32 @llvm.smin.i32(i32 %i.kd, i32 %.032.i.i.us) ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %..0.i.i.us
  %i.ke = xor i32 %notmask.i.i.us, -1
  %i.kf = trunc i64 %.02731.i.i.us to i32
  %i.kg = and i32 %i.ke, %i.kf
  %i.kh = shl nuw nsw i32 %i.kg, %.sroa.47.13.us
  %i.ki = or i32 %i.kh, %.sroa.62.13.us           ; 3 uses
  %i.kj = add nuw nsw i32 %..0.i.i.us, %.sroa.47.13.us ; 2 uses
  %i.kk = zext nneg i32 %..0.i.i.us to i64
  %i.kl = lshr i64 %.02731.i.i.us, %i.kk
  %i.km = sub nsw i32 %.032.i.i.us, %..0.i.i.us   ; 2 uses
  %.not30.i.i.us = icmp slt i32 %i.kj, %.sroa.37.13.us
  br i1 %.not30.i.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kn = trunc i32 %i.ki to i8
  %i.ko = add nuw i32 %.sroa.9154.14.us, 1
  %i.kp = zext i32 %.sroa.9154.14.us to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kp
  store i8 %i.kn, ptr %i.kq, align 1, !tbaa !23
  %i.kr = icmp eq i32 %i.ki, 255
  %i.ks = select i1 %i.kr, i32 7, i32 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.62.14.us = phi i32 [ %i.ki, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.47.14.us = phi i32 [ %i.kj, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %.sroa.37.14.us = phi i32 [ %.sroa.37.13.us, %bb.m ], [ %i.ks, %bb.n ] ; 2 uses
  %.sroa.9154.15.us = phi i32 [ %.sroa.9154.14.us, %bb.m ], [ %i.ko, %bb.n ] ; 2 uses
  %i.kt = icmp sgt i32 %i.km, 0
  br i1 %i.kt, label %bb.k, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us, !llvm.loop !47

_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us: ; preds = %bb.o, %bb.j
  %.sroa.62.3.us = phi i32 [ %.sroa.62.2.us, %bb.j ], [ %.sroa.62.14.us, %bb.o ] ; 2 uses
  %.sroa.47.3.us = phi i32 [ %.sroa.47.2.us, %bb.j ], [ %.sroa.47.14.us, %bb.o ] ; 2 uses
  %.sroa.37.3.us = phi i32 [ %.sroa.37.2.us, %bb.j ], [ %.sroa.37.14.us, %bb.o ] ; 2 uses
  %.sroa.9154.4.us = phi i32 [ %.sroa.9154.3.us, %bb.j ], [ %.sroa.9154.15.us, %bb.o ] ; 2 uses
  %.sroa.0.8.vec.extract.i.us = extractelement <8 x i32> %i.jn, i64 2 ; 2 uses
  %.sroa.0.12.vec.extract.i.us = extractelement <8 x i32> %i.jn, i64 3
  %i.ku = add nsw i32 %.sroa.0.12.vec.extract.i.us, %.sroa.0.8.vec.extract.i.us ; 2 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph.i.1.i.us, label %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.1.i.us

.lr.ph.i.1.i.us:                                  ; preds = %_ZN4ojph5localL9ms_encodeEPNS0_9ms_structEmi.exit.i.us
  %.sroa.012.12.vec.extract.i.us = extractelement <8 x i32> %i.js, i64 3
  %i.kw = zext i32 %.sroa.012.12.vec.extract.i.us to i64
  %i.kx = zext nneg i32 %.sroa.0.8.vec.extract.i.us to i64
  %i.ky = shl i64 %i.kw, %i.kx
  %.sroa.012.8.vec.extract.i.us = extractelement <8 x i32> %i.js, i64 2
  %i.kz = zext i32 %.sroa.012.8.vec.extract.i.us to i64
  %i.la = or i64 %i.ky, %i.kz
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.1.i.us
  %.sroa.62.11.us = phi i32 [ %.sroa.62.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.62.12.us, %bb.t ]
  %.sroa.47.11.us = phi i32 [ %.sroa.47.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.47.12.us, %bb.t ] ; 3 uses
  %.sroa.37.11.us = phi i32 [ %.sroa.37.3.us, %.lr.ph.i.1.i.us ], [ %.sroa.37.12.us, %bb.t ] ; 3 uses
  %.sroa.9154.12.us = phi i32 [ %.sroa.9154.4.us, %.lr.ph.i.1.i.us ], [ %.sroa.9154.13.us, %bb.t ] ; 4 uses
  %.032.i.1.i.us = phi i32 [ %i.ku, %.lr.ph.i.1.i.us ], [ %i.ln, %bb.t ] ; 2 uses
  %.02731.i.1.i.us = phi i64 [ %i.la, %.lr.ph.i.1.i.us ], [ %i.lm, %bb.t ] ; 2 uses
  %.not.i.1.i.us = icmp ult i32 %.sroa.9154.12.us, 17477
  br i1 %.not.i.1.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lb = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !57
  %i.ld = load ptr, ptr %i.lc, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i32 noundef 131077, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 65), i32 noundef 449, ptr noundef nonnull @.str.1), !inline_history !46
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.le = sub nuw nsw i32 %.sroa.37.11.us, %.sroa.47.11.us
  %..0.i.1.i.us = call i32 @llvm.smin.i32(i32 %i.le, i32 %.032.i.1.i.us) ; 4 uses
  %notmask.i.1.i.us = shl nsw i32 -1, %..0.i.1.i.us
  %i.lf = xor i32 %notmask.i.1.i.us, -1
  %i.lg = trunc i64 %.02731.i.1.i.us to i32
end_hunk_0
