Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mss2?download=true
inline.NumInlined: 51
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mss2_decode_frame:bb.a
  %.3309495 = phi i32 [ %.2308, %.lr.ph497 ], [ %.6.ph, %.loopexit ] ; 6 uses
  %.3314494 = phi ptr [ %.2313, %.lr.ph497 ], [ %.6317.ph, %.loopexit ] ; 7 uses
  %i.zy = getelementptr inbounds nuw [20 x i8], ptr %7, i64 %indvars.iv513 ; 5 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !99 ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !101 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !102 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !103 ; 6 uses
  %i.aah = load i32, ptr %i.zy, align 4, !tbaa !106
  %.not370 = icmp eq i32 %i.aah, 0
  br i1 %.not370, label %bb.dm, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aai = icmp slt i32 %.3309495, 4
  br i1 %i.aai, label %decode_pal_v2.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aaj = getelementptr i8, ptr %.3314494, i64 1
  %i.aak = load i16, ptr %i.aaj, align 1
  %i.aal = zext i16 %i.aak to i32
  %i.aam = shl nuw nsw i32 %i.aal, 8
  %i.aan = load i8, ptr %.3314494, align 1, !tbaa !75
  %i.aao = zext i8 %i.aan to i32
  %i.aap = or disjoint i32 %i.aam, %i.aao         ; 2 uses
  %.not373 = icmp eq i32 %i.aap, 0
  br i1 %.not373, label %decode_pal_v2.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aaq = getelementptr inbounds nuw i8, ptr %.3314494, i64 3
  %i.aar = add nsw i32 %.3309495, -3
  %i.aas = call fastcc i32 @decode_wmv9(ptr noundef %0, ptr noundef nonnull %i.aaq, i32 noundef %i.aar, i32 noundef %i.aaa, i32 noundef %i.aac, i32 noundef %i.aae, i32 noundef %i.aag, i32 noundef %.2298) ; 2 uses
  %.not374 = icmp eq i32 %i.aas, 0
  br i1 %.not374, label %bb.dl, label %decode_pal_v2.exit.thread

bb.dl:                                            ; preds = %bb.dk
  %i.aat = add nuw nsw i32 %i.aap, 3              ; 2 uses
  %i.aau = zext nneg i32 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %.3314494, i64 %i.aau
  %i.aaw = sub nsw i32 %.3309495, %i.aat
  br label %.loopexit

bb.dm:                                            ; preds = %bb.dh
  %i.aax = load ptr, ptr %i.su, align 8, !tbaa !112
  %i.aay = sext i32 %i.aac to i64                 ; 2 uses
  %i.aaz = load i64, ptr %i.sx, align 8, !tbaa !113 ; 2 uses
  %i.aba = mul nsw i64 %i.aaz, %i.aay
  %i.abb = getelementptr inbounds i8, ptr %i.aax, i64 %i.aba
  %i.abc = mul nsw i32 %i.aaa, 3
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr inbounds i8, ptr %i.abb, i64 %i.abd ; 3 uses
  br i1 %.not371, label %.preheader, label %bb.dn

.preheader:                                       ; preds = %bb.dm
  %i.abf = mul nsw i32 %i.aae, 3
  %i.abg = sext i32 %i.abf to i64                 ; 9 uses
  %i.abh = add i32 %i.aag, -1
  %xtraiter592 = and i32 %i.aag, 7                ; 2 uses
  %lcmp.mod593.not = icmp eq i32 %xtraiter592, 0
  br i1 %lcmp.mod593.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %.0292.prol = phi i32 [ %i.abk, %.prol.preheader ], [ %i.aag, %.preheader ]
  %.0.prol = phi ptr [ %i.abj, %.prol.preheader ], [ %i.abe, %.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  call void @llvm.memset.p0.i64(ptr align 1 %.0.prol, i8 -128, i64 %i.abg, i1 false)
  %i.abi = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.abj = getelementptr inbounds i8, ptr %.0.prol, i64 %i.abi ; 2 uses
  %i.abk = add nsw i32 %.0292.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter592
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !124

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.0292.unr = phi i32 [ %i.aag, %.preheader ], [ %i.abk, %.prol.preheader ]
  %.0.unr = phi ptr [ %i.abe, %.preheader ], [ %i.abj, %.prol.preheader ]
  %i.abl = icmp ult i32 %i.abh, 7
  br i1 %i.abl, label %.loopexit, label %.preheader.new

bb.dn:                                            ; preds = %bb.dm
  %i.abm = load ptr, ptr %i.zv, align 8, !tbaa !126
  %i.abn = load ptr, ptr %i.zw, align 8, !tbaa !65
  %i.abo = load i64, ptr %i.zx, align 8, !tbaa !63 ; 2 uses
  %i.abp = mul nsw i64 %i.abo, %i.aay
  %i.abq = getelementptr inbounds i8, ptr %i.abn, i64 %i.abp
  %i.abr = sext i32 %i.aaa to i64
  %i.abs = getelementptr inbounds i8, ptr %i.abq, i64 %i.abr
  call void %i.abm(ptr noundef %i.abe, i64 noundef %i.aaz, i32 noundef %.2298, ptr noundef %i.abs, i64 noundef %i.abo, i32 noundef %i.aae, i32 noundef %i.aag) #11
  br label %.loopexit

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.0292 = phi i32 [ %i.acj, %.preheader.new ], [ %.0292.unr, %.prol.loopexit ]
  %.0 = phi ptr [ %i.aci, %.preheader.new ], [ %.0.unr, %.prol.loopexit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.0, i8 -128, i64 %i.abg, i1 false)
  %i.abt = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.abu = getelementptr inbounds i8, ptr %.0, i64 %i.abt ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.abu, i8 -128, i64 %i.abg, i1 false)
  %i.abv = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.abw = getelementptr inbounds i8, ptr %i.abu, i64 %i.abv ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.abw, i8 -128, i64 %i.abg, i1 false)
  %i.abx = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.aby = getelementptr inbounds i8, ptr %i.abw, i64 %i.abx ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aby, i8 -128, i64 %i.abg, i1 false)
  %i.abz = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.aca = getelementptr inbounds i8, ptr %i.aby, i64 %i.abz ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.aca, i8 -128, i64 %i.abg, i1 false)
  %i.acb = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.acc = getelementptr inbounds i8, ptr %i.aca, i64 %i.acb ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.acc, i8 -128, i64 %i.abg, i1 false)
  %i.acd = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.ace = getelementptr inbounds i8, ptr %i.acc, i64 %i.acd ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ace, i8 -128, i64 %i.abg, i1 false)
  %i.acf = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.acg = getelementptr inbounds i8, ptr %i.ace, i64 %i.acf ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.acg, i8 -128, i64 %i.abg, i1 false)
  %i.ach = load i64, ptr %i.sx, align 8, !tbaa !113
  %i.aci = getelementptr inbounds i8, ptr %i.acg, i64 %i.ach
  %i.acj = add nsw i32 %.0292, -8                 ; 2 uses
  %.not372.7 = icmp eq i32 %i.acj, 0
  br i1 %.not372.7, label %.loopexit, label %.preheader.new, !llvm.loop !127

.loopexit:                                        ; preds = %.prol.loopexit, %.preheader.new, %bb.dn, %bb.dl
  %.6317.ph = phi ptr [ %i.aav, %bb.dl ], [ %.3314494, %bb.dn ], [ %.3314494, %.preheader.new ], [ %.3314494, %.prol.loopexit ]
  %.6.ph = phi i32 [ %i.aaw, %bb.dl ], [ %.3309495, %bb.dn ], [ %.3309495, %.preheader.new ], [ %.3309495, %.prol.loopexit ] ; 2 uses
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count516
  br i1 %exitcond517.not, label %.loopexit483, label %bb.dh, !llvm.loop !128

.loopexit483:                                     ; preds = %.loopexit, %bb.dg
  %.7 = phi i32 [ %.2308, %bb.dg ], [ %.6.ph, %.loopexit ]
  %.not369 = icmp eq i32 %.7, 0
  br i1 %.not369, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.loopexit483
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.8) #11
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.loopexit483
  %i.ack = load i32, ptr %i.ol, align 8, !tbaa !109
  %i.acl = icmp slt i32 %i.ack, 0
  br i1 %i.acl, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acm = load i32, ptr %i.ok, align 4, !tbaa !108
  %i.acn = icmp slt i32 %i.acm, 0
  br i1 %i.acn, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.aco = load ptr, ptr %i.ep, align 8, !tbaa !32
  %i.acp = call i32 @av_frame_replace(ptr noundef %i.aco, ptr noundef nonnull %1) #11 ; 2 uses
  %i.acq = icmp slt i32 %i.acp, 0
  br i1 %i.acq, label %decode_pal_v2.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  store i32 1, ptr %2, align 4, !tbaa !105
  %i.acr = load i32, ptr %i.c, align 8, !tbaa !71
  br label %decode_pal_v2.exit.thread

decode_pal_v2.exit.thread:                        ; preds = %bb.al, %bb.dk, %bb.di, %bb.dj, %bb.bm, %bb.bn, %bb.dr, %bb.dd, %bytestream2_init.exit, %bb.db, %calc_split_position.exit, %.loopexit485, %bb.cv, %bb.cw, %bb.cp, %bb.cl, %bb.ci, %bb.ch, %bytestream2_init.exit386, %bb.by, %.thread448.thread, %bb.bs, %bb.bp, %._crit_edge, %bb.w, %align_get_bits.exit, %bb.r, %bb.s, %bb.a, %bb.ds, %bb.bx, %bb.ba, %bb.ar
  %.4 = phi i32 [ -1094995529, %._crit_edge ], [ -1094995529, %bb.a ], [ -1094995529, %bb.r ], [ -1094995529, %align_get_bits.exit ], [ -1094995529, %bb.w ], [ -1094995529, %bb.ar ], [ -1094995529, %bb.ba ], [ -1094995529, %bb.bn ], [ -1094995529, %bb.bm ], [ -1094995529, %bb.bp ], [ %i.sm, %bb.by ], [ %i.acp, %bb.dr ], [ -1094995529, %bb.dd ], [ %i.acr, %bb.ds ], [ -1094995529, %bytestream2_init.exit386 ], [ -1094995529, %bb.ch ], [ %i.uk, %bb.ci ], [ %i.uy, %bb.cl ], [ -1094995529, %bb.cp ], [ -1094995529, %.loopexit485 ], [ -1094995529, %calc_split_position.exit ], [ -1094995529, %bb.db ], [ -1094995529, %bytestream2_init.exit ], [ -1094995529, %bb.bx ], [ %i.rs, %bb.bs ], [ %i.sj, %.thread448.thread ], [ -1094995529, %bb.s ], [ %i.aas, %bb.dk ], [ -1094995529, %bb.cw ], [ -1094995529, %bb.cv ], [ -1094995529, %bb.dj ], [ -1094995529, %bb.di ], [ -1094995529, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.4
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mss2_decode_end(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11000
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 11008
  %i.e = tail call i32 @ff_mss12_decode_end(ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12040
  tail call void @av_freep(ptr noundef nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12048
  tail call void @av_freep(ptr noundef nonnull %i.g) #11
  %i.h = tail call i32 @ff_vc1_decode_end(ptr noundef %0) #11 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @ff_mss12_decode_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @wmv9_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store ptr %0, ptr %i.c, align 8, !tbaa !129
  tail call void @ff_vc1_init_common(ptr noundef %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6044
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6392
  store ptr @ff_wmv2_scantableA, ptr %i.e, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6400
  store ptr @ff_wmv2_scantableB, ptr %i.f, align 16, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5952
  store <2 x i32> <i32 1, i32 7>, ptr %i.d, align 4, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 6052
  store i32 31, ptr %i.h, align 4, !tbaa !132
  store <4 x i32> zeroinitializer, ptr %i.g, align 16, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5968
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 6068
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %i.j, align 4, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 6084
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10212
  store i32 0, ptr %i.l, align 4, !tbaa !133
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.m, align 8, !tbaa !134
  store <4 x i32> zeroinitializer, ptr %i.k, align 4, !tbaa !105
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.i, align 16, !tbaa !105
  tail call void @ff_vc1_init_transposed_scantables(ptr noundef %i.b) #11
  %i.n = tail call i32 @ff_vc1_decode_init(ptr noundef %0) #11
  %. = tail call i32 @llvm.smin.i32(i32 %i.n, i32 0)
  ret i32 %.
}

declare void @ff_mss2dsp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @ff_vc1_init_common(ptr noundef) local_unnamed_addr #3

declare void @ff_vc1_init_transposed_scantables(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vc1_decode_init(ptr noundef) local_unnamed_addr #3

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @arith2_get_number(ptr nofree noundef captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = load i32, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = add nsw i32 %i.d, 1                      ; 5 uses
  %.not.i23 = icmp ult i32 %i.e, 65536            ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %spec.select.i24 = select i1 %.not.i23, i32 %i.e, i32 %i.f ; 3 uses
  %spec.select12.i25 = select i1 %.not.i23, i32 0, i32 16 ; 2 uses
  %.not11.i26 = icmp samesign ult i32 %spec.select.i24, 256 ; 2 uses
  %i.g = lshr i32 %spec.select.i24, 8
  %i.h = or disjoint i32 %spec.select12.i25, 8
  %.110.i27 = select i1 %.not11.i26, i32 %spec.select.i24, i32 %i.g
  %.1.i28 = select i1 %.not11.i26, i32 %spec.select12.i25, i32 %i.h
  %i.i = zext nneg i32 %.110.i27 to i64
  %i.j = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !75
  %i.l = zext i8 %i.k to i32
  %.not.i = icmp ult i32 %1, 65536                ; 2 uses
  %i.m = lshr i32 %1, 16
  %spec.select.i = select i1 %.not.i, i32 %1, i32 %i.m ; 3 uses
  %spec.select12.i.neg = select i1 %.not.i, i32 0, i32 -16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.n = lshr i32 %spec.select.i, 8
  %.neg31 = add nsw i32 %spec.select12.i.neg, -8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.n
  %.1.i.neg32 = select i1 %.not11.i, i32 %spec.select12.i.neg, i32 %.neg31
  %i.o = zext nneg i32 %.110.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !75
  %i.r = zext i8 %i.q to i32
  %.neg30 = add nsw i32 %.1.i.neg32, %i.l
  %i.s = sub nsw i32 %.neg30, %i.r
  %i.t = add nsw i32 %i.s, %.1.i28                ; 2 uses
  %i.u = shl i32 %1, %i.t
  %i.v = icmp sgt i32 %i.u, %i.e
  %i.w = sext i1 %i.v to i32
  %spec.select = add nsw i32 %i.t, %i.w           ; 4 uses
  %i.x = shl i32 %1, %spec.select
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !91   ; 2 uses
  %i.aa = sub nsw i32 %i.z, %i.c                  ; 3 uses
  %i.ab = shl i32 %i.x, 1
  %i.ac = sub nsw i32 %i.ab, %i.e                 ; 9 uses
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  %i.ae = sub nsw i32 %i.aa, %i.ac
  %i.af = lshr i32 %i.ae, 1
  %i.ag = add nsw i32 %i.af, %i.ac
  %.0.i = select i1 %i.ad, i32 %i.ag, i32 %i.aa
  %i.ah = ashr i32 %.0.i, %spec.select            ; 3 uses
  %i.ai = shl i32 %i.ah, %spec.select             ; 3 uses
  %i.aj = add nsw i32 %i.ah, 1
  %i.ak = shl i32 %i.aj, %spec.select             ; 3 uses
  %i.al = icmp sgt i32 %i.ak, %i.ac
  %i.am = sub nsw i32 %i.ak, %i.ac
  %i.an = shl nuw i32 %i.am, 1
  %i.ao = add nsw i32 %i.an, %i.ac
  %.sink.i = select i1 %i.al, i32 %i.ao, i32 %i.ak
  %i.ap = add nsw i32 %i.c, -1
  %i.aq = add nsw i32 %i.ap, %.sink.i             ; 3 uses
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !89
  %i.ar = icmp sgt i32 %i.ai, %i.ac
  %i.as = sub nsw i32 %i.ai, %i.ac
  %i.at = shl nuw i32 %i.as, 1
  %i.au = add nsw i32 %i.at, %i.ac
  %.pn.i = select i1 %i.ar, i32 %i.au, i32 %i.ai
  %storemerge.i = add nsw i32 %.pn.i, %i.c        ; 3 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !87
  %i.av = ashr i32 %i.aq, 15
  %i.aw = ashr i32 %storemerge.i, 15
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = icmp slt i32 %i.ax, 2
  br i1 %i.ay, label %.lr.ph.i, label %arith2_normalise.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bytestream2_get_byte.exit.i, %.lr.ph.i
  %i.ba = phi i32 [ %i.z, %.lr.ph.i ], [ %.0.i.i, %bytestream2_get_byte.exit.i ] ; 2 uses
  %i.bb = phi i32 [ %i.aq, %.lr.ph.i ], [ %i.bn, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.bc = phi i32 [ %storemerge.i, %.lr.ph.i ], [ %i.cd, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.bd = xor i32 %i.bc, %i.bb
  %i.be = and i32 %i.bd, 65536
  %.not.i29 = icmp eq i32 %i.be, 0
  br i1 %.not.i29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = xor i32 %i.bb, 32768
  %i.bg = xor i32 %i.ba, 32768                    ; 2 uses
  store i32 %i.bg, ptr %i.y, align 8, !tbaa !91
  %i.bh = xor i32 %i.bc, 32768                    ; 2 uses
  store i32 %i.bh, ptr %0, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = phi i32 [ %i.bg, %bb.c ], [ %i.ba, %bb.b ]
  %i.bj = phi i32 [ %i.bh, %bb.c ], [ %i.bc, %bb.b ]
  %i.bk = phi i32 [ %i.bf, %bb.c ], [ %i.bb, %bb.b ]
  %i.bl = shl i32 %i.bk, 8
  %i.bm = and i32 %i.bl, 16776960                 ; 2 uses
  %i.bn = or disjoint i32 %i.bm, 255              ; 2 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !89
  %i.bo = shl i32 %i.bi, 8
  %i.bp = and i32 %i.bo, 16776960                 ; 2 uses
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !75 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !86 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !95 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !95
  br label %bytestream2_get_byte.exit.i

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !90
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !75
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bp, %i.ca
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.bp, %bb.e ], [ %i.cb, %bb.f ] ; 2 uses
  store i32 %.0.i.i, ptr %i.y, align 8, !tbaa !91
  %i.cc = shl i32 %i.bj, 8
  %i.cd = and i32 %i.cc, 16776960                 ; 3 uses
  store i32 %i.cd, ptr %0, align 8, !tbaa !87
  %i.ce = lshr i32 %i.bm, 15
  %i.cf = lshr i32 %i.cd, 15
  %i.cg = sub nsw i32 %i.ce, %i.cf
  %i.ch = icmp slt i32 %i.cg, 2
  br i1 %i.ch, label %bb.b, label %arith2_normalise.exit, !llvm.loop !96

arith2_normalise.exit:                            ; preds = %bytestream2_get_byte.exit.i, %bb.a
  ret i32 %i.ah
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -268435456, 268435457) i32 @arith2_get_consumed_bytes(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = ashr i32 %i.b, 16                        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !87
  %i.e = ashr i32 %i.d, 16                        ; 2 uses
  %i.f = sub nsw i32 %i.c, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = and i32 %i.f, 128
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i32 [ %i.m, %.lr.ph ], [ 1, %bb.a ]
  %.0911 = phi i32 [ %i.n, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = add nuw nsw i32 %.012, 1                 ; 2 uses
  %i.n = shl i32 %.0911, 1
  %i.o = and i32 %.0911, 64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.m, %.lr.ph ]
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = shl i32 %i.s, 3
  %i.u = add i32 %i.t, -17
  %i.v = add i32 %i.u, %.0.lcssa
  %i.w = ashr i32 %i.v, 3
  %i.x = add nsw i32 %i.e, 1
  %i.y = icmp eq i32 %i.x, %i.c
  %i.z = zext i1 %i.y to i32
  %i.aa = add nsw i32 %i.w, %i.z
  ret i32 %i.aa
}

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_555(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef range(i64 -4611686018427387904, 4611686018427387904) %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 7 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !95     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bytestream2_get_byte.exit148, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !90
  %i.i = load i8, ptr %i.c, align 1, !tbaa !75
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 4
  %.pre = ptrtoint ptr %i.h to i64
  br label %bytestream2_get_byte.exit148

bytestream2_get_byte.exit148:                     ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.l = phi ptr [ %i.h, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.0.i147 = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.m = sub i64 %i.d, %.pre-phi
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %bytestream2_get_byte.exit146, label %bb.d

bb.d:                                             ; preds = %bytestream2_get_byte.exit148
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !90
  %i.p = load i8, ptr %i.l, align 1, !tbaa !75
  %i.q = zext i8 %i.p to i32
  %.pre177 = ptrtoint ptr %i.o to i64
  br label %bytestream2_get_byte.exit146

bytestream2_get_byte.exit146:                     ; preds = %bytestream2_get_byte.exit148, %bb.d
  %.pre-phi178 = phi i64 [ %.pre177, %bb.d ], [ %i.d, %bytestream2_get_byte.exit148 ]
  %i.r = phi ptr [ %i.o, %bb.d ], [ %i.b, %bytestream2_get_byte.exit148 ] ; 2 uses
  %.0.i145 = phi i32 [ %i.q, %bb.d ], [ 0, %bytestream2_get_byte.exit148 ] ; 2 uses
  %i.s = lshr i32 %.0.i145, 4
  %i.t = or disjoint i32 %i.s, %.0.i147           ; 3 uses
  %i.u = shl nuw nsw i32 %.0.i145, 8
  %i.v = and i32 %i.u, 3840                       ; 2 uses
  %i.w = sub i64 %i.d, %.pre-phi178
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bytestream2_get_byte.exit144, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_byte.exit146
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  store ptr %i.y, ptr %1, align 8, !tbaa !90
  %i.z = load i8, ptr %i.r, align 1, !tbaa !75
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.v, %i.aa
  %.pre179 = ptrtoint ptr %i.y to i64
  br label %bytestream2_get_byte.exit144

bytestream2_get_byte.exit144:                     ; preds = %bytestream2_get_byte.exit146, %bb.e
  %.pre-phi180 = phi i64 [ %.pre179, %bb.e ], [ %i.d, %bytestream2_get_byte.exit146 ]
  %i.ac = phi ptr [ %i.y, %bb.e ], [ %i.b, %bytestream2_get_byte.exit146 ] ; 2 uses
  %.0.i143 = phi i32 [ %i.ab, %bb.e ], [ %i.v, %bytestream2_get_byte.exit146 ] ; 3 uses
  %i.ad = sub i64 %i.d, %.pre-phi180
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bytestream2_get_byte.exit142, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_byte.exit144
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 3 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !90
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !75
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 4
  %.pre181 = ptrtoint ptr %i.af to i64
  br label %bytestream2_get_byte.exit142

bytestream2_get_byte.exit142:                     ; preds = %bytestream2_get_byte.exit144, %bb.f
  %.pre-phi182 = phi i64 [ %.pre181, %bb.f ], [ %i.d, %bytestream2_get_byte.exit144 ]
  %i.aj = phi ptr [ %i.af, %bb.f ], [ %i.b, %bytestream2_get_byte.exit144 ] ; 2 uses
  %.0.i141 = phi i32 [ %i.ai, %bb.f ], [ 0, %bytestream2_get_byte.exit144 ]
  %i.ak = sub i64 %i.d, %.pre-phi182
  %i.al = icmp slt i64 %i.ak, 1
  br i1 %i.al, label %bytestream2_get_byte.exit140, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_byte.exit142
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !90
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !75
  %i.ao = zext i8 %i.an to i32
  %.pre183 = ptrtoint ptr %i.am to i64
  br label %bytestream2_get_byte.exit140

bytestream2_get_byte.exit140:                     ; preds = %bytestream2_get_byte.exit142, %bb.g
  %.pre-phi184 = phi i64 [ %.pre183, %bb.g ], [ %i.d, %bytestream2_get_byte.exit142 ]
  %i.ap = phi ptr [ %i.am, %bb.g ], [ %i.b, %bytestream2_get_byte.exit142 ] ; 2 uses
  %.0.i139 = phi i32 [ %i.ao, %bb.g ], [ 0, %bytestream2_get_byte.exit142 ] ; 2 uses
  %i.aq = lshr i32 %.0.i139, 4
  %i.ar = or disjoint i32 %i.aq, %.0.i141         ; 4 uses
  %i.as = shl nuw nsw i32 %.0.i139, 8
  %i.at = and i32 %i.as, 3840                     ; 2 uses
  %i.au = sub i64 %i.d, %.pre-phi184
  %i.av = icmp slt i64 %i.au, 1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bytestream2_get_byte.exit140
  store ptr %i.b, ptr %1, align 8, !tbaa !95
  br label %bytestream2_get_byte.exit138

bb.i:                                             ; preds = %bytestream2_get_byte.exit140
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aw, ptr %1, align 8, !tbaa !90
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !75
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.at, %i.ay
  br label %bytestream2_get_byte.exit138

bytestream2_get_byte.exit138:                     ; preds = %bb.h, %bb.i
  %.0.i137 = phi i32 [ %i.at, %bb.h ], [ %i.az, %bb.i ] ; 3 uses
  %.not123 = icmp sge i32 %.0.i143, %5
  %.not124 = icmp sge i32 %.0.i137, %6
  %or.cond127.not171 = select i1 %.not123, i1 true, i1 %.not124
  %i.ba = icmp samesign ugt i32 %i.t, %.0.i143
  %or.cond128 = select i1 %or.cond127.not171, i1 true, i1 %i.ba
  %i.bb = icmp samesign ugt i32 %i.ar, %.0.i137
  %or.cond129 = select i1 %or.cond128, i1 true, i1 %i.bb
  br i1 %or.cond129, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bytestream2_get_byte.exit138
  %i.bc = zext nneg i32 %i.t to i64
  %i.bd = zext nneg i32 %i.ar to i64
  %i.be = mul nsw i64 %3, %i.bd
  %i.bf = getelementptr [2 x i8], ptr %2, i64 %i.be
  %i.bg = getelementptr [2 x i8], ptr %i.bf, i64 %i.bc
  %reass.sub = sub nuw nsw i32 %.0.i143, %i.t
  %i.bh = add nuw nsw i32 %reass.sub, 1
  %reass.sub175 = sub nuw nsw i32 %.0.i137, %i.ar
  %i.bi = add nuw nsw i32 %reass.sub175, 1
  %.not125 = icmp ne i32 %i.ar, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.1110 = phi ptr [ %2, %bb.a ], [ %i.bg, %bb.j ]
  %.1101 = phi i32 [ %5, %bb.a ], [ %i.bh, %bb.j ]
  %.198 = phi i32 [ %6, %bb.a ], [ %i.bi, %bb.j ]
  %.284 = phi i1 [ false, %bb.a ], [ %.not125, %bb.j ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = sub nsw i64 0, %3
  %i.bl = sext i32 %.1101 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.y, %bb.k
  %.2111 = phi ptr [ %.1110, %bb.k ], [ %i.dp, %bb.y ] ; 3 uses
  %.299 = phi i32 [ %.198, %bb.k ], [ %i.dq, %bb.y ]
  %.091 = phi i32 [ 0, %bb.k ], [ %.495154, %bb.y ]
  %.086 = phi i32 [ 0, %bb.k ], [ %.5156, %bb.y ]
  %.385 = phi i1 [ %.284, %bb.k ], [ true, %bb.y ]
  %i.bm = getelementptr inbounds [2 x i8], ptr %.2111, i64 %i.bl ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %bb.l
  %.192 = phi i32 [ %.091, %bb.l ], [ %.495154, %bb.x ] ; 4 uses
  %.187 = phi i32 [ %.086, %bb.l ], [ %.5156, %bb.x ] ; 2 uses
  %.078 = phi ptr [ %.2111, %bb.l ], [ %i.dn, %bb.x ] ; 8 uses
  %i.bo = add nsw i32 %.187, -1                   ; 4 uses
  %i.bp = icmp slt i32 %.187, 1
  br i1 %i.bp, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !86 ; 5 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !95    ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 4 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp slt i64 %i.bu, 1
  br i1 %i.bv, label %bytestream2_get_byte.exit136.thread, label %bytestream2_get_byte.exit136

bytestream2_get_byte.exit136:                     ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 4 uses
  store ptr %i.bw, ptr %1, align 8, !tbaa !90
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !75  ; 4 uses
  %i.by = zext i8 %i.bx to i32                    ; 3 uses
  %i.bz = icmp sgt i8 %i.bx, -1
  br i1 %i.bz, label %bytestream2_get_byte.exit136._crit_edge, label %bb.q

bytestream2_get_byte.exit136._crit_edge:          ; preds = %bytestream2_get_byte.exit136
  %.pre185 = ptrtoint ptr %i.bw to i64
  %i.ca = shl nuw nsw i32 %i.by, 8
  br label %bytestream2_get_byte.exit136.thread

bytestream2_get_byte.exit136.thread:              ; preds = %bb.n, %bytestream2_get_byte.exit136._crit_edge
  %.pre-phi186 = phi i64 [ %.pre185, %bytestream2_get_byte.exit136._crit_edge ], [ %i.bs, %bb.n ]
  %i.cb = phi ptr [ %i.bw, %bytestream2_get_byte.exit136._crit_edge ], [ %i.bq, %bb.n ] ; 2 uses
  %.0.i135150 = phi i32 [ %i.ca, %bytestream2_get_byte.exit136._crit_edge ], [ 0, %bb.n ] ; 2 uses
  %i.cc = sub i64 %i.bs, %.pre-phi186
  %i.cd = icmp slt i64 %i.cc, 1
  br i1 %i.cd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bytestream2_get_byte.exit136.thread
  store ptr %i.bq, ptr %1, align 8, !tbaa !95
  br label %.thread160

bb.p:                                             ; preds = %bytestream2_get_byte.exit136.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.ce, ptr %1, align 8, !tbaa !90
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !75
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %.0.i135150, %i.cg
  br label %.thread160

bb.q:                                             ; preds = %bytestream2_get_byte.exit136
  %i.ci = icmp samesign ugt i8 %i.bx, -127
  br i1 %i.ci, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.q
  %.not176 = icmp eq i8 %i.bx, -126
  br i1 %.not176, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bytestream2_get_byte.exit
  %i.cj = phi ptr [ %i.cu, %bytestream2_get_byte.exit ], [ %i.bw, %.preheader ] ; 3 uses
  %.in = phi i32 [ %i.ck, %bytestream2_get_byte.exit ], [ %i.by, %.preheader ] ; 2 uses
  %.288174 = phi i32 [ %i.cv, %bytestream2_get_byte.exit ], [ 0, %.preheader ] ; 2 uses
  %i.ck = add nsw i32 %.in, -1
  %i.cl = icmp sgt i32 %.288174, 8388605
  br i1 %i.cl, label %.critedge.critedge, label %bb.r

.critedge.critedge:                               ; preds = %.lr.ph
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.11) #11
  br label %.critedge

bb.r:                                             ; preds = %.lr.ph
  %i.cm = shl i32 %.288174, 8                     ; 2 uses
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.bs, %i.cn
  %i.cp = icmp slt i64 %i.co, 1
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.bq, ptr %1, align 8, !tbaa !95
  br label %bytestream2_get_byte.exit

bb.t:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  store ptr %i.cq, ptr %1, align 8, !tbaa !90
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !75
  %i.cs = zext i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cm, %i.cs
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.s, %bb.t
  %i.cu = phi ptr [ %i.bq, %bb.s ], [ %i.cq, %bb.t ]
  %.0.i = phi i32 [ %i.cm, %bb.s ], [ %i.ct, %bb.t ]
  %i.cv = add i32 %.0.i, 1                        ; 2 uses
  %i.cw = icmp samesign ugt i32 %.in, 131
  br i1 %i.cw, label %.lr.ph, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %bytestream2_get_byte.exit, %.preheader
  %.288.lcssa = phi i32 [ 0, %.preheader ], [ %i.cv, %bytestream2_get_byte.exit ] ; 3 uses
  %i.cx = icmp eq i32 %.192, -2
  br i1 %i.cx, label %.thread.thread, label %bb.v

.thread.thread:                                   ; preds = %._crit_edge
  %i.cy = zext i32 %.288.lcssa to i64
  %i.cz = ptrtoint ptr %.078 to i64
  %i.da = sub i64 %i.bn, %i.cz
  %i.db = ashr exact i64 %i.da, 1
  %i.dc = tail call i64 @llvm.smin.i64(i64 %i.db, i64 %i.cy) ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = sub nsw i32 %.288.lcssa, %i.dd
  %sext = shl i64 %i.dc, 32
  %i.df = ashr exact i64 %sext, 31
  %i.dg = getelementptr inbounds i8, ptr %.078, i64 %i.df
  br label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.dh = sub nsw i32 127, %i.by
  br label %.thread

bb.v:                                             ; preds = %._crit_edge, %bb.m
  %.5 = phi i32 [ %i.bo, %bb.m ], [ %.288.lcssa, %._crit_edge ] ; 2 uses
  %i.di = icmp sgt i32 %.192, -1
  br i1 %i.di, label %.thread160, label %.thread

.thread160:                                       ; preds = %bb.o, %bb.p, %bb.v
  %.5165 = phi i32 [ %.5, %bb.v ], [ %i.bo, %bb.p ], [ %i.bo, %bb.o ]
  %.495164 = phi i32 [ %.192, %bb.v ], [ %i.ch, %bb.p ], [ %.0.i135150, %bb.o ] ; 2 uses
  %i.dj = trunc nuw nsw i32 %.495164 to i16
  store i16 %i.dj, ptr %.078, align 2, !tbaa !137
  br label %bb.x

.thread:                                          ; preds = %bb.u, %bb.v
  %.5157 = phi i32 [ %.5, %bb.v ], [ %i.bo, %bb.u ] ; 2 uses
  %.495155 = phi i32 [ %.192, %bb.v ], [ %i.dh, %bb.u ] ; 2 uses
  %i.dk = icmp eq i32 %.495155, -1
  %or.cond = select i1 %i.dk, i1 %.385, i1 false
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread
  %i.dl = getelementptr inbounds [2 x i8], ptr %.078, i64 %i.bk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !137
  store i16 %i.dm, ptr %.078, align 2, !tbaa !137
  br label %bb.x

bb.x:                                             ; preds = %.thread.thread, %.thread160, %bb.w, %.thread
  %.3159 = phi ptr [ %.078, %.thread160 ], [ %.078, %bb.w ], [ %.078, %.thread ], [ %i.dg, %.thread.thread ]
  %.5156 = phi i32 [ %.5165, %.thread160 ], [ %.5157, %bb.w ], [ %.5157, %.thread ], [ %i.de, %.thread.thread ] ; 2 uses
  %.495154 = phi i32 [ %.495164, %.thread160 ], [ -1, %bb.w ], [ %.495155, %.thread ], [ -2, %.thread.thread ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.3159, i64 2 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.bm
  br i1 %i.do, label %bb.m, label %bb.y, !llvm.loop !138

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds [2 x i8], ptr %.2111, i64 %3
  %i.dq = add nsw i32 %.299, -1                   ; 2 uses
  %.not126 = icmp eq i32 %i.dq, 0
  br i1 %.not126, label %.critedge, label %bb.l, !llvm.loop !139

.critedge:                                        ; preds = %bb.y, %.critedge.critedge, %bytestream2_get_byte.exit138
  %.7 = phi i32 [ -1094995529, %.critedge.critedge ], [ -1094995529, %bytestream2_get_byte.exit138 ], [ 0, %bb.y ]
  ret i32 %.7
}

declare void @ff_mss12_slicecontext_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_rle(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 2) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef %9, i32 noundef %10) unnamed_addr #1 {
bb.a:
  %i.a = alloca [270 x i8], align 16              ; 6 uses
  %i.b = alloca [270 x i32], align 16             ; 5 uses
  %11 = alloca %struct.VLC, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(270) %i.a, i8 0, i64 270, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.c = sub nuw nsw i32 270, %6                  ; 3 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !76   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74   ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !72     ; 4 uses
  %i.i = lshr i32 %i.e, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1, !tbaa !75
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = and i32 %i.e, 7
  %i.o = shl i32 %i.m, %i.n
  %i.p = lshr i32 %i.o, 20                        ; 3 uses
  %i.q = add i32 %i.e, 12
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.q) ; 4 uses
  store i32 %i.r, ptr %i.d, align 8, !tbaa !76
  %i.s = lshr i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 1, !tbaa !75
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = and i32 %i.r, 7
  %i.y = shl i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 20                        ; 3 uses
  %i.aa = add i32 %i.r, 12
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.aa) ; 4 uses
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !76
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !75
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = and i32 %i.ab, 7
  %i.ai = shl i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.ai, 20
  %i.ak = add i32 %i.ab, 12
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.ak) ; 4 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !76
  %i.am = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.an = lshr i32 %i.al, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !75
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = and i32 %i.al, 7
  %i.at = shl i32 %i.ar, %i.as
  %i.au = lshr i32 %i.at, 20
  %i.av = add i32 %i.al, 12
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.av)
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !76
  %i.ax = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.ay = add nuw nsw i32 %i.am, %i.p
  %i.az = icmp sgt i32 %i.ay, %9
  %i.ba = add nuw nsw i32 %i.ax, %i.z
  %i.bb = icmp sgt i32 %i.ba, %10
  %or.cond224 = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond224, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = zext nneg i32 %i.z to i64               ; 2 uses
  %i.bd = mul nsw i64 %2, %i.bc
  %i.be = zext nneg i32 %i.p to i64
  %i.bf = getelementptr i8, ptr %1, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.be
  %i.bh = mul nsw i64 %4, %i.bc
  %i.bi = mul nuw nsw i32 %i.p, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %3, i64 %i.bh
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %.not213 = icmp ne i32 %i.z, 0
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.not214 = icmp eq i32 %8, 0
  br i1 %.not214, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = sext i32 %7 to i64                      ; 2 uses
  %i.bn = mul nsw i64 %2, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = mul nsw i64 %4, %i.bm
  %i.bq = getelementptr inbounds i8, ptr %3, i64 %i.bp
  %i.br = sub nsw i32 %10, %7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.1196 = phi ptr [ %i.bq, %bb.e ], [ %i.bl, %bb.c ], [ %3, %bb.d ]
  %.1193 = phi ptr [ %i.bo, %bb.e ], [ %i.bg, %bb.c ], [ %1, %bb.d ]
  %.1185 = phi i32 [ %9, %bb.e ], [ %i.am, %bb.c ], [ %9, %bb.d ]
  %.1182 = phi i32 [ %i.br, %bb.e ], [ %i.ax, %bb.c ], [ %7, %bb.d ]
  %.2154 = phi i1 [ true, %bb.e ], [ %.not213, %bb.c ], [ false, %bb.d ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = sub nuw nsw i32 204, %6
  %.pre.pre = load i32, ptr %i.bs, align 8, !tbaa !76
  %.pre284.pre = load i32, ptr %i.bt, align 8, !tbaa !74 ; 3 uses
  %.pre285.pre = load ptr, ptr %0, align 8, !tbaa !72 ; 3 uses
  %invariant.op = sub i32 14, %6
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  %.pre = phi i32 [ %.pre.pre, %bb.f ], [ %i.dz, %bb.n ] ; 2 uses
  %.0176 = phi i32 [ 0, %bb.f ], [ %i.ec, %bb.n ] ; 4 uses
  %.0173 = phi i32 [ 0, %bb.f ], [ %.1174.lcssa, %bb.n ] ; 2 uses
  %.0168 = phi i32 [ 0, %bb.f ], [ %i.dd, %bb.n ] ; 2 uses
  %.0166 = phi i32 [ 0, %bb.f ], [ %i.dx, %bb.n ] ; 3 uses
  %.not215265 = icmp eq i32 %.0166, 0
  br i1 %.not215265, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bv = trunc nuw nsw i32 %.0176 to i8
  %i.bw = add i32 %.0173, %.0166
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %spec.select.i270 = phi i32 [ %.pre, %.lr.ph ], [ %spec.select.i269, %bb.m ] ; 3 uses
  %.in = phi i32 [ %.0166, %.lr.ph ], [ %i.bx, %bb.m ]
  %.1169267 = phi i32 [ %.0168, %.lr.ph ], [ %i.da, %bb.m ] ; 2 uses
  %i.bx = add nsw i32 %.in, -1                    ; 2 uses
  %i.by = lshr i32 %spec.select.i270, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre285.pre, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 1, !tbaa !75
  %i.cc = tail call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = and i32 %spec.select.i270, 7
  %i.ce = shl i32 %i.cc, %i.cd                    ; 2 uses
  %i.cf = lshr i32 %i.ce, 24                      ; 4 uses
  %i.cg = add i32 %spec.select.i270, 8
  %i.ch = tail call i32 @llvm.umin.i32(i32 %.pre284.pre, i32 %i.cg) ; 7 uses
  store i32 %i.ch, ptr %i.bs, align 8, !tbaa !76
  %.not221 = icmp samesign ult i32 %i.cf, %i.bu
  br i1 %.not221, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.reass = add i32 %i.cf, %invariant.op
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ci = icmp ugt i32 %i.ce, -1107296257
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = lshr i32 %i.ch, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre285.pre, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !75
  %i.cn = icmp slt i32 %i.ch, %.pre284.pre
  %i.co = zext i1 %i.cn to i32
  %spec.select.i = add i32 %i.ch, %i.co           ; 2 uses
  %i.cp = zext i8 %i.cm to i32
  %i.cq = and i32 %i.ch, 7
  %i.cr = shl nuw nsw i32 %i.cp, %i.cq
  %i.cs = lshr i32 %i.cr, 7
  store i32 %spec.select.i, ptr %i.bs, align 8, !tbaa !76
  %i.ct = and i32 %i.cs, 1
  %i.cu = shl nuw nsw i32 %i.cf, 1
  %i.cv = add nsw i32 %i.cu, -190
  %i.cw = or disjoint i32 %i.cv, %i.ct
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %spec.select.i269 = phi i32 [ %i.ch, %bb.i ], [ %spec.select.i, %bb.k ], [ %i.ch, %bb.j ] ; 2 uses
  %.0149 = phi i32 [ %.reass.reass, %bb.i ], [ %i.cw, %bb.k ], [ %i.cf, %bb.j ]
  %i.cx = sext i32 %.0149 to i64                  ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.a, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !75
  %.not222 = icmp eq i8 %i.cz, 0
  br i1 %.not222, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  store i8 %i.bv, ptr %i.cy, align 1, !tbaa !75
  %i.da = add nsw i32 %.1169267, 1                ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cx
  store i32 %.1169267, ptr %i.db, align 4, !tbaa !105
  %.not215 = icmp eq i32 %i.bx, 0
  br i1 %.not215, label %._crit_edge, label %bb.h, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.m, %bb.g
  %i.dc = phi i32 [ %.pre, %bb.g ], [ %spec.select.i269, %bb.m ] ; 3 uses
  %.1174.lcssa = phi i32 [ %.0173, %bb.g ], [ %i.bw, %bb.m ] ; 2 uses
  %.1169.lcssa = phi i32 [ %.0168, %bb.g ], [ %i.da, %bb.m ]
  %i.dd = shl i32 %.1169.lcssa, 1                 ; 3 uses
  %i.de = shl nuw i32 2, %.0176
  %i.df = sub nsw i32 %i.de, %i.dd                ; 3 uses
  %i.dg = shl i32 %i.df, 1                        ; 3 uses
  %.not.i.i = icmp ult i32 %i.dg, 65536           ; 2 uses
  %i.dh = lshr i32 %i.dg, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.dg, i32 %i.dh ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.di = lshr i32 %spec.select.i.i, 8
  %i.dj = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.di
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.dj
  %i.dk = zext nneg i32 %.110.i.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !75
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nuw nsw i32 %.1.i.i, %i.dn          ; 2 uses
  %i.dp = lshr i32 %i.dc, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre285.pre, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !75
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %i.ds)
  %i.du = and i32 %i.dc, 7
  %i.dv = shl i32 %i.dt, %i.du
  %i.dw = sub nsw i32 32, %i.do
  %i.dx = lshr i32 %i.dv, %i.dw                   ; 3 uses
  %i.dy = add i32 %i.do, %i.dc
  %i.dz = tail call i32 @llvm.umin.i32(i32 %.pre284.pre, i32 %i.dy) ; 2 uses
  store i32 %i.dz, ptr %i.bs, align 8, !tbaa !76
  %i.ea = icmp samesign ugt i32 %.0176, 21
  %i.eb = icmp sgt i32 %i.dx, %i.df
  %or.cond227 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond227, label %.critedge, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ec = add nuw nsw i32 %.0176, 1               ; 2 uses
  %.not216 = icmp eq i32 %i.dx, %i.df
  br i1 %.not216, label %bb.o, label %bb.g, !llvm.loop !141

bb.o:                                             ; preds = %bb.n
  %.neg = sub i32 %.1174.lcssa, %i.c
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.1177 = phi i32 [ %i.ec, %bb.o ], [ %i.ei, %bb.p ] ; 3 uses
  %.3171 = phi i32 [ %i.dd, %bb.o ], [ %i.ee, %bb.p ] ; 2 uses
  %i.ed = shl i32 2, %.1177
  %i.ee = shl i32 %.3171, 1                       ; 2 uses
  %i.ef = sub nsw i32 %i.ed, %i.ee
  %i.eg = add i32 %i.ef, %.neg                    ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  %i.ei = add nuw nsw i32 %.1177, 1
  br i1 %i.eh, label %bb.p, label %.preheader252.preheader, !llvm.loop !142

.preheader252.preheader:                          ; preds = %bb.p
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.preheader252

.preheader252:                                    ; preds = %.preheader252.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader252.preheader ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.0164273 = phi i32 [ %i.eg, %.preheader252.preheader ], [ %.1165, %bb.r ] ; 3 uses
  %.4172272 = phi i32 [ %.3171, %.preheader252.preheader ], [ %.6, %bb.r ] ; 2 uses
  %.2178271 = phi i32 [ %.1177, %.preheader252.preheader ], [ %.4180, %bb.r ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !75
  %.not220 = icmp eq i8 %i.ek, 0
  br i1 %.not220, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader252
  %i.el = add nsw i32 %.0164273, -1
  %i.em = icmp eq i32 %.0164273, 0
  %i.en = zext i1 %i.em to i32                    ; 2 uses
  %.3179 = add nsw i32 %.2178271, %i.en           ; 2 uses
  %.5 = shl i32 %.4172272, %i.en                  ; 2 uses
  %i.eo = trunc i32 %.3179 to i8
  store i8 %i.eo, ptr %i.ej, align 1, !tbaa !75
  %i.ep = add nsw i32 %.5, 1
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.5, ptr %i.eq, align 4, !tbaa !105
  br label %bb.r

bb.r:                                             ; preds = %.preheader252, %bb.q
  %.4180 = phi i32 [ %.2178271, %.preheader252 ], [ %.3179, %bb.q ] ; 2 uses
  %.6 = phi i32 [ %.4172272, %.preheader252 ], [ %i.ep, %bb.q ] ; 2 uses
  %.1165 = phi i32 [ %.0164273, %.preheader252 ], [ %i.el, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.s, label %.preheader252, !llvm.loop !143

bb.s:                                             ; preds = %bb.r
  %i.er = shl nuw i32 1, %.4180
  %.not217 = icmp eq i32 %.6, %i.er
  br i1 %.not217, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.es = call i32 @ff_vlc_init_sparse(ptr noundef nonnull %11, i32 noundef 9, i32 noundef %i.c, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 4, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.t
  %i.eu = sext i32 %.1185 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ew = sub i64 0, %2
  %i.ex = sub i64 0, %4
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.ai
  %.2197 = phi ptr [ %i.jv, %bb.ai ], [ %.1196, %.preheader ] ; 2 uses
  %.2194 = phi ptr [ %i.ju, %bb.ai ], [ %.1193, %.preheader ] ; 3 uses
  %.2183 = phi i32 [ %i.jw, %bb.ai ], [ %.1182, %.preheader ]
  %.0159 = phi i32 [ %.3162237, %bb.ai ], [ 0, %.preheader ]
  %.0155 = phi i32 [ %.4239, %bb.ai ], [ 0, %.preheader ]
  %.3 = phi i1 [ true, %bb.ai ], [ %.2154, %.preheader ]
  %i.ey = getelementptr inbounds i8, ptr %.2194, i64 %i.eu ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.ah, %bb.u
  %.1160 = phi i32 [ %.0159, %bb.u ], [ %.3162237, %bb.ah ] ; 3 uses
  %.1156 = phi i32 [ %.0155, %bb.u ], [ %.4239, %bb.ah ] ; 2 uses
  %.0146 = phi ptr [ %.2194, %bb.u ], [ %i.js, %bb.ah ] ; 8 uses
  %.0145 = phi ptr [ %.2197, %bb.u ], [ %i.jr, %bb.ah ] ; 9 uses
  %i.fa = add nsw i32 %.1156, -1                  ; 3 uses
  %i.fb = icmp slt i32 %.1156, 1
  br i1 %i.fb, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !144 ; 3 uses
  %i.fd = load i32, ptr %i.bs, align 8, !tbaa !76 ; 4 uses
  %i.fe = load i32, ptr %i.bt, align 8, !tbaa !74 ; 5 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !72    ; 5 uses
  %i.fg = lshr i32 %i.fd, 3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 1, !tbaa !75
  %i.fk = call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fl = and i32 %i.fd, 7
  %i.fm = shl i32 %i.fk, %i.fl
  %i.fn = lshr i32 %i.fm, 23
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fo ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !75
  %i.fr = sext i16 %i.fq to i32                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !75 ; 2 uses
  %i.fu = sext i16 %i.ft to i32                   ; 3 uses
  %i.fv = icmp slt i16 %i.ft, 0
  br i1 %i.fv, label %bb.x, label %get_vlc2.exit

bb.x:                                             ; preds = %bb.w
  %i.fw = add i32 %i.fd, 9
  %i.fx = call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.fw) ; 4 uses
  %i.fy = lshr i32 %i.fx, 3
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 1, !tbaa !75
  %i.gc = call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = and i32 %i.fx, 7
  %i.ge = shl i32 %i.gc, %i.gd
  %i.gf = add nsw i32 %i.fu, 32
  %i.gg = lshr i32 %i.ge, %i.gf
  %i.gh = add i32 %i.gg, %i.fr
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.gi ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !75
  %i.gl = sext i16 %i.gk to i32                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !75 ; 2 uses
  %i.go = sext i16 %i.gn to i32                   ; 2 uses
  %i.gp = icmp slt i16 %i.gn, 0
  br i1 %i.gp, label %bb.y, label %get_vlc2.exit

bb.y:                                             ; preds = %bb.x
  %i.gq = sub i32 %i.fx, %i.fu
  %i.gr = call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.gq) ; 3 uses
  %i.gs = lshr i32 %i.gr, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 1, !tbaa !75
  %i.gw = call i32 @llvm.bswap.i32(i32 %i.gv)
  %i.gx = and i32 %i.gr, 7
  %i.gy = shl i32 %i.gw, %i.gx
  %i.gz = add nsw i32 %i.go, 32
  %i.ha = lshr i32 %i.gy, %i.gz
  %i.hb = add i32 %i.ha, %i.gl
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.hc ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !75
  %i.hf = sext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !75
  %i.hi = sext i16 %i.hh to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.w, %bb.x, %bb.y
  %.167.i = phi i32 [ %i.fr, %bb.w ], [ %i.hf, %bb.y ], [ %i.gl, %bb.x ] ; 5 uses
  %.165.i = phi i32 [ %i.fd, %bb.w ], [ %i.gr, %bb.y ], [ %i.fx, %bb.x ]
  %.1.i = phi i32 [ %i.fu, %bb.w ], [ %i.hi, %bb.y ], [ %i.go, %bb.x ]
  %i.hj = add i32 %.1.i, %.165.i
  %i.hk = call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.hj) ; 5 uses
  store i32 %i.hk, ptr %i.bs, align 8, !tbaa !76
  %i.hl = icmp slt i32 %.167.i, 256
  br i1 %i.hl, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %get_vlc2.exit
  %i.hm = icmp samesign ult i32 %.167.i, 268
  br i1 %i.hm, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.hn = add nsw i32 %.167.i, -256               ; 4 uses
  switch i32 %i.hn, label %bb.ab [
    i32 11, label %.thread
    i32 0, label %bb.ac
  ]

.thread:                                          ; preds = %bb.aa
  %i.ho = lshr i32 %i.hk, 3
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 1, !tbaa !75
  %i.hs = call i32 @llvm.bswap.i32(i32 %i.hr)
  %i.ht = and i32 %i.hk, 7
  %i.hu = shl i32 %i.hs, %i.ht
  %i.hv = lshr i32 %i.hu, 28
  %i.hw = add i32 %i.hk, 4
  %i.hx = call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.hw) ; 2 uses
  store i32 %i.hx, ptr %i.bs, align 8, !tbaa !76
  %i.hy = add nuw nsw i32 %i.hv, 10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread
  %i.hz = phi i32 [ %i.hx, %.thread ], [ %i.hk, %bb.aa ] ; 3 uses
  %.0230 = phi i32 [ %i.hy, %.thread ], [ %i.hn, %bb.aa ] ; 3 uses
  %i.ia = lshr i32 %i.hz, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 1, !tbaa !75
  %i.ie = call i32 @llvm.bswap.i32(i32 %i.id)
  %i.if = and i32 %i.hz, 7
  %i.ig = shl i32 %i.ie, %i.if
  %i.ih = sub nuw nsw i32 32, %.0230
  %i.ii = lshr i32 %i.ig, %i.ih
  %i.ij = add i32 %i.hz, %.0230
  %i.ik = call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.ij)
  store i32 %i.ik, ptr %i.bs, align 8, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0231 = phi i32 [ %.0230, %bb.ab ], [ %i.hn, %bb.aa ]
  %.2157 = phi i32 [ %i.ii, %bb.ab ], [ %i.hn, %bb.aa ]
  %notmask = shl nsw i32 -1, %.0231
  %i.il = xor i32 %notmask, -1
  %i.im = add nuw nsw i32 %.2157, %i.il           ; 3 uses
  %i.in = icmp eq i32 %.1160, -2
  br i1 %i.in, label %.thread232.thread, label %bb.ae

.thread232.thread:                                ; preds = %bb.ac
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = ptrtoint ptr %.0146 to i64
  %i.iq = sub i64 %i.ez, %i.ip
  %i.ir = call i64 @llvm.smin.i64(i64 %i.iq, i64 %i.io) ; 3 uses
  %i.is = trunc i64 %i.ir to i32
  %i.it = sub nsw i32 %i.im, %i.is
  %sext = shl i64 %i.ir, 32
  %i.iu = ashr exact i64 %sext, 32
  %i.iv = getelementptr inbounds i8, ptr %.0146, i64 %i.iu
  %sext250 = mul i64 %i.ir, 12884901888
  %i.iw = ashr exact i64 %sext250, 32
  %i.ix = getelementptr inbounds i8, ptr %.0145, i64 %i.iw
  br label %bb.ah

bb.ad:                                            ; preds = %bb.z
  %i.iy = sub nsw i32 267, %.167.i
  br label %.thread232

bb.ae:                                            ; preds = %bb.ac, %get_vlc2.exit, %bb.v
  %.3162 = phi i32 [ %.1160, %bb.v ], [ %.1160, %bb.ac ], [ %.167.i, %get_vlc2.exit ] ; 5 uses
  %.4 = phi i32 [ %i.fa, %bb.v ], [ %i.im, %bb.ac ], [ %i.fa, %get_vlc2.exit ] ; 2 uses
  %i.iz = icmp sgt i32 %.3162, -1
  br i1 %i.iz, label %bb.af, label %.thread232

bb.af:                                            ; preds = %bb.ae
  %i.ja = trunc nuw i32 %.3162 to i8
  store i8 %i.ja, ptr %.0146, align 1, !tbaa !75
  %i.jb = zext nneg i32 %.3162 to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jb ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !105
  %i.je = trunc i32 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %.0145, i64 2
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !75
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !105
  %i.jh = lshr i32 %i.jg, 8
  %i.ji = trunc i32 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %.0145, i64 1
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !75
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !105
  %i.jl = lshr i32 %i.jk, 16
  %i.jm = trunc i32 %i.jl to i8
  store i8 %i.jm, ptr %.0145, align 1, !tbaa !75
  br label %bb.ah

.thread232:                                       ; preds = %bb.ad, %bb.ae
  %.4240 = phi i32 [ %.4, %bb.ae ], [ %i.fa, %bb.ad ] ; 2 uses
  %.3162238 = phi i32 [ %.3162, %bb.ae ], [ %i.iy, %bb.ad ] ; 2 uses
  %i.jn = icmp eq i32 %.3162238, -1
  %or.cond = and i1 %.3, %i.jn
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread232
  %i.jo = getelementptr inbounds i8, ptr %.0146, i64 %i.ew
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !75
  store i8 %i.jp, ptr %.0146, align 1, !tbaa !75
  %i.jq = getelementptr inbounds i8, ptr %.0145, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0145, ptr noundef nonnull align 1 dereferenceable(3) %i.jq, i64 3, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %.thread232.thread, %.thread232, %bb.ag, %bb.af
  %.2243 = phi ptr [ %.0145, %.thread232 ], [ %.0145, %bb.ag ], [ %.0145, %bb.af ], [ %i.ix, %.thread232.thread ]
  %.2148241 = phi ptr [ %.0146, %.thread232 ], [ %.0146, %bb.ag ], [ %.0146, %bb.af ], [ %i.iv, %.thread232.thread ]
  %.4239 = phi i32 [ %.4240, %.thread232 ], [ %.4240, %bb.ag ], [ %.4, %bb.af ], [ %i.it, %.thread232.thread ] ; 2 uses
  %.3162237 = phi i32 [ %.3162238, %.thread232 ], [ -1, %bb.ag ], [ %.3162, %bb.af ], [ -2, %.thread232.thread ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.2243, i64 3
  %i.js = getelementptr inbounds nuw i8, ptr %.2148241, i64 1 ; 2 uses
  %i.jt = icmp ult ptr %i.js, %i.ey
  br i1 %i.jt, label %bb.v, label %bb.ai, !llvm.loop !146

bb.ai:                                            ; preds = %bb.ah
  %i.ju = getelementptr inbounds i8, ptr %.2194, i64 %2
  %i.jv = getelementptr inbounds i8, ptr %.2197, i64 %4
  %i.jw = add nsw i32 %.2183, -1                  ; 2 uses
  %.not219 = icmp eq i32 %i.jw, 0
  br i1 %.not219, label %bb.aj, label %bb.u, !llvm.loop !147

bb.aj:                                            ; preds = %bb.ai
  call void @ff_vlc_free(ptr noundef nonnull %11) #11
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %bb.l, %bb.b, %bb.t, %bb.s, %bb.aj
  %.5191 = phi i32 [ %i.es, %bb.t ], [ -1094995529, %bb.b ], [ -1094995529, %bb.l ], [ -1094995529, %bb.s ], [ 0, %bb.aj ], [ -1094995529, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.5191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @calc_draw_region(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !120  ; 3 uses
  %.not = icmp sgt i32 %i.b, %i.d                 ; 2 uses
  br i1 %.not, label %._crit_edge69, label %bb.b

._crit_edge69:                                    ; preds = %bb.a
  %.pre70 = load i32, ptr %1, align 4, !tbaa !118
  %.pre73 = load i32, ptr %0, align 4, !tbaa !118
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !122
  %.not57 = icmp slt i32 %i.f, %i.h
  %.pre72 = load i32, ptr %1, align 4, !tbaa !118 ; 3 uses
  %.pre74 = load i32, ptr %0, align 4, !tbaa !118 ; 4 uses
  br i1 %.not57, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not58 = icmp sgt i32 %.pre72, %.pre74
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !121 ; 3 uses
  %.not59 = icmp slt i32 %.pre, %.pre74
  %or.cond = select i1 %.not58, i1 true, i1 %.not59
  br i1 %or.cond, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !121
  %. = tail call i32 @llvm.smin.i32(i32 %.pre, i32 %i.j) ; 2 uses
  store i32 %., ptr %0, align 4, !tbaa !118
  %.pre71.pre = load i32, ptr %1, align 4, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.pre71 = phi i32 [ %.pre72, %bb.c ], [ %.pre71.pre, %bb.d ] ; 7 uses
  %i.k = phi i32 [ %.pre74, %bb.c ], [ %., %bb.d ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !121  ; 2 uses
  %.not60 = icmp slt i32 %.pre, %i.m
  br i1 %.not60, label %bb.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %.not61 = icmp slt i32 %.pre71, %i.k
  br i1 %.not61, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp slt i32 %.pre71, %i.m
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 %.pre71, ptr %i.l, align 4, !tbaa !121
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store i32 %i.k, ptr %i.l, align 4, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge69, %._crit_edge, %bb.f, %bb.g, %bb.h, %bb.b
  %i.o = phi i32 [ %.pre73, %._crit_edge69 ], [ %i.k, %._crit_edge ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ], [ %.pre74, %bb.b ]
  %i.p = phi i32 [ %.pre70, %._crit_edge69 ], [ %.pre71, %._crit_edge ], [ %.pre71, %bb.f ], [ %.pre71, %bb.g ], [ %.pre71, %bb.h ], [ %.pre72, %bb.b ]
  %.not62 = icmp sgt i32 %i.p, %i.o
  br i1 %.not62, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !121
  %.not63 = icmp slt i32 %i.r, %i.t
  br i1 %.not63, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !122 ; 3 uses
  %.not65 = icmp slt i32 %.pre77, %i.d
  %or.cond88 = select i1 %.not, i1 true, i1 %.not65
  br i1 %or.cond88, label %._crit_edge75, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !122
  %.68 = tail call i32 @llvm.smin.i32(i32 %.pre77, i32 %i.v) ; 2 uses
  store i32 %.68, ptr %i.c, align 4, !tbaa !120
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %bb.k, %bb.l
  %i.w = phi i32 [ %i.d, %bb.k ], [ %.68, %bb.l ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !122  ; 2 uses
  %.not66 = icmp slt i32 %.pre77, %i.y
  br i1 %.not66, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge75
  %i.z = load i32, ptr %i.a, align 4, !tbaa !120  ; 3 uses
  %.not67 = icmp slt i32 %i.z, %i.w
  br i1 %.not67, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp slt i32 %i.z, %i.y
  br i1 %i.aa, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.sink = phi i32 [ %i.z, %bb.n ], [ %i.w, %bb.m ]
  store i32 %.sink, ptr %i.x, align 4, !tbaa !122
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %._crit_edge75, %bb.n, %bb.j, %bb.i
  ret void
}

declare i32 @ff_mss12_decode_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @decode_wmv9(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 1, 2147483645) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 42 uses
  tail call void @ff_mpeg_flush(ptr noundef %0) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4384 ; 2 uses
  %or.cond.i = icmp samesign ugt i32 %2, 268435455
  %i.d = shl nuw nsw i32 %2, 3
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.e, 2147483135    ; 2 uses
  %i.f = icmp ne ptr %1, null
  %or.cond3.i.i = and i1 %i.f, %or.cond.i.i       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %1, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.e, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.c, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4396
  store i32 %.013.i.i, ptr %i.g, align 4, !tbaa !73
  %i.h = add nuw nsw i32 %.013.i.i, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4400
  store i32 %i.h, ptr %i.i, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4392
  store i32 0, ptr %i.j, align 8, !tbaa !76
  br i1 %or.cond3.i.i, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.l = load i32, ptr %i.k, align 8, !tbaa !148
  %i.m = icmp slt i32 %i.l, 48
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6056
  store i32 %i.n, ptr %i.o, align 8, !tbaa !149
  %i.p = tail call i32 @ff_vc1_parse_frame_header(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.s, i32 noundef 16, ptr noundef nonnull @.str.12) #11
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1280
  %i.u = load i32, ptr %i.t, align 16, !tbaa !150
  %.not = icmp eq i32 %i.u, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !129
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.w, i32 noundef 16, ptr noundef nonnull @.str.13) #11
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !68
  %i.y = tail call i32 @ff_mpv_frame_start(ptr noundef nonnull %i.b, ptr noundef nonnull %0) #11 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ab, i32 noundef 16, ptr noundef nonnull @.str.14) #11
  store i32 2, ptr %i.x, align 8, !tbaa !68
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  tail call void @ff_mpeg_er_frame_start(ptr noundef nonnull %i.b) #11
  %i.ac = add nsw i32 %5, 15
  %i.ad = ashr i32 %i.ac, 4                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 10204 ; 3 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !151
  %i.af = add nsw i32 %6, 15
  %i.ag = ashr i32 %i.af, 4                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 500 ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !152
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 6501 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !153 ; 2 uses
  %i.ak = and i8 %i.aj, 1
  %.not104 = icmp eq i8 %i.ak, 0
  br i1 %.not104, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = add nsw i32 %i.ad, 1
  %i.am = ashr i32 %i.al, 1
  store i32 %i.am, ptr %i.ae, align 4, !tbaa !151
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = and i8 %i.aj, 2
  %.not105 = icmp eq i8 %i.an, 0
  br i1 %.not105, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.ag, 1
  %i.ap = ashr i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ah, align 4, !tbaa !152
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ff_vc1_decode_blocks(ptr noundef nonnull %i.b) #11
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !151 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 388
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !154 ; 2 uses
  %i.at = icmp eq i32 %i.aq, %i.as
  %.pre = load i32, ptr %i.ah, align 4, !tbaa !152 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.av = load i32, ptr %i.au, align 8, !tbaa !155 ; 2 uses
  %i.aw = icmp eq i32 %.pre, %i.av
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 3912
  tail call void @ff_er_frame_end(ptr noundef nonnull %i.ax, ptr noundef null) #11
  br label %bb.n

._crit_edge:                                      ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !129
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.az, i32 noundef 24, ptr noundef nonnull @.str.15, i32 noundef %i.aq, i32 noundef %.pre, i32 noundef %i.as, i32 noundef %i.av) #11
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  tail call void @ff_mpv_frame_end(ptr noundef nonnull %i.b) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 1008 ; 3 uses
  %i.bb = load i8, ptr %i.ai, align 1, !tbaa !153
  switch i8 %i.bb, label %bb.p [
    i8 3, label %bb.o
    i8 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 12160 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !156
  %i.be = load ptr, ptr %i.ba, align 16, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !157
  tail call void %i.bd(ptr noundef %i.be, i64 noundef %i.bg, i32 noundef %5, i32 noundef %6) #11
  %i.bh = load ptr, ptr %i.bc, align 16, !tbaa !156
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !90
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.bl = load i64, ptr %i.bk, align 16, !tbaa !157
  %i.bm = add nsw i32 %5, 1
  %i.bn = ashr i32 %i.bm, 1                       ; 2 uses
  %i.bo = add nsw i32 %6, 1
  %i.bp = ashr i32 %i.bo, 1                       ; 2 uses
  tail call void %i.bh(ptr noundef %i.bj, i64 noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bp) #11
  %i.bq = load ptr, ptr %i.bc, align 16, !tbaa !156
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !157
  tail call void %i.bq(ptr noundef %i.bs, i64 noundef %i.bu, i32 noundef %i.bn, i32 noundef %i.bp) #11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !129
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.bw, ptr noundef nonnull @.str.16) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 1032 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.bz = load i64, ptr %i.by, align 16, !tbaa !157 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef 444) #11
  tail call void @abort() #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not107 = icmp eq i32 %7, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 12080
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !112
  %i.cf = sext i32 %4 to i64                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 12096
  %i.ch = load i64, ptr %i.cg, align 16, !tbaa !113 ; 3 uses
  %i.ci = mul nsw i64 %i.ch, %i.cf
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 %i.ci
  %i.ck = mul nsw i32 %3, 3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 %i.cl ; 2 uses
  br i1 %.not107, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 12144
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !158
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 12040
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !65
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 12056
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !63 ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.cf
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  %i.cv = sext i32 %3 to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ba, align 16, !tbaa !90
  %i.cy = load i64, ptr %i.bx, align 8, !tbaa !157
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !90
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !90
  tail call void %i.co(ptr noundef %i.cm, i64 noundef %i.ch, i32 noundef %7, ptr noundef %i.cw, i64 noundef %i.cs, ptr noundef %i.cx, i64 noundef %i.cy, ptr noundef %i.da, ptr noundef %i.dc, i64 noundef %i.bz, i32 noundef %5, i32 noundef %6) #11
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 12136
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !159
  %i.df = load ptr, ptr %i.ba, align 16, !tbaa !90
  %i.dg = load i64, ptr %i.bx, align 8, !tbaa !157
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !90
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.dk = load ptr, ptr %i.dj, align 16, !tbaa !90
  tail call void %i.de(ptr noundef %i.cm, i64 noundef %i.ch, ptr noundef %i.df, i64 noundef %i.dg, ptr noundef %i.di, ptr noundef %i.dk, i64 noundef %i.bz, i32 noundef %5, i32 noundef %6) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 2, ptr %i.x, align 8, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.v ], [ -1094995529, %bb.c ], [ -1094995529, %bb.e ], [ %i.y, %bb.g ], [ -1094995529, %bb.a ]
  ret i32 %.0
}

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 256) i32 @arith2_get_model_sym(ptr nofree noundef captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = load i32, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = add nsw i32 %i.d, 1                      ; 5 uses
  %i.f = load i16, ptr %1, align 2, !tbaa !137    ; 2 uses
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %.not.i30.i = icmp ult i32 %i.e, 65536          ; 2 uses
  %i.h = lshr i32 %i.e, 16
  %spec.select.i31.i = select i1 %.not.i30.i, i32 %i.e, i32 %i.h ; 3 uses
  %spec.select12.i32.i = select i1 %.not.i30.i, i32 0, i32 16 ; 2 uses
  %.not11.i33.i = icmp samesign ult i32 %spec.select.i31.i, 256 ; 2 uses
  %i.i = lshr i32 %spec.select.i31.i, 8
  %i.j = or disjoint i32 %spec.select12.i32.i, 8
  %.110.i34.i = select i1 %.not11.i33.i, i32 %spec.select.i31.i, i32 %i.i
  %.1.i35.i = select i1 %.not11.i33.i, i32 %spec.select12.i32.i, i32 %i.j
  %i.k = zext nneg i32 %.110.i34.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !75
  %i.n = zext i8 %i.m to i32
  %.not.i.i = icmp sgt i16 %i.f, -1               ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.g, i32 65535 ; 3 uses
  %spec.select12.i.neg.i = select i1 %.not.i.i, i32 0, i32 -16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.o = lshr i32 %spec.select.i.i, 8
  %.neg38.i = add nsw i32 %spec.select12.i.neg.i, -8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.o
  %.1.i.neg39.i = select i1 %.not11.i.i, i32 %spec.select12.i.neg.i, i32 %.neg38.i
  %i.p = zext nneg i32 %.110.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !75
  %i.s = zext i8 %i.r to i32
  %.neg36.i = sub nsw i32 %i.n, %i.s
  %i.t = add nsw i32 %.neg36.i, %.1.i.neg39.i
  %i.u = add nsw i32 %i.t, %.1.i35.i              ; 2 uses
  %i.v = shl i32 %i.g, %i.u
  %i.w = icmp sgt i32 %i.v, %i.e
  %i.x = sext i1 %i.w to i32
  %spec.select.i = add nsw i32 %i.u, %i.x         ; 4 uses
  %i.y = shl i32 %i.g, %spec.select.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !91
  %i.ab = sub nsw i32 %i.aa, %i.c                 ; 3 uses
  %i.ac = shl i32 %i.y, 1
  %i.ad = sub nsw i32 %i.ac, %i.e                 ; 9 uses
  %i.ae = icmp sgt i32 %i.ab, %i.ad
  %i.af = sub nsw i32 %i.ab, %i.ad
  %i.ag = lshr i32 %i.af, 1
  %i.ah = add nsw i32 %i.ag, %i.ad
  %.0.i.i = select i1 %i.ae, i32 %i.ah, i32 %i.ab
  %i.ai = ashr i32 %.0.i.i, %spec.select.i
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !137
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = icmp slt i32 %i.ai, %i.al
  br i1 %i.am, label %bb.b, label %arith2_get_prob.exit, !llvm.loop !160

arith2_get_prob.exit:                             ; preds = %bb.b
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ao = shl i32 %i.al, %spec.select.i           ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !137
  %i.ar = sext i16 %i.aq to i32
  %i.as = shl i32 %i.ar, %spec.select.i           ; 3 uses
  %i.at = icmp sgt i32 %i.as, %i.ad
  %i.au = sub nsw i32 %i.as, %i.ad
  %i.av = shl nuw i32 %i.au, 1
  %i.aw = add nsw i32 %i.av, %i.ad
  %.sink.i.i = select i1 %i.at, i32 %i.aw, i32 %i.as
  %i.ax = add nsw i32 %i.c, -1
  %i.ay = add nsw i32 %i.ax, %.sink.i.i
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !89
  %i.az = icmp sgt i32 %i.ao, %i.ad
  %i.ba = sub nsw i32 %i.ao, %i.ad
  %i.bb = shl nuw i32 %i.ba, 1
  %i.bc = add nsw i32 %i.bb, %i.ad
  %.pn.i.i = select i1 %i.az, i32 %i.bc, i32 %i.ao
  %storemerge.i.i = add nsw i32 %.pn.i.i, %i.c
  store i32 %storemerge.i.i, ptr %0, align 8, !tbaa !87
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1028
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !75
  tail call void @ff_mss12_model_update(ptr noundef nonnull %1, i32 noundef %i.an) #11
  %.promoted.i = load i32, ptr %i.a, align 4, !tbaa !89 ; 2 uses
  %.promoted14.i = load i32, ptr %0, align 8, !tbaa !87 ; 2 uses
  %i.bg = ashr i32 %.promoted.i, 15
  %i.bh = ashr i32 %.promoted14.i, 15
  %i.bi = sub nsw i32 %i.bg, %i.bh
  %i.bj = icmp slt i32 %i.bi, 2
  br i1 %i.bj, label %.lr.ph.i, label %arith2_normalise.exit

.lr.ph.i:                                         ; preds = %arith2_get_prob.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.promoted15.i = load i32, ptr %i.z, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bytestream2_get_byte.exit.i, %.lr.ph.i
  %i.bl = phi i32 [ %.promoted15.i, %.lr.ph.i ], [ %.0.i.i7, %bytestream2_get_byte.exit.i ] ; 2 uses
  %i.bm = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.by, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.bn = phi i32 [ %.promoted14.i, %.lr.ph.i ], [ %i.co, %bytestream2_get_byte.exit.i ] ; 3 uses
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = and i32 %i.bo, 65536
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = xor i32 %i.bm, 32768
  %i.br = xor i32 %i.bl, 32768                    ; 2 uses
  store i32 %i.br, ptr %i.z, align 8, !tbaa !91
  %i.bs = xor i32 %i.bn, 32768                    ; 2 uses
  store i32 %i.bs, ptr %0, align 8, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bt = phi i32 [ %i.br, %bb.d ], [ %i.bl, %bb.c ]
  %i.bu = phi i32 [ %i.bs, %bb.d ], [ %i.bn, %bb.c ]
  %i.bv = phi i32 [ %i.bq, %bb.d ], [ %i.bm, %bb.c ]
  %i.bw = shl i32 %i.bv, 8
  %i.bx = and i32 %i.bw, 16776960                 ; 2 uses
  %i.by = or disjoint i32 %i.bx, 255              ; 2 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !89
  %i.bz = shl i32 %i.bt, 8
  %i.ca = and i32 %i.bz, 16776960                 ; 2 uses
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !75 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !86 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !95 ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp slt i64 %i.ch, 1
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !95
  br label %bytestream2_get_byte.exit.i

bb.g:                                             ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.cj, ptr %i.cb, align 8, !tbaa !90
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !75
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ca, %i.cl
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.g, %bb.f
  %.0.i.i7 = phi i32 [ %i.ca, %bb.f ], [ %i.cm, %bb.g ] ; 2 uses
  store i32 %.0.i.i7, ptr %i.z, align 8, !tbaa !91
  %i.cn = shl i32 %i.bu, 8
  %i.co = and i32 %i.cn, 16776960                 ; 3 uses
  store i32 %i.co, ptr %0, align 8, !tbaa !87
  %i.cp = lshr i32 %i.bx, 15
  %i.cq = lshr i32 %i.co, 15
  %i.cr = sub nsw i32 %i.cp, %i.cq
  %i.cs = icmp slt i32 %i.cr, 2
  br i1 %i.cs, label %bb.c, label %arith2_normalise.exit, !llvm.loop !96

arith2_normalise.exit:                            ; preds = %bytestream2_get_byte.exit.i, %arith2_get_prob.exit
  %i.ct = zext i8 %i.bf to i32
  ret i32 %i.ct
}

declare void @ff_mss12_model_update(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_vlc_init_sparse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #3

declare void @ff_mpeg_flush(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vc1_parse_frame_header(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_mpv_frame_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mpeg_er_frame_start(ptr noundef) local_unnamed_addr #3

declare void @ff_vc1_decode_blocks(ptr noundef) local_unnamed_addr #3

declare void @ff_er_frame_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mpv_frame_end(ptr noundef) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @ff_mss12_decode_end(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vc1_decode_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

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
!29 = !{!30, !31, i64 0}
!30 = !{!"MSS12Context", !31, i64 0, !7, i64 8, !16, i64 1032, !16, i64 1040, !15, i64 1048, !16, i64 1056, !15, i64 1064, !16, i64 1072, !16, i64 1080, !15, i64 1088, !6, i64 1096, !6, i64 1100, !6, i64 1104, !6, i64 1108, !6, i64 1112, !6, i64 1116, !6, i64 1120}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!33, !52, i64 11000}
!33 = !{!"MSS2Context", !34, i64 0, !6, i64 10992, !52, i64 11000, !30, i64 11008, !61, i64 12136, !7, i64 12168}
!34 = !{!"VC1Context", !35, i64 0, !55, i64 4384, !56, i64 4408, !43, i64 5128, !60, i64 5192, !6, i64 5952, !6, i64 5956, !6, i64 5960, !6, i64 5964, !6, i64 5968, !6, i64 5972, !6, i64 5976, !6, i64 5980, !6, i64 5984, !6, i64 5988, !6, i64 5992, !6, i64 5996, !6, i64 6000, !6, i64 6004, !6, i64 6008, !6, i64 6012, !6, i64 6016, !6, i64 6020, !6, i64 6024, !6, i64 6028, !6, i64 6032, !6, i64 6036, !6, i64 6040, !6, i64 6044, !6, i64 6048, !6, i64 6052, !6, i64 6056, !6, i64 6060, !6, i64 6064, !6, i64 6068, !6, i64 6072, !6, i64 6076, !6, i64 6080, !6, i64 6084, !6, i64 6088, !6, i64 6092, !6, i64 6096, !7, i64 6100, !7, i64 6101, !6, i64 6104, !6, i64 6108, !6, i64 6112, !6, i64 6116, !7, i64 6120, !7, i64 6121, !7, i64 6122, !6, i64 6380, !6, i64 6384, !16, i64 6392, !16, i64 6400, !7, i64 6408, !7, i64 6409, !7, i64 6410, !7, i64 6411, !6, i64 6412, !6, i64 6416, !6, i64 6420, !6, i64 6424, !6, i64 6428, !6, i64 6432, !7, i64 6436, !26, i64 6440, !26, i64 6448, !6, i64 6456, !6, i64 6460, !6, i64 6464, !6, i64 6468, !6, i64 6472, !16, i64 6480, !16, i64 6488, !7, i64 6496, !7, i64 6497, !49, i64 6498, !7, i64 6500, !7, i64 6501, !6, i64 6504, !7, i64 6508, !7, i64 6509, !57, i64 6512, !6, i64 6520, !6, i64 6524, !16, i64 6528, !16, i64 6536, !16, i64 6544, !6, i64 6552, !6, i64 6556, !6, i64 6560, !6, i64 6564, !7, i64 6568, !7, i64 7080, !7, i64 7592, !7, i64 8104, !7, i64 8616, !7, i64 9128, !16, i64 9640, !16, i64 9648, !6, i64 9656, !26, i64 9664, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !7, i64 9696, !7, i64 9697, !6, i64 9700, !7, i64 9704, !7, i64 9705, !7, i64 9706, !7, i64 9707, !7, i64 9708, !7, i64 9709, !7, i64 9710, !6, i64 9712, !7, i64 9716, !7, i64 9717, !16, i64 9720, !6, i64 9728, !16, i64 9736, !6, i64 9744, !7, i64 9748, !7, i64 9749, !7, i64 9750, !7, i64 9751, !7, i64 9752, !7, i64 9753, !6, i64 9756, !6, i64 9760, !7, i64 9764, !7, i64 9765, !57, i64 9768, !57, i64 9776, !57, i64 9784, !57, i64 9792, !7, i64 9800, !7, i64 9801, !16, i64 9808, !6, i64 9816, !7, i64 9820, !16, i64 9888, !16, i64 9896, !16, i64 9904, !7, i64 9912, !16, i64 9928, !7, i64 9936, !6, i64 9952, !6, i64 9956, !6, i64 9960, !6, i64 9964, !6, i64 9968, !6, i64 9972, !6, i64 9976, !6, i64 9980, !7, i64 9984, !6, i64 9992, !6, i64 9996, !6, i64 10000, !6, i64 10004, !6, i64 10008, !6, i64 10012, !6, i64 10016, !6, i64 10020, !6, i64 10024, !6, i64 10028, !6, i64 10032, !6, i64 10036, !6, i64 10040, !6, i64 10044, !52, i64 10048, !6, i64 10056, !6, i64 10060, !6, i64 10064, !6, i64 10068, !7, i64 10072, !6, i64 10104, !6, i64 10108, !6, i64 10112, !19, i64 10120, !6, i64 10128, !6, i64 10132, !6, i64 10136, !6, i64 10140, !6, i64 10144, !26, i64 10152, !26, i64 10160, !16, i64 10168, !16, i64 10176, !19, i64 10184, !19, i64 10192, !7, i64 10200, !7, i64 10201, !7, i64 10202, !6, i64 10204, !6, i64 10208, !6, i64 10212, !7, i64 10224}
!35 = !{!"MpegEncContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !36, i64 72, !36, i64 208, !31, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !15, i64 416, !15, i64 424, !37, i64 432, !38, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !39, i64 768, !39, i64 888, !39, i64 1008, !19, i64 1128, !16, i64 1136, !16, i64 1144, !16, i64 1152, !16, i64 1160, !16, i64 1168, !19, i64 1176, !19, i64 1184, !19, i64 1192, !6, i64 1200, !16, i64 1208, !16, i64 1216, !16, i64 1224, !16, i64 1232, !41, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !42, i64 1288, !43, i64 1320, !44, i64 1384, !45, i64 1768, !46, i64 1888, !47, i64 2656, !48, i64 2672, !19, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !26, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !15, i64 3744, !15, i64 3752, !49, i64 3760, !49, i64 3762, !49, i64 3764, !49, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !50, i64 3912}
!36 = !{!"ScanTable", !16, i64 0, !7, i64 8, !7, i64 72}
!37 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!38 = !{!"BufferPoolContext", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!39 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !40, i64 48, !16, i64 56, !7, i64 64, !26, i64 80, !16, i64 88, !7, i64 96, !6, i64 112}
!40 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!41 = !{!"ScratchpadContext", !16, i64 0, !16, i64 8, !7, i64 16, !6, i64 24}
!42 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!43 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!44 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!45 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!46 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!47 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!48 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!49 = !{!"short", !7, i64 0}
!50 = !{!"ERContext", !31, i64 0, !12, i64 8, !26, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !15, i64 40, !15, i64 48, !7, i64 56, !6, i64 60, !16, i64 64, !16, i64 72, !7, i64 80, !16, i64 104, !16, i64 112, !7, i64 120, !51, i64 184, !51, i64 256, !51, i64 328, !7, i64 400, !7, i64 416, !49, i64 432, !49, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!51 = !{!"ERPicture", !52, i64 0, !53, i64 8, !54, i64 16, !7, i64 24, !7, i64 40, !26, i64 56, !6, i64 64}
!52 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!53 = !{!"p1 _ZTS11ThreadFrame", !12, i64 0}
!54 = !{!"p1 _ZTS14ThreadProgress", !12, i64 0}
!55 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!56 = !{!"IntraX8Context", !7, i64 0, !57, i64 32, !7, i64 40, !6, i64 64, !16, i64 72, !7, i64 80, !45, i64 272, !31, i64 392, !19, i64 400, !58, i64 408, !42, i64 528, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572, !52, i64 576, !59, i64 584, !6, i64 592, !6, i64 596, !6, i64 600, !7, i64 608, !7, i64 632, !6, i64 676, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716}
!57 = !{!"p1 _ZTS7VLCElem", !12, i64 0}
!58 = !{!"IntraX8DSPContext", !12, i64 0, !12, i64 8, !7, i64 16, !12, i64 112}
!59 = !{!"p1 _ZTS13GetBitContext", !12, i64 0}
!60 = !{!"VC1DSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !7, i64 144, !7, i64 400, !7, i64 656, !7, i64 680, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752}
!61 = !{!"MSS2DSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!62 = !{!30, !15, i64 1064}
!63 = !{!30, !15, i64 1048}
!64 = !{!10, !6, i64 116}
!65 = !{!30, !16, i64 1032}
!66 = !{!30, !16, i64 1040}
!67 = !{!30, !6, i64 1096}
!68 = !{!10, !6, i64 136}
!69 = !{!70, !16, i64 24}
!70 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!71 = !{!70, !6, i64 32}
!72 = !{!55, !16, i64 0}
!73 = !{!55, !6, i64 12}
!74 = !{!55, !6, i64 16}
!75 = !{!7, !7, i64 0}
!76 = !{!55, !6, i64 8}
!77 = !{!30, !6, i64 1116}
!78 = !{!33, !6, i64 10992}
!79 = !{!80, !6, i64 116}
!80 = !{!"AVFrame", !7, i64 0, !7, i64 64, !81, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !82, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !83, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!81 = !{!"p2 omnipotent char", !28, i64 0}
!82 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!83 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!84 = !{!85, !16, i64 16}
!85 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!86 = !{!85, !16, i64 8}
!87 = !{!88, !6, i64 0}
!88 = !{!"ArithCoder", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !12, i64 24, !12, i64 32}
!89 = !{!88, !6, i64 4}
!90 = !{!16, !16, i64 0}
!91 = !{!88, !6, i64 8}
!92 = !{!88, !6, i64 12}
!93 = !{!88, !12, i64 24}
!94 = !{!88, !12, i64 32}
!95 = !{!85, !16, i64 0}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!10, !6, i64 112}
!99 = !{!100, !6, i64 4}
!100 = !{!"Rectangle", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!101 = !{!100, !6, i64 8}
!102 = !{!100, !6, i64 12}
!103 = !{!100, !6, i64 16}
!104 = distinct !{!104, !97}
!105 = !{!6, !6, i64 0}
!106 = !{!100, !6, i64 0}
!107 = distinct !{!107, !97}
!108 = !{!30, !6, i64 1108}
!109 = !{!30, !6, i64 1104}
!110 = distinct !{!110, !97}
!111 = !{!30, !16, i64 1080}
!112 = !{!30, !16, i64 1072}
!113 = !{!30, !15, i64 1088}
!114 = !{!80, !6, i64 276}
!115 = !{!80, !6, i64 120}
!116 = !{!30, !6, i64 1112}
!117 = !{!30, !6, i64 1100}
!118 = !{!119, !6, i64 0}
!119 = !{!"Rectangle2", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!120 = !{!119, !6, i64 8}
!121 = !{!119, !6, i64 4}
!122 = !{!119, !6, i64 12}
!123 = distinct !{!123, !97}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.unroll.disable"}
!126 = !{!33, !12, i64 12152}
!127 = distinct !{!127, !97}
!128 = distinct !{!128, !97}
!129 = !{!34, !31, i64 344}
!130 = !{!34, !16, i64 6392}
!131 = !{!34, !16, i64 6400}
!132 = !{!34, !6, i64 6052}
!133 = !{!34, !6, i64 10212}
!134 = !{!10, !6, i64 200}
!135 = distinct !{!135, !97}
!136 = distinct !{!136, !97}
!137 = !{!49, !49, i64 0}
!138 = distinct !{!138, !97}
!139 = distinct !{!139, !97}
!140 = distinct !{!140, !97}
!141 = distinct !{!141, !97}
!142 = distinct !{!142, !97}
!143 = distinct !{!143, !97}
!144 = !{!145, !57, i64 8}
!145 = !{!"VLC", !6, i64 0, !57, i64 8, !6, i64 16, !6, i64 20}
!146 = distinct !{!146, !97}
!147 = distinct !{!147, !97}
!148 = !{!10, !6, i64 696}
!149 = !{!34, !6, i64 6056}
!150 = !{!35, !6, i64 1280}
!151 = !{!34, !6, i64 10204}
!152 = !{!35, !6, i64 500}
!153 = !{!34, !7, i64 6501}
!154 = !{!35, !6, i64 388}
!155 = !{!35, !6, i64 392}
!156 = !{!33, !12, i64 12160}
!157 = !{!15, !15, i64 0}
!158 = !{!33, !12, i64 12144}
!159 = !{!33, !12, i64 12136}
!160 = distinct !{!160, !97}
end_hunk_0
