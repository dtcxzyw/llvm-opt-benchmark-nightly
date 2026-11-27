Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fuji?download=true
inline.NumInlined: 45
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6LibRaw10parse_fujiEx:bb.a
  store i32 %i.pj, ptr %i.co, align 4, !tbaa !97
  %i.pk = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pk, ptr %i.cp, align 8, !tbaa !97
  %i.pl = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pl, ptr %i.cq, align 4, !tbaa !97
  %i.pm = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pm, ptr %i.cr, align 8, !tbaa !97
  %i.pn = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.pn, ptr %i.cs, align 4, !tbaa !97
  %i.po = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i32 %i.po, ptr %i.ct, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit346

bb.ay:                                            ; preds = %bb.ar
  %i.pp = icmp eq i16 %i.cx, 4096
  br i1 %i.pp, label %bb.az, label %.loopexit346

bb.az:                                            ; preds = %bb.ay
  store i32 4096, ptr %i.an, align 4, !tbaa !74
  %i.pq = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.pr = add nsw i64 %i.dd, 512
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !79
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = call noundef i32 %i.pu(ptr noundef nonnull align 8 dereferenceable(8) %i.pq, i64 noundef %i.pr, i32 noundef 0), !call_target !113 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit235
  %.0183266 = phi i32 [ 0, %bb.az ], [ %i.sa, %.loopexit235 ]
  %.0184265 = phi i32 [ 0, %bb.az ], [ %.1, %.loopexit235 ] ; 4 uses
  %i.pw = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.px = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.py = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.pz = shl i32 %i.py, 1                        ; 2 uses
  %i.qa = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.qb = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.qc = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.qd = shl i32 %i.qc, 1                        ; 2 uses
  %i.qe = icmp ne i32 %i.px, 0
  %i.qf = icmp slt i32 %.0184265, 64
  %or.cond19 = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %or.cond19, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.qg = insertelement <4 x i32> poison, i32 %i.px, i64 0
  %i.qh = insertelement <4 x i32> %i.qg, i32 %i.pz, i64 1
  %i.qi = insertelement <4 x i32> %i.qh, i32 %i.qa, i64 2
  %i.qj = insertelement <4 x i32> %i.qi, i32 %i.qd, i64 3
  %i.qk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.qj to <4 x float>
  %i.ql = sext i32 %.0184265 to i64
  %i.qm = getelementptr inbounds [20 x i8], ptr %i.ao, i64 %i.ql ; 2 uses
  store <4 x float> %i.qk, ptr %i.qm, align 4, !tbaa !98
  %i.qn = sitofp reassoc nsz arcp contract afn i32 %i.qb to float
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store float %i.qn, ptr %i.qo, align 4, !tbaa !98
  %i.qp = add nsw i32 %.0184265, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1 = phi i32 [ %i.qp, %bb.bb ], [ %.0184265, %bb.ba ]
  %.not219 = icmp eq i32 %i.pw, 70
  br i1 %.not219, label %.loopexit235, label %.preheader236

.preheader236:                                    ; preds = %bb.bc
  %i.qq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 3 uses
  %i.qr = icmp sgt i32 %i.qq, 1
  br i1 %i.qr, label %_ZNK21libraw_static_table_tixEj.exit.lr.ph, label %.loopexit235

_ZNK21libraw_static_table_tixEj.exit.lr.ph:       ; preds = %.preheader236
  %i.qs = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list2E, align 8, !tbaa !104
  %.fr = freeze ptr %i.qs                         ; 6 uses
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %_ZNK21libraw_static_table_tixEj.exit.lr.ph, %bb.bm
  %indvars.iv292 = phi i64 [ 1, %_ZNK21libraw_static_table_tixEj.exit.lr.ph ], [ %indvars.iv.next293, %bb.bm ] ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %indvars.iv292
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !97
  %i.qv = icmp eq i32 %i.qu, %i.pw
  br i1 %i.qv, label %.preheader234.split.preheader, label %bb.bm

.preheader234.split.preheader:                    ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.qw = trunc nuw nsw i64 %indvars.iv292 to i32
  %i.qx = add nsw i32 %i.qw, -1                   ; 5 uses
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %i.qy ; 4 uses
  %i.ra = icmp ult i32 %i.qx, %i.qq
  %spec.select = select i1 %i.ra, ptr %i.qz, ptr %.fr
  %.0.i226 = load i32, ptr %spec.select, align 4, !tbaa !97
  %i.rb = sext i32 %.0.i226 to i64
  %i.rc = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.rb
  store i32 %i.pz, ptr %i.rc, align 8, !tbaa !97
  %i.rd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.re = icmp ult i32 %i.qx, %i.rd
  br i1 %i.re, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.preheader234.split.preheader
  %.not.i224.1 = icmp eq i32 %i.rd, 0
  br i1 %.not.i224.1, label %_ZNK21libraw_static_table_tixEj.exit227.1, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.rf = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.1

bb.bf:                                            ; preds = %.preheader234.split.preheader
  %i.rg = load i32, ptr %i.qz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.1

_ZNK21libraw_static_table_tixEj.exit227.1:        ; preds = %bb.bf, %bb.be, %bb.bd
  %.0.i226.1 = phi i32 [ %i.rg, %bb.bf ], [ %i.rf, %bb.be ], [ 0, %bb.bd ]
  %i.rh = sext i32 %.0.i226.1 to i64
  %i.ri = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  store i32 %i.qa, ptr %i.rj, align 4, !tbaa !97
  %i.rk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.rl = icmp ult i32 %i.qx, %i.rk
  br i1 %i.rl, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.1
  %.not.i224.2 = icmp eq i32 %i.rk, 0
  br i1 %.not.i224.2, label %_ZNK21libraw_static_table_tixEj.exit227.2, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rm = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.2

bb.bi:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.1
  %i.rn = load i32, ptr %i.qz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.2

_ZNK21libraw_static_table_tixEj.exit227.2:        ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0.i226.2 = phi i32 [ %i.rn, %bb.bi ], [ %i.rm, %bb.bh ], [ 0, %bb.bg ]
  %i.ro = sext i32 %.0.i226.2 to i64
  %i.rp = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store i32 %i.qd, ptr %i.rq, align 8, !tbaa !97
  %i.rr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list2E, i64 8), align 8, !tbaa !103 ; 2 uses
  %i.rs = icmp ult i32 %i.qx, %i.rr
  br i1 %i.rs, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.2
  %.not.i224.3 = icmp eq i32 %i.rr, 0
  br i1 %.not.i224.3, label %_ZNK21libraw_static_table_tixEj.exit227.3, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rt = load i32, ptr %.fr, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.3

bb.bl:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit227.2
  %i.ru = load i32, ptr %i.qz, align 4, !tbaa !97
  br label %_ZNK21libraw_static_table_tixEj.exit227.3

_ZNK21libraw_static_table_tixEj.exit227.3:        ; preds = %bb.bl, %bb.bk, %bb.bj
  %.0.i226.3 = phi i32 [ %i.ru, %bb.bl ], [ %i.rt, %bb.bk ], [ 0, %bb.bj ]
  %i.rv = sext i32 %.0.i226.3 to i64
  %i.rw = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 12
  store i32 %i.qb, ptr %i.rx, align 4, !tbaa !97
  br label %.loopexit235

bb.bm:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %i.ry = trunc nuw i64 %indvars.iv.next293 to i32
  %i.rz = icmp sgt i32 %i.qq, %i.ry
  br i1 %i.rz, label %_ZNK21libraw_static_table_tixEj.exit, label %.loopexit235, !llvm.loop !174

.loopexit235:                                     ; preds = %bb.bm, %_ZNK21libraw_static_table_tixEj.exit227.3, %.preheader236, %bb.bc
  %i.sa = add nuw nsw i32 %.0183266, 1            ; 2 uses
  %exitcond303.not = icmp eq i32 %i.sa, 42
  br i1 %exitcond303.not, label %.loopexit346, label %bb.ba, !llvm.loop !175

.loopexit346:                                     ; preds = %.loopexit235, %bb.ay, %_ZN6LibRaw23guess_RAFDataGenerationEPh.exit
  store i16 %i.nn, ptr %i.am, align 8, !tbaa !76
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.aa, %bb.aq, %.preheader250.preheader, %.preheader248.preheader, %.loopexit243.loopexit279, %bb.ae, %.preheader241.9, %bb.ao, %bb.ac, %bb.x, %bb.ag, %bb.ak, %bb.al, %bb.ai, %bb.s, %bb.u, %bb.v, %bb.t, %bb.r, %bb.n, %bb.y, %bb.am, %bb.p, %bb.l, %.thread, %bb.an, %.loopexit239, %.loopexit346
  %.1193230 = phi i16 [ %.0192275, %.thread ], [ %.0192275, %bb.ao ], [ %.0192275, %bb.ac ], [ %.0192275, %bb.an ], [ %.0192275, %.loopexit239 ], [ %.0192275, %.loopexit346 ], [ 1, %bb.l ], [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.s ], [ %.0192275, %bb.ag ], [ %.0192275, %bb.y ], [ %.0192275, %bb.x ], [ %.0192275, %bb.am ], [ 1, %bb.r ], [ 1, %bb.t ], [ 1, %bb.v ], [ 1, %bb.u ], [ %.0192275, %bb.ai ], [ %.0192275, %bb.al ], [ %.0192275, %bb.ak ], [ %.0192275, %.preheader241.9 ], [ %.0192275, %bb.aq ], [ %.0192275, %bb.ae ], [ %.0192275, %.loopexit243.loopexit279 ], [ %.0192275, %.preheader248.preheader ], [ %.0192275, %.preheader250.preheader ], [ %.0192275, %bb.aa ]
  %i.sb = load ptr, ptr %i.b, align 8, !tbaa !77  ; 2 uses
  %i.sc = zext i16 %i.cx to i64
  %i.sd = add nsw i64 %i.dd, %i.sc
  %i.se = load ptr, ptr %i.sb, align 8, !tbaa !79
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = call noundef i32 %i.sg(ptr noundef nonnull align 8 dereferenceable(8) %i.sb, i64 noundef %i.sd, i32 noundef 0), !call_target !113 ; 0 uses
  %.not215 = icmp eq i32 %i.cu, 0
  br i1 %.not215, label %._crit_edge, label %bb.k, !llvm.loop !176

._crit_edge:                                      ; preds = %.thread.thread, %bb.j
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 2948
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !74
  %.not216 = icmp eq i32 %i.sj, 0
  br i1 %.not216, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !191 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 4, !tbaa !186
  %i.so = zext i16 %i.sn to i32
  %i.sp = shl i32 %i.so, %i.sl
  %.fr276 = freeze i32 %i.sp
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !187
  %i.ss = zext i16 %i.sr to i32
  %i.st = lshr i32 %i.ss, %i.sl
  %.fr277 = freeze i32 %i.st
  %2 = and i32 %.fr276, 65535
  %3 = shl i32 %.fr277, 16
  %4 = or disjoint i32 %3, %2
  store i32 %4, ptr %i.sm, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge, %bb.bn, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

declare void @_ZN16checked_buffer_tC2Esi(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i32> @llvm.masked.load.v3i32.p0(ptr captures(none), <3 x i1>, <3 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3i32.p0(<3 x i32>, ptr captures(none), <3 x i1>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !80, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !9, i64 16, !15, i64 24, !9, i64 32, !8, i64 36, !14, i64 164, !8, i64 166}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !8, i64 0, !8, i64 4, !8, i64 68, !8, i64 132, !8, i64 196, !8, i64 260, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !8, i64 348, !8, i64 384, !8, i64 420, !9, i64 428, !17, i64 432}
!19 = !{!"float", !8, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !8, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !8, i64 8, !14, i64 136, !14, i64 138, !22, i64 144, !14, i64 152, !14, i64 154, !8, i64 156, !14, i64 220, !8, i64 222, !8, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !8, i64 328, !22, i64 456, !8, i64 464, !22, i64 592, !8, i64 600, !14, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !8, i64 20, !8, i64 148, !8, i64 276, !8, i64 404, !14, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16, !9, i64 32, !8, i64 36, !14, i64 52, !14, i64 54, !8, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !9, i64 84, !19, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !9, i64 100, !14, i64 104, !9, i64 108, !9, i64 112, !14, i64 116, !9, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !8, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 34, !8, i64 54, !8, i64 58, !8, i64 62, !8, i64 66, !8, i64 67, !8, i64 68, !8, i64 69, !8, i64 70, !8, i64 71, !8, i64 73, !8, i64 74, !8, i64 75, !8, i64 76, !8, i64 77, !8, i64 78, !8, i64 82, !8, i64 86, !14, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !8, i64 112, !8, i64 144, !8, i64 145, !8, i64 146, !9, i64 148, !9, i64 152, !9, i64 156, !8, i64 160, !8, i64 162, !14, i64 170, !27, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !9, i64 188, !8, i64 192, !8, i64 212, !9, i64 232, !8, i64 236, !9, i64 248, !17, i64 256, !14, i64 264, !14, i64 266, !8, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !9, i64 0, !15, i64 8, !8, i64 16, !8, i64 24, !8, i64 88, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !8, i64 168, !8, i64 200, !9, i64 264, !8, i64 268, !8, i64 276, !8, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !8, i64 20, !8, i64 53, !19, i64 88, !14, i64 92, !14, i64 94, !8, i64 96, !14, i64 100, !9, i64 104, !9, i64 108, !14, i64 112, !8, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !9, i64 132, !14, i64 136, !8, i64 138, !8, i64 151, !8, i64 156, !9, i64 164, !14, i64 168, !9, i64 172, !14, i64 176, !8, i64 178, !8, i64 196, !9, i64 324, !9, i64 328, !9, i64 332, !8, i64 336, !9, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !8, i64 0, !14, i64 6, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 72, !14, i64 82, !8, i64 84, !14, i64 88, !14, i64 90, !8, i64 92, !8, i64 352, !14, i64 392, !8, i64 394, !8, i64 396, !8, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !9, i64 452, !14, i64 456, !14, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !8, i64 2, !8, i64 3, !9, i64 4, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 17, !14, i64 18, !8, i64 20, !8, i64 24, !8, i64 25, !14, i64 26, !8, i64 28, !8, i64 38, !8, i64 39, !8, i64 40, !14, i64 48, !8, i64 50, !8, i64 51, !8, i64 52, !14, i64 54, !9, i64 56, !14, i64 60, !8, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !9, i64 80, !19, i64 84, !14, i64 88, !9, i64 92, !9, i64 96, !14, i64 100, !8, i64 102, !9, i64 124, !14, i64 128, !9, i64 132, !8, i64 136, !8, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !9, i64 156, !14, i64 160, !8, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !8, i64 12, !8, i64 48, !8, i64 84, !8, i64 120, !8, i64 156, !8, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !8, i64 4, !9, i64 36, !19, i64 40, !8, i64 44, !14, i64 56, !14, i64 58, !9, i64 60, !9, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !8, i64 26, !14, i64 30, !8, i64 32, !8, i64 33, !14, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !8, i64 4, !8, i64 12, !14, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 40, !15, i64 88, !9, i64 96, !8, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !14, i64 64, !8, i64 66, !19, i64 196, !8, i64 200, !9, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !8, i64 14, !8, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 64, !8, i64 112, !19, i64 128, !19, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !8, i64 224, !9, i64 240, !9, i64 244, !19, i64 248, !19, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !19, i64 288, !19, i64 292, !9, i64 296, !9, i64 300}
!43 = !{!"any p2 pointer", !12, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !19, i64 28, !8, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !19, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !9, i64 0, !8, i64 4, !9, i64 16420, !8, i64 16424, !19, i64 32840, !8, i64 32844, !8, i64 32860, !8, i64 32868, !9, i64 32884, !8, i64 32888, !8, i64 32904, !19, i64 32920, !19, i64 32924, !8, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !8, i64 0, !8, i64 131072, !9, i64 147488, !9, i64 147492, !9, i64 147496, !8, i64 147500, !19, i64 147516, !19, i64 147520, !8, i64 147524, !8, i64 147652, !8, i64 147668, !8, i64 147684, !8, i64 147732, !8, i64 147780, !8, i64 147828, !46, i64 147876, !19, i64 147912, !19, i64 147916, !8, i64 147920, !8, i64 147984, !8, i64 148048, !8, i64 148112, !8, i64 148176, !8, i64 148193, !12, i64 148264, !9, i64 148272, !8, i64 148276, !8, i64 148308, !47, i64 148648, !8, i64 181624, !8, i64 185720, !9, i64 187000, !8, i64 187004, !9, i64 187076, !9, i64 187080}
!49 = !{!"long", !8, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !8, i64 0, !8, i64 12, !8, i64 24, !19, i64 36, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !8, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !49, i64 16, !9, i64 24, !8, i64 28, !50, i64 156, !8, i64 204, !8, i64 716, !8, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !8, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !14, i64 4, !14, i64 6, !9, i64 8, !9, i64 12, !17, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !9, i64 0, !8, i64 8}
!55 = !{!"p1 float", !12, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !14, i64 12, !14, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !16, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !18, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !9, i64 5584, !9, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !12, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !12, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !12, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !9, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !8, i64 48}
!63 = !{!"p1 int", !12, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !9, i64 0, !22, i64 8, !22, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !8, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !8, i64 0, !8, i64 24, !14, i64 36, !8, i64 38, !8, i64 46, !8, i64 80, !8, i64 114, !14, i64 148, !14, i64 150, !8, i64 152, !8, i64 192, !8, i64 204, !8, i64 224, !8, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !8, i64 2, !8, i64 10, !9, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !66, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !22, i64 144, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !67, i64 192, !8, i64 440, !9, i64 2488, !9, i64 2492, !14, i64 2496, !14, i64 2498, !9, i64 2500, !9, i64 2504, !9, i64 2508, !9, i64 2512, !9, i64 2516, !9, i64 2520, !9, i64 2524, !8, i64 2528, !14, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !12, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !9, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !8, i64 384344, !70, i64 433496, !70, i64 433504, !8, i64 433512, !71, i64 768232, !72, i64 768248, !8, i64 768400, !8, i64 768416, !8, i64 768432, !12, i64 768448, !12, i64 768456, !12, i64 768464, !49, i64 768472, !12, i64 768480, !12, i64 768488, !12, i64 768496, !12, i64 768504}
!74 = !{!73, !9, i64 2948}
!75 = !{!73, !14, i64 2952}
!76 = !{!73, !14, i64 381728}
!77 = !{!73, !60, i64 381592}
!78 = !{!"vtable pointer", !7, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!85 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 18, baseType: !85)
!87 = !{!81, !82, !83, !86, !86}
!88 = !DISubroutineType(types: !87)
!89 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !80, line: 101, type: !88, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!90 = !{!8, !8, i64 0}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!73, !22, i64 381696}
!93 = !{!73, !22, i64 1344}
!94 = !{!"_ZTS8tag2wb_t", !9, i64 0, !9, i64 4}
!95 = !{!94, !9, i64 0}
!96 = !{!94, !9, i64 4}
!97 = !{!9, !9, i64 0}
!98 = !{!19, !19, i64 0}
!99 = !{!14, !14, i64 0}
!100 = !{!73, !19, i64 2784}
!101 = !{!73, !19, i64 4988}
!102 = !{!"_ZTS21libraw_static_table_t", !63, i64 0, !9, i64 8}
!103 = !{!102, !9, i64 8}
!104 = !{!102, !63, i64 0}
!105 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!106 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !105, line: 109, baseType: !106)
!108 = !{!107, !82}
!109 = !DISubroutineType(types: !108)
!110 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !0, file: !80, line: 103, type: !109, scopeLine: 103, containingType: !0, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!111 = !{!81, !82, !107, !81}
!112 = !DISubroutineType(types: !111)
!113 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !80, line: 102, type: !112, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!114 = distinct !{!114, !91}
!115 = distinct !{null}
!116 = distinct !{!116, !91}
!117 = distinct !{!117, !91}
!118 = distinct !{!118, !91}
!119 = distinct !{!119, !91}
!120 = distinct !{!120, !91}
!121 = distinct !{!121, !91}
!122 = distinct !{!122, !91}
!123 = distinct !{!123, !91}
!124 = !{!73, !9, i64 5556}
!125 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!126 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !125, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !126, i64 0}
!128 = !{!"_ZTSSt6vectorIhSaIhEE", !127, i64 0}
!129 = !{!"_ZTS16checked_buffer_t", !14, i64 0, !17, i64 8, !9, i64 16, !128, i64 24}
!130 = !{!129, !17, i64 8}
!131 = !{!129, !14, i64 0}
!132 = !{!125, !17, i64 0}
!133 = !{!125, !17, i64 16}
!134 = distinct !{!134, !91}
!135 = distinct !{!135, !91}
!136 = !{!17, !17, i64 0}
!137 = !{!73, !14, i64 2906}
!138 = !{!73, !19, i64 4792}
!139 = !{!73, !14, i64 2912}
!140 = !{!73, !14, i64 5098}
!141 = !{!73, !14, i64 2876}
!142 = !{!73, !14, i64 2878}
!143 = !{!73, !14, i64 2884}
!144 = !{!73, !9, i64 2888}
!145 = !{!73, !9, i64 2892}
!146 = !{!73, !14, i64 2910}
!147 = !{!73, !14, i64 2920}
!148 = !{!73, !14, i64 2908}
!149 = !{!73, !9, i64 3108}
end_hunk_0
