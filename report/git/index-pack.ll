Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/index-pack?download=true
inline.NumInlined: 142
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cmd_index_pack:bb.a
bb.kx:                                            ; preds = %bb.kv
  %i.apn = load i32, ptr @nr_objects, align 4, !tbaa !15 ; 3 uses
  %i.apo = add nsw i32 %i.apn, %i.apk             ; 2 uses
  %i.app = add nsw i32 %i.apo, 1
  %i.apq = sext i32 %i.app to i64                 ; 2 uses
  %mul.ov.i.i188 = icmp slt i32 %i.apo, -1
  br i1 %mul.ov.i.i188, label %bb.ky, label %st_mult.exit.i189

bb.ky:                                            ; preds = %bb.kx
  call void (ptr, ...) @die(ptr noundef nonnull @.str.116, i64 noundef 64, i64 noundef range(i64 -2147483648, 2147483648) %i.apq) #25
  unreachable

st_mult.exit.i189:                                ; preds = %bb.kx
  %i.apr = load ptr, ptr @objects, align 8, !tbaa !58
  %i.aps = shl nuw nsw i64 %i.apq, 6
  %i.apt = call ptr @xrealloc(ptr noundef %i.apr, i64 noundef %i.aps) #24 ; 2 uses
  store ptr %i.apt, ptr @objects, align 8, !tbaa !58
  %i.apu = load i32, ptr @nr_objects, align 4, !tbaa !15
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [64 x i8], ptr %i.apt, i64 %i.apv
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 64
  %i.apy = zext nneg i32 %i.apk to i64
  %i.apz = shl nuw nsw i64 %i.apy, 6
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.apx, i8 0, i64 %i.apz, i1 false)
  %i.aqa = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 448
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !53
  %i.aqd = load i32, ptr @output_fd, align 4, !tbaa !15
  %i.aqe = call ptr @hashfd(ptr noundef %i.aqc, i32 noundef %i.aqd, ptr noundef %i.aor) #24 ; 6 uses
  %i.aqf = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15 ; 2 uses
  %i.aqg = sext i32 %i.aqf to i64                 ; 2 uses
  %mul.ov.i.i.i190 = icmp slt i32 %i.aqf, 0
  br i1 %mul.ov.i.i.i190, label %bb.kz, label %st_mult.exit.i.i191

bb.kz:                                            ; preds = %st_mult.exit.i189
  call void (ptr, ...) @die(ptr noundef nonnull @.str.116, i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.aqg) #25
  unreachable

st_mult.exit.i.i191:                              ; preds = %st_mult.exit.i189
  %i.aqh = shl nuw nsw i64 %i.aqg, 3
  %i.aqi = call ptr @xmalloc(i64 noundef %i.aqh) #24 ; 6 uses
  %i.aqj = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15 ; 5 uses
  %i.aqk = icmp sgt i32 %i.aqj, 0
  br i1 %i.aqk, label %.lr.ph.i.i201, label %._crit_edge.i.i192

.lr.ph.i.i201:                                    ; preds = %st_mult.exit.i.i191
  %i.aql = load ptr, ptr @ref_deltas, align 8, !tbaa !86 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.aqj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.aqj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i201
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [40 x i8], ptr %i.aql, <2 x i64> %vec.ind
  %wide.gep1194 = getelementptr inbounds nuw [40 x i8], ptr %i.aql, <2 x i64> %step.add
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %index ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  store <2 x ptr> %wide.gep, ptr %i.aqm, align 8, !tbaa !86
  store <2 x ptr> %wide.gep1194, ptr %i.aqn, align 8, !tbaa !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.aqo = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqo, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i192, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i201, %middle.block
  %indvars.iv.i.i202.ph = phi i64 [ 0, %.lr.ph.i.i201 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i202 = phi i64 [ %indvars.iv.next.i.i203, %scalar.ph ], [ %indvars.iv.i.i202.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aqp = getelementptr inbounds nuw [40 x i8], ptr %i.aql, i64 %indvars.iv.i.i202
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %indvars.iv.i.i202
  store ptr %i.aqp, ptr %i.aqq, align 8, !tbaa !86
  %indvars.iv.next.i.i203 = add nuw nsw i64 %indvars.iv.i.i202, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i203, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i192, label %scalar.ph, !llvm.loop !129

._crit_edge.i.i192:                               ; preds = %scalar.ph, %middle.block, %st_mult.exit.i.i191
  %i.aqr = icmp ugt i32 %i.aqj, 1
  br i1 %i.aqr, label %bb.la, label %sane_qsort.exit.i.i

bb.la:                                            ; preds = %._crit_edge.i.i192
  %i.aqs = sext i32 %i.aqj to i64
  call void @qsort(ptr noundef %i.aqi, i64 noundef range(i64 -2147483648, 2147483648) %i.aqs, i64 noundef 8, ptr noundef nonnull @delta_pos_compare) #24
  br label %sane_qsort.exit.i.i

sane_qsort.exit.i.i:                              ; preds = %bb.la, %._crit_edge.i.i192
  %i.aqt = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.aqu = call i32 @repo_has_promisor_remote(ptr noundef %i.aqt) #24
  %.not.i17.i = icmp eq i32 %i.aqu, 0
  br i1 %.not.i17.i, label %bb.le, label %bb.lb

bb.lb:                                            ; preds = %sane_qsort.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.aqv = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15
  %i.aqw = icmp sgt i32 %i.aqv, 0
  br i1 %i.aqw, label %.lr.ph39.i.i, label %._crit_edge40.i.i

.lr.ph39.i.i:                                     ; preds = %bb.lb, %bb.ld
  %indvars.iv51.i.i = phi i64 [ %indvars.iv.next52.i.i, %bb.ld ], [ 0, %bb.lb ] ; 2 uses
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %indvars.iv51.i.i
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !86 ; 2 uses
  %i.aqz = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !54
  %i.arc = call i32 @odb_read_object_info_extended(ptr noundef %i.arb, ptr noundef %i.aqy, ptr noundef null, i32 noundef 6) #24
  %.not30.i.i = icmp eq i32 %i.arc, 0
  br i1 %.not30.i.i, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %.lr.ph39.i.i
  call void @oid_array_append(ptr noundef nonnull %12, ptr noundef %i.aqy) #24
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %.lr.ph39.i.i
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 1 ; 2 uses
  %i.ard = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15
  %i.are = sext i32 %i.ard to i64
  %i.arf = icmp slt i64 %indvars.iv.next52.i.i, %i.are
  br i1 %i.arf, label %.lr.ph39.i.i, label %._crit_edge40.loopexit.i.i, !llvm.loop !130

._crit_edge40.loopexit.i.i:                       ; preds = %bb.ld
  %.pre.i19.i = load ptr, ptr %12, align 8, !tbaa !169
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.pre57.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !170
  %i.arg = trunc i64 %.pre57.i.i to i32
  br label %._crit_edge40.i.i

._crit_edge40.i.i:                                ; preds = %._crit_edge40.loopexit.i.i, %bb.lb
  %i.arh = phi i32 [ %i.arg, %._crit_edge40.loopexit.i.i ], [ 0, %bb.lb ]
  %i.ari = phi ptr [ %.pre.i19.i, %._crit_edge40.loopexit.i.i ], [ null, %bb.lb ]
  %i.arj = load ptr, ptr @the_repository, align 8, !tbaa !17
  call void @promisor_remote_get_direct(ptr noundef %i.arj, ptr noundef %i.ari, i32 noundef %i.arh) #24
  call void @oid_array_clear(ptr noundef nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.le

bb.le:                                            ; preds = %._crit_edge40.i.i, %sane_qsort.exit.i.i
  %i.ark = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15
  %i.arl = icmp sgt i32 %i.ark, 0
  br i1 %i.arl, label %.lr.ph43.i.i, label %fix_unresolved_deltas.exit.i

.lr.ph43.i.i:                                     ; preds = %bb.le
  %i.arm = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.arn = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.aro = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.arp = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %11, i64 136
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lq, %.lr.ph43.i.i
  %indvars.iv54.i.i = phi i64 [ 0, %.lr.ph43.i.i ], [ %indvars.iv.next55.i.i, %bb.lq ] ; 2 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %indvars.iv54.i.i
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !86 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.art = load ptr, ptr @objects, align 8, !tbaa !58
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ars, i64 36
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !88
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds [64 x i8], ptr %i.art, i64 %i.arw
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 58
  %i.arz = load i8, ptr %i.ary, align 2, !tbaa !82
  %.not28.i.i = icmp eq i8 %i.arz, 7
  br i1 %.not28.i.i, label %bb.lg, label %bb.lq

bb.lg:                                            ; preds = %bb.lf
  %i.asa = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !54
  %i.asd = call ptr @odb_read_object(ptr noundef %i.asc, ptr noundef nonnull %i.ars, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #24 ; 4 uses
  %.not29.i.i = icmp eq ptr %i.asd, null
  br i1 %.not29.i.i, label %bb.lq, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.ase = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.asf = load i64, ptr %i.g, align 8, !tbaa !24
  %i.asg = load i32, ptr %i.f, align 4, !tbaa !15
  %i.ash = call i32 @check_object_signature(ptr noundef %i.ase, ptr noundef nonnull %i.ars, ptr noundef nonnull %i.asd, i64 noundef %i.asf, i32 noundef %i.asg) #24
  %i.asi = icmp slt i32 %i.ash, 0
  br i1 %i.asi, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.asj = call fastcc ptr @_(ptr noundef nonnull @.str.105)
  %i.ask = call ptr @oid_to_hex(ptr noundef nonnull %i.ars) #24
  call void (ptr, ...) @die(ptr noundef %i.asj, ptr noundef %i.ask) #25
  unreachable

bb.lj:                                            ; preds = %bb.lh
  %i.asl = load i64, ptr %i.g, align 8, !tbaa !24 ; 4 uses
  %i.asm = load i32, ptr %i.f, align 4, !tbaa !15
  %i.asn = load ptr, ptr @objects, align 8, !tbaa !58
  %i.aso = load i32, ptr @nr_objects, align 4, !tbaa !15 ; 2 uses
  %i.asp = add nsw i32 %i.aso, 1
  store i32 %i.asp, ptr @nr_objects, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %.tr.i.i.i = trunc i32 %i.asm to i8             ; 3 uses
  %28 = shl i8 %.tr.i.i.i, 4
  %29 = trunc i64 %i.asl to i8
  %30 = and i8 %29, 15
  %31 = or disjoint i8 %28, %30                   ; 2 uses
  %i.asq = lshr i64 %i.asl, 4                     ; 2 uses
  %.not37.i.i.i = icmp eq i64 %i.asq, 0
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.lj, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.lj ] ; 2 uses
  %.040.i.i.i = phi i8 [ %33, %.lr.ph.i.i.i ], [ %31, %bb.lj ]
  %.03538.i.i.i = phi i64 [ %i.ast, %.lr.ph.i.i.i ], [ %i.asq, %bb.lj ] ; 2 uses
  %i.asr = or i8 %.040.i.i.i, -128
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i.i
  store i8 %i.asr, ptr %i.ass, align 1, !tbaa !22
  %32 = trunc i64 %.03538.i.i.i to i8
  %33 = and i8 %32, 127                           ; 2 uses
  %i.ast = lshr i64 %.03538.i.i.i, 7              ; 2 uses
  %.not.i.i.i200 = icmp eq i64 %i.ast, 0
  br i1 %.not.i.i.i200, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !131

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.asu = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.lj
  %.034.lcssa.i.i.i = phi i32 [ 0, %bb.lj ], [ %i.asu, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i8 [ %31, %bb.lj ], [ %33, %._crit_edge.loopexit.i.i.i ]
  %i.asv = sext i32 %i.aso to i64
  %i.asw = getelementptr inbounds [64 x i8], ptr %i.asn, i64 %i.asv ; 10 uses
  %i.asx = add nuw nsw i32 %.034.lcssa.i.i.i, 1   ; 3 uses
  %i.asy = zext nneg i32 %.034.lcssa.i.i.i to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.asy
  store i8 %.0.lcssa.i.i.i, ptr %i.asz, align 1, !tbaa !22
  call void @crc32_begin(ptr noundef %i.aqe) #24
  call void @hashwrite(ptr noundef %i.aqe, ptr noundef nonnull %i.e, i32 noundef %i.asx) #24
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 48
  store i64 %i.asl, ptr %i.ata, align 8, !tbaa !70
  %i.atb = trunc i32 %i.asx to i8
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asw, i64 56
  store i8 %i.atb, ptr %i.atc, align 8, !tbaa !73
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asw, i64 57
  store i8 %.tr.i.i.i, ptr %i.atd, align 1, !tbaa !69
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asw, i64 58
  store i8 %.tr.i.i.i, ptr %i.ate, align 2, !tbaa !82
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asw, i64 40
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !68
  %i.ath = zext nneg i32 %i.asx to i64
  %i.ati = add nsw i64 %i.atg, %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asw, i64 104 ; 3 uses
  store i64 %i.ati, ptr %i.atj, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.atk = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.atl = call ptr @repo_config_values(ptr noundef %i.atk) #24
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 20
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !171
  call void @git_deflate_init(ptr noundef nonnull %11, i32 noundef %i.atn) #24
  store ptr %i.asd, ptr %i.arm, align 8, !tbaa !79
  %i.ato = and i64 %i.asl, 4294967295
  store i64 %i.ato, ptr %i.arn, align 8, !tbaa !80
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lk, %._crit_edge.i.i.i
  store ptr %i.d, ptr %i.aro, align 8, !tbaa !77
  store i64 4096, ptr %i.arp, align 8, !tbaa !78
  %i.atp = call i32 @git_deflate(ptr noundef nonnull %11, i32 noundef 4) #24 ; 2 uses
  %i.atq = load i64, ptr %i.arp, align 8, !tbaa !78
  %i.atr = trunc i64 %i.atq to i32
  %i.ats = sub i32 4096, %i.atr
  call void @hashwrite(ptr noundef %i.aqe, ptr noundef nonnull %i.d, i32 noundef %i.ats) #24
  switch i32 %i.atp, label %bb.ll [
    i32 0, label %bb.lk
    i32 1, label %write_compressed.exit.i.i.i
  ]

bb.ll:                                            ; preds = %bb.lk
  %i.att = call fastcc ptr @_(ptr noundef nonnull @.str.106)
  call void (ptr, ...) @die(ptr noundef %i.att, i32 noundef %i.atp) #25
  unreachable

write_compressed.exit.i.i.i:                      ; preds = %bb.lk
  %i.atu = load i64, ptr %i.arq, align 8, !tbaa !81
  call void @git_deflate_end(ptr noundef nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %sext.i.i.i = shl i64 %i.atu, 32
  %i.atv = ashr exact i64 %sext.i.i.i, 32
  %i.atw = load i64, ptr %i.atj, align 8, !tbaa !68
  %i.atx = add nsw i64 %i.atw, %i.atv
  store i64 %i.atx, ptr %i.atj, align 8, !tbaa !68
  %i.aty = call i32 @crc32_end(ptr noundef %i.aqe) #24
  %i.atz = getelementptr inbounds nuw i8, ptr %i.asw, i64 36
  store i32 %i.aty, ptr %i.atz, align 4, !tbaa !158
  call void @hashflush(ptr noundef %i.aqe) #24
  %i.aua = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 448
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !53 ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 16 ; 2 uses
  %i.aue = load i64, ptr %i.aud, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.asw, ptr nonnull readonly align 4 %i.ars, i64 %i.aue, i1 false)
  %i.auf = load i64, ptr %i.aud, align 8, !tbaa !155 ; 3 uses
  %i.aug = icmp ult i64 %i.auf, 32
  br i1 %i.aug, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %write_compressed.exit.i.i.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.asw, i64 %i.auf
  %i.aui = sub nuw nsw i64 32, %i.auf
  call void @llvm.memset.p0.i64(ptr align 1 %i.auh, i8 0, i64 %i.aui, i1 false)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %write_compressed.exit.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.auc, @hash_algos
  br i1 %.not.i.i.i.i.i, label %append_obj_to_pack.exit.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not.1.i.i.i.i.i = icmp eq ptr %i.auc, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i.i.i, label %append_obj_to_pack.exit.i.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %.not.2.i.i.i.i.i = icmp eq ptr %i.auc, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i.i.i = select i1 %.not.2.i.i.i.i.i, i32 2, i32 0
  br label %append_obj_to_pack.exit.i.i

append_obj_to_pack.exit.i.i:                      ; preds = %bb.lp, %bb.lo, %bb.ln
  %.2.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.lp ], [ 0, %bb.ln ], [ 1, %bb.lo ]
  %i.auj = getelementptr inbounds nuw i8, ptr %i.asw, i64 32
  store i32 %.2.i.i.i.i.i, ptr %i.auj, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @free(ptr noundef nonnull %i.asd) #24
  %i.auk = call ptr @threaded_second_pass(ptr noundef null) ; 0 uses
  %i.aul = load ptr, ptr @progress, align 8, !tbaa !64
  %i.aum = load i32, ptr @nr_resolved_deltas, align 4, !tbaa !15
  %i.aun = sext i32 %i.aum to i64
  call void @display_progress(ptr noundef %i.aul, i64 noundef %i.aun) #24
  br label %bb.lq

bb.lq:                                            ; preds = %append_obj_to_pack.exit.i.i, %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %indvars.iv.next55.i.i = add nuw nsw i64 %indvars.iv54.i.i, 1 ; 2 uses
  %i.auo = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15
  %i.aup = sext i32 %i.auo to i64
  %i.auq = icmp slt i64 %indvars.iv.next55.i.i, %i.aup
  br i1 %i.auq, label %bb.lf, label %fix_unresolved_deltas.exit.i, !llvm.loop !132

fix_unresolved_deltas.exit.i:                     ; preds = %bb.lq, %bb.le
  call void @free(ptr noundef %i.aqi) #24
  %i.aur = load i32, ptr @nr_objects, align 4, !tbaa !15
  %i.aus = sub nsw i32 %i.aur, %i.apn             ; 3 uses
  %i.aut = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not.i20.i = icmp eq i32 %i.aut, 0
  br i1 %.not.i20.i, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %fix_unresolved_deltas.exit.i
  %i.auu = icmp eq i32 %i.aus, 1
  %i.auv = select i1 %i.auu, ptr @.str.100, ptr @.str.101
  br label %Q_.exit.i

bb.ls:                                            ; preds = %fix_unresolved_deltas.exit.i
  %i.auw = sext i32 %i.aus to i64
  %i.aux = call ptr @dcngettext(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i64 noundef %i.auw, i32 noundef 5) #24
  %.pre.i193 = load i32, ptr @nr_objects, align 4, !tbaa !15
  %.pre36.i = sub nsw i32 %.pre.i193, %i.apn
  br label %Q_.exit.i

Q_.exit.i:                                        ; preds = %bb.ls, %bb.lr
  %.pre-phi37.i = phi i32 [ %i.aus, %bb.lr ], [ %.pre36.i, %bb.ls ]
  %.0.i.i194 = phi ptr [ %i.auv, %bb.lr ], [ %i.aux, %bb.ls ]
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %13, ptr noundef %.0.i.i194, i32 noundef %.pre-phi37.i) #24
  %i.auy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !72
  call void @stop_progress_msg(ptr noundef nonnull @progress, ptr noundef %i.auz) #24
  call void @strbuf_release(ptr noundef nonnull %13) #24
  %i.ava = call i32 @finalize_hashfile(ptr noundef %i.aqe, ptr noundef nonnull %i.i, i32 noundef 2, i32 noundef 0) #24 ; 0 uses
  %i.avb = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 448
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !53 ; 2 uses
  %i.ave = getelementptr i8, ptr %i.avd, i64 16
  %.val16.i = load i64, ptr %i.ave, align 8, !tbaa !155 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.h, ptr nonnull readonly align 16 %i.m, i64 %.val16.i, i1 false)
  %i.avf = load i32, ptr @output_fd, align 4, !tbaa !15
  %i.avg = load i32, ptr @nr_objects, align 4, !tbaa !15
  %i.avh = load i64, ptr @consumed_bytes, align 8, !tbaa !24
  %i.avi = sub i64 %i.avh, %.val16.i
  call void @fixup_pack_header_footer(ptr noundef %i.avd, i32 noundef %i.avf, ptr noundef nonnull %i.m, ptr noundef %i.aor, i32 noundef %i.avg, ptr noundef nonnull %i.h, i64 noundef %i.avi) #24
  %i.avj = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 448
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !53
  %i.avm = getelementptr i8, ptr %i.avl, i64 16
  %.val.i195 = load i64, ptr %i.avm, align 8, !tbaa !155
  %i.avn = icmp eq i64 %.val.i195, 32
  %..i.i196 = select i1 %i.avn, i64 32, i64 20
  %bcmp.i.i197 = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(20) %i.h, ptr noundef nonnull readonly dereferenceable(20) %i.i, i64 %..i.i196)
  %.0.in.i.not.i198 = icmp eq i32 %bcmp.i.i197, 0
  br i1 %.0.in.i.not.i198, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %Q_.exit.i
  %i.avo = call fastcc ptr @_(ptr noundef nonnull @.str.102)
  call void (ptr, ...) @die(ptr noundef %i.avo, ptr noundef %i.aor) #25
  unreachable

bb.lu:                                            ; preds = %Q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %.pre32.i.a = load i32, ptr @nr_ofs_deltas, align 4, !tbaa !15
  %.pre33.i.a = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15
  %.pre34.i.a = load i32, ptr @nr_resolved_deltas, align 4, !tbaa !15
  %.pre35.i = add nsw i32 %.pre33.i.a, %.pre32.i.a
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.ku
  %.pre-phi.i = phi i32 [ %.pre35.i, %bb.lu ], [ %i.aou, %bb.ku ] ; 2 uses
  %i.avp = phi i32 [ %.pre34.i.a, %bb.lu ], [ %i.aov, %bb.ku ] ; 2 uses
  %.not15.i = icmp eq i32 %.pre-phi.i, %i.avp
  br i1 %.not15.i, label %conclude_pack.exit, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.avq = sub nsw i32 %.pre-phi.i, %i.avp
  %i.avr = sext i32 %i.avq to i64
  %i.avs = call fastcc ptr @Q_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i64 noundef %i.avr)
  %i.avt = load i32, ptr @nr_ofs_deltas, align 4, !tbaa !15
  %i.avu = load i32, ptr @nr_ref_deltas, align 4, !tbaa !15
  %i.avv = add nsw i32 %i.avu, %i.avt
  %i.avw = load i32, ptr @nr_resolved_deltas, align 4, !tbaa !15
  %i.avx = sub i32 %i.avv, %i.avw
  call void (ptr, ...) @die(ptr noundef %i.avs, i32 noundef %i.avx) #25
  unreachable

conclude_pack.exit:                               ; preds = %stop_progress.exit.i205, %bb.kt, %bb.lv
  %i.avy = load ptr, ptr @ofs_deltas, align 8, !tbaa !62
  call void @free(ptr noundef %i.avy) #24
  %i.avz = load ptr, ptr @ref_deltas, align 8, !tbaa !86
  call void @free(ptr noundef %i.avz) #24
  %.b111 = load i1, ptr @strict, align 4
  br i1 %.b111, label %bb.lx, label %bb.mi

bb.lx:                                            ; preds = %conclude_pack.exit
  %i.awa = load ptr, ptr @the_repository, align 8, !tbaa !17
  %i.awb = call i32 @get_max_object_index(ptr noundef %i.awa) #24 ; 3 uses
  %.b.i209 = load i1, ptr @verbose, align 4
  br i1 %.b.i209, label %bb.ly, label %bb.ma

bb.ly:                                            ; preds = %bb.lx
end_hunk_0
