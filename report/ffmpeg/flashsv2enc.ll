Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flashsv2enc?download=true
inline.NumInlined: 43
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@flashsv2_encode_frame:bb.a
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xk, i64 51
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !107
  %i.yz = zext nneg i32 %.041.i.i.i to i64
  %i.za = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.yz ; 2 uses
  store i8 %i.yy, ptr %i.za, align 1, !tbaa !61
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xk, i64 52
  %i.zc = load i8, ptr %i.zb, align 4, !tbaa !108
  %i.zd = add nuw nsw i32 %.041.i.i.i, 2
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  store i8 %i.zc, ptr %i.ze, align 1, !tbaa !61
  br label %write_block.exit.i.i

write_block.exit.i.i:                             ; preds = %bb.ay, %bb.ax
  %.142.i.i.i = phi i32 [ %i.zd, %bb.ay ], [ %.041.i.i.i, %bb.ax ] ; 2 uses
  %i.zf = zext nneg i32 %.142.i.i.i to i64
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !97
  %i.zj = load i64, ptr %i.xo, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zg, ptr align 1 %i.zi, i64 %i.zj, i1 false)
  %i.zk = load i64, ptr %i.xo, align 8, !tbaa !84
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = add i32 %.142.i.i.i, %i.zl              ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xk, i64 50
  store i8 0, ptr %i.zn, align 2, !tbaa !76
  %i.zo = getelementptr inbounds nuw i8, ptr %i.xk, i64 49
  store i8 0, ptr %i.zo, align 1, !tbaa !77
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  store i8 0, ptr %i.zp, align 8, !tbaa !78
  %i.zq = icmp slt i32 %i.zm, 0
  br i1 %i.zq, label %write_bitstream.exit, label %bb.az

bb.az:                                            ; preds = %write_block.exit.i.i, %write_block.exit.thread30.i.i
  %.043.i32.i.i = phi i32 [ 2, %write_block.exit.thread30.i.i ], [ %i.zm, %write_block.exit.i.i ]
  %i.zr = add nuw nsw i32 %.043.i32.i.i, %.141.i.i
  %i.zs = freeze i32 %i.zr                        ; 2 uses
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i41.i, 1 ; 2 uses
  %i.zt = load i32, ptr %i.wy, align 8, !tbaa !70 ; 3 uses
  %i.zu = sext i32 %i.zt to i64
  %i.zv = icmp slt i64 %indvars.iv.next.i43.i, %i.zu
  br i1 %i.zv, label %.lr.ph.i40.i, label %._crit_edge.loopexit.i44.i, !llvm.loop !109

._crit_edge.loopexit.i44.i:                       ; preds = %bb.az
  %.pre.i45.i = load i32, ptr %i.ej, align 4, !tbaa !80
  br label %._crit_edge.i39.i

._crit_edge.i39.i:                                ; preds = %._crit_edge.loopexit.i44.i, %.preheader.i38.i
  %i.zw = phi i32 [ %i.xc, %.preheader.i38.i ], [ %.pre.i45.i, %._crit_edge.loopexit.i44.i ] ; 2 uses
  %i.zx = phi i32 [ %i.xd, %.preheader.i38.i ], [ %i.zt, %._crit_edge.loopexit.i44.i ]
  %.1.lcssa.i.i = phi i32 [ %.043.i.i, %.preheader.i38.i ], [ %i.zs, %._crit_edge.loopexit.i44.i ] ; 4 uses
  %i.zy = add nuw nsw i32 %.02442.i.i, 1          ; 2 uses
  %i.zz = icmp slt i32 %i.zy, %i.zw
  br i1 %i.zz, label %.preheader.i38.i, label %write_all_blocks.exit.i, !llvm.loop !110

write_all_blocks.exit.i:                          ; preds = %._crit_edge.i39.i
  %i.aaa = icmp slt i32 %.1.lcssa.i.i, 0
  %i.aab = add nuw nsw i32 %.1.lcssa.i.i, 5
  %spec.select.i48 = select i1 %i.aaa, i32 %.1.lcssa.i.i, i32 %i.aab ; 2 uses
  br i1 %.not415863, label %write_bitstream.exit.thread, label %bb.ba

write_bitstream.exit:                             ; preds = %bb.am, %bb.an, %encode_zlibprime.exit.i.i.i, %.lr.ph.i51.i.i.i, %write_block.exit.i.i, %encode_all_blocks.exit.i, %put_bits.exit26.i.i, %write_header.exit.i, %.preheader.lr.ph.i37.i
  %.0.i47 = phi i32 [ 5, %write_header.exit.i ], [ -1, %.lr.ph.i51.i.i.i ], [ 5, %.preheader.lr.ph.i37.i ], [ %i.zm, %write_block.exit.i.i ], [ -1, %put_bits.exit26.i.i ], [ -1, %encode_all_blocks.exit.i ], [ -1, %encode_zlibprime.exit.i.i.i ], [ -542398533, %bb.am ], [ -542398533, %bb.an ] ; 2 uses
  br i1 %.not415863, label %write_bitstream.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %write_all_blocks.exit.i, %write_block.exit.thread.i.i, %write_bitstream.exit
  %.0.i4775 = phi i32 [ -1, %write_block.exit.thread.i.i ], [ %.0.i47, %write_bitstream.exit ], [ %spec.select.i48, %write_all_blocks.exit.i ]
  %i.aac = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !81
  %i.aae = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !73
  %i.aag = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !111
  %i.aai = sext i32 %i.aah to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aad, ptr align 8 %i.aaf, i64 %i.aai, i1 false)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !49
  %i.aal = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !48
  %i.aan = load i32, ptr %i.c, align 8, !tbaa !44
  %i.aao = sext i32 %i.aan to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aak, ptr align 1 %i.aam, i64 %i.aao, i1 false)
  %i.aap = load i32, ptr %i.ej, align 4, !tbaa !80
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !70
  %i.aas = mul nsw i32 %i.aar, %i.aap             ; 4 uses
  %i.aat = icmp sgt i32 %i.aas, 0
  %i.aau = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !46 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !45 ; 2 uses
  br i1 %i.aat, label %.lr.ph.i, label %new_key_frame.exit

.lr.ph.i:                                         ; preds = %bb.ba
  %i.aay = ptrtoint ptr %i.aav to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz                 ; 3 uses
  %i.abb = load ptr, ptr %i.aac, align 8, !tbaa !81 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.aas to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.abc = icmp eq i32 %i.aas, 1
  br i1 %i.abc, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.bb ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.bb ]
  %i.abd = getelementptr inbounds nuw [56 x i8], ptr %i.abb, i64 %indvars.iv.i ; 4 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !86
  %i.abf = getelementptr inbounds i8, ptr %i.abe, i64 %i.aba
  store ptr %i.abf, ptr %i.abd, align 8, !tbaa !86
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  store ptr null, ptr %i.abh, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abg, i8 0, i64 16, i1 false)
  %i.abi = getelementptr inbounds nuw [56 x i8], ptr %i.abb, i64 %indvars.iv.i ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 56 ; 2 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !86
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 %i.aba
  store ptr %i.abl, ptr %i.abj, align 8, !tbaa !86
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 64
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abi, i64 88
  store ptr null, ptr %i.abn, align 8, !tbaa !97
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abm, i8 0, i64 16, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %new_key_frame.exit.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !112

new_key_frame.exit.loopexit.unr-lcssa:            ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %new_key_frame.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %new_key_frame.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %new_key_frame.exit.loopexit.unr-lcssa ]
  %lcmp.mod228 = trunc i32 %i.aas to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %i.abo = getelementptr inbounds nuw [56 x i8], ptr %i.abb, i64 %indvars.iv.i.epil.init ; 4 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !86
  %i.abq = getelementptr inbounds i8, ptr %i.abp, i64 %i.aba
  store ptr %i.abq, ptr %i.abo, align 8, !tbaa !86
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 32
  store ptr null, ptr %i.abs, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abr, i8 0, i64 16, i1 false)
  br label %new_key_frame.exit

new_key_frame.exit:                               ; preds = %.epil.preheader, %new_key_frame.exit.loopexit.unr-lcssa, %bb.ba
  %i.abt = load i32, ptr %i.c, align 8, !tbaa !44
  %i.abu = sext i32 %i.abt to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aav, ptr align 1 %i.aax, i64 %i.abu, i1 false)
  %i.abv = load i64, ptr %i.i, align 8, !tbaa !52 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.abv, ptr %i.abw, align 8, !tbaa !41
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !113
  %i.abz = or i32 %i.aby, 1
  store i32 %i.abz, ptr %i.abx, align 8, !tbaa !113
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.8, i64 noundef %i.abv) #10
  br label %write_bitstream.exit.thread

write_bitstream.exit.thread:                      ; preds = %bb.ap, %write_all_blocks.exit.i, %write_block.exit.thread.i.i, %new_key_frame.exit, %write_bitstream.exit
  %.0.i4774 = phi i32 [ %spec.select.i48, %write_all_blocks.exit.i ], [ %.0.i4775, %new_key_frame.exit ], [ %.0.i47, %write_bitstream.exit ], [ -1, %write_block.exit.thread.i.i ], [ -542398533, %bb.ap ]
  store i32 %.0.i4774, ptr %i.bz, align 8, !tbaa !69
  store i32 1, ptr %3, align 4, !tbaa !58
  br label %reconfigure_at_keyframe.exit.thread69

reconfigure_at_keyframe.exit.thread69:            ; preds = %bb.f, %reconfigure_at_keyframe.exit, %bb.a, %write_bitstream.exit.thread
  %.0 = phi i32 [ 0, %write_bitstream.exit.thread ], [ %i.g, %bb.a ], [ -1, %reconfigure_at_keyframe.exit ], [ %i.w, %bb.f ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @flashsv2_encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call fastcc void @cleanup(ptr noundef %i.b) #11
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_deflate_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @update_block_dimensions(ptr noundef initializes((100, 108), (128, 136)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 64, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 64, ptr %i.b, align 4, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !58
  %i.f = add nsw <2 x i32> %i.e, splat (i32 63)
  %i.g = sdiv <2 x i32> %i.f, splat (i32 64)      ; 2 uses
  %1 = extractelement <2 x i32> %i.g, i64 1       ; 3 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !80
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 0     ; 3 uses
  store i32 %i.h, ptr %2, align 8, !tbaa !70
  %i.i = mul nsw i32 %i.h, %1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !111
  %i.m = sext i32 %i.l to i64
  %i.n = udiv i64 %i.m, 56
  %i.o = icmp ult i64 %i.n, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73   ; 2 uses
  br i1 %i.o, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.r = sext i32 %1 to i64
  %narrow = mul nsw i32 %i.h, 56
  %i.s = sext i32 %narrow to i64
  %i.t = tail call ptr @av_realloc_array(ptr noundef %i.q, i64 noundef %i.r, i64 noundef %i.s) #10
  store ptr %i.t, ptr %i.p, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = load i32, ptr %2, align 8, !tbaa !70
  %i.x = sext i32 %i.w to i64
  %i.y = load i32, ptr %i.c, align 4, !tbaa !80
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 56
  %i.ab = tail call ptr @av_realloc_array(ptr noundef %i.v, i64 noundef %i.x, i64 noundef %i.aa) #10 ; 2 uses
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !81
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !73  ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  %.not42 = icmp eq ptr %i.ab, null
  %or.cond = select i1 %.not, i1 true, i1 %.not42
  br i1 %or.cond, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !80
  %i.ae = load i32, ptr %2, align 8, !tbaa !70
  %i.af = mul i32 %i.ad, 56
  %i.ag = mul i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !111
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %i.ah = phi ptr [ %i.ac, %bb.c ], [ %i.q, %bb.a ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  tail call fastcc void @init_blocks(ptr noundef nonnull %0, ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  tail call fastcc void @init_blocks(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef null)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @av_fast_malloc(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, i64 noundef 24576) #10
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !85
  %.not43 = icmp eq ptr %i.as, null
  br i1 %.not43, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.str.6.sink = phi ptr [ @.str.5, %bb.b ], [ @.str.6, %._crit_edge ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.at, i32 noundef 16, ptr noundef nonnull %.str.6.sink) #10
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ -12, %.sink.split ]
  ret i32 %.0
}

declare ptr @av_realloc_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @init_blocks(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 56
  tail call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 %i.g, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge54.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = load i32, ptr %i.c, align 4, !tbaa !80   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge54.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.p = add nsw i32 %i.j, -1
  %i.q = add nsw i32 %i.h, -1
  %i.r = zext nneg i32 %i.h to i64                ; 3 uses
  %i.s = zext nneg i32 %i.p to i64                ; 2 uses
  %i.t = zext nneg i32 %i.q to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  %wide.trip.count63 = zext nneg i32 %i.j to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv65 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next66, %._crit_edge ] ; 6 uses
  %.04251 = phi ptr [ %3, %.preheader.preheader ], [ %.us-phi49, %._crit_edge ] ; 2 uses
  %.04350 = phi ptr [ %2, %.preheader.preheader ], [ %.us-phi, %._crit_edge ] ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv65, %i.t
  %i.v = trunc i64 %indvars.iv65 to i8            ; 2 uses
  br i1 %i.u, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.preheader
  %i.w = load i32, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %i.x = trunc i32 %i.w to i8
  %i.y = and i32 %i.w, 255
  %invariant.gep77 = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv65
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.split.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.e ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %.146.us = phi ptr [ %i.ax, %bb.e ], [ %.04251, %.lr.ph.split.us ] ; 3 uses
  %.14445.us = phi ptr [ %i.at, %bb.e ], [ %.04350, %.lr.ph.split.us ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv60, %i.r
  %gep78 = getelementptr inbounds nuw [56 x i8], ptr %invariant.gep77, i64 %i.z ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %gep78, i64 53
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !74
  %i.ab = icmp samesign ult i64 %indvars.iv60, %i.s
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !43
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !55
  %i.ae = trunc nuw nsw i64 %indvars.iv60 to i32  ; 2 uses
  %i.af = mul nsw i32 %i.ad, %i.ae
  %i.ag = sub nsw i32 %i.ac, %i.af
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %i.o, align 4, !tbaa !55
  %.pre = trunc nuw nsw i64 %indvars.iv60 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i32 [ %.pre, %bb.d ], [ %i.ae, %bb.c ]
  %i.ai = phi i32 [ %i.ah, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %gep78, i64 54
  store i8 %i.aj, ptr %i.ak, align 2, !tbaa !83
  %i.al = trunc i32 %.pre-phi to i8
  %i.am = getelementptr inbounds nuw i8, ptr %gep78, i64 52
  store i8 %i.al, ptr %i.am, align 4, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %gep78, i64 51
  store i8 %i.v, ptr %i.an, align 1, !tbaa !107
  store ptr %.14445.us, ptr %gep78, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %gep78, i64 32
  store ptr %.146.us, ptr %i.ao, align 8, !tbaa !97
  %i.ap = and i32 %i.ai, 255
  %i.aq = mul nuw nsw i32 %i.ap, %i.y             ; 2 uses
  %i.ar = mul nuw nsw i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.14445.us, i64 %i.as ; 2 uses
  %.not.us = icmp eq ptr %.146.us, null
  %i.au = mul nuw nsw i32 %i.aq, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.146.us, i64 %i.av
  %i.ax = select i1 %.not.us, ptr null, ptr %i.aw ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %bb.b, !llvm.loop !114

.lr.ph.split:                                     ; preds = %.preheader
  %i.ay = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.az = load i32, ptr %i.l, align 8, !tbaa !42
  %i.ba = load i32, ptr %i.m, align 8, !tbaa !54
  %i.bb = mul nsw i32 %i.ba, %i.ay
  %i.bc = sub nsw i32 %i.az, %i.bb                ; 2 uses
  %i.bd = trunc i32 %i.bc to i8
  %i.be = and i32 %i.bc, 255
  %invariant.gep = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %indvars.iv65
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %.146 = phi ptr [ %.04251, %.lr.ph.split ], [ %i.cd, %bb.i ] ; 3 uses
  %.14445 = phi ptr [ %.04350, %.lr.ph.split ], [ %i.bz, %bb.i ] ; 2 uses
  %i.bf = mul nuw nsw i64 %indvars.iv, %i.r
  %gep = getelementptr inbounds nuw [56 x i8], ptr %invariant.gep, i64 %i.bf ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %gep, i64 53
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !74
  %i.bh = icmp samesign ult i64 %indvars.iv, %i.s
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !55
  %.pre70 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bj = load i32, ptr %i.n, align 4, !tbaa !43
  %i.bk = load i32, ptr %i.o, align 4, !tbaa !55
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bm = mul nsw i32 %i.bk, %i.bl
  %i.bn = sub nsw i32 %i.bj, %i.bm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi71 = phi i32 [ %i.bl, %bb.h ], [ %.pre70, %bb.g ]
  %i.bo = phi i32 [ %i.bn, %bb.h ], [ %i.bi, %bb.g ] ; 2 uses
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 54
  store i8 %i.bp, ptr %i.bq, align 2, !tbaa !83
  %i.br = trunc i32 %.pre-phi71 to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %gep, i64 52
  store i8 %i.br, ptr %i.bs, align 4, !tbaa !108
  %i.bt = getelementptr inbounds nuw i8, ptr %gep, i64 51
  store i8 %i.v, ptr %i.bt, align 1, !tbaa !107
  store ptr %.14445, ptr %gep, align 8, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %gep, i64 32
  store ptr %.146, ptr %i.bu, align 8, !tbaa !97
  %i.bv = and i32 %i.bo, 255
  %i.bw = mul nuw nsw i32 %i.bv, %i.be            ; 2 uses
  %i.bx = mul nuw nsw i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.14445, i64 %i.by ; 2 uses
  %.not = icmp eq ptr %.146, null
  %i.ca = mul nuw nsw i32 %i.bw, 6
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.146, i64 %i.cb
  %i.cd = select i1 %.not, ptr null, ptr %i.cc    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !114
end_hunk_0
