inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_divmod_normal:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %2, ptr noundef nonnull readonly align 1 %.1179183, i64 noundef range(i64 1, 0) %i.fz, i1 noundef false) #24
  br label %bary_small_rshift.exit

bary_small_rshift.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.af, %rbimpl_size_mul_or_raise.exit130, %bary_small_lshift.exit124
  %.2145149 = phi ptr [ %.1179183, %bb.af ], [ %.086141, %bary_small_lshift.exit124 ], [ %.1179183, %rbimpl_size_mul_or_raise.exit130 ], [ %.086141, %middle.block ], [ %.086141, %scalar.ph ], [ %.086141, %scalar.ph.prol.loopexit ] ; 2 uses
  %.not108152 = icmp eq i64 %3, %7
  br i1 %.not108152, label %.loopexit151, label %.lr.ph.preheader
end_hunk_0
begin_hunk_1_@rb_integer_unpack:bb.a
  call void @rb_big_resize(i64 noundef %.3, i64 noundef %.02332.i.i)
  br label %bigtrunc.exit

bigtrunc.exit:                                    ; preds = %bb.at, %.thread111, %bb.z, %bb.x, %bb.ay, %bb.ax, %bb.av, %BIGNUM_DIGITS.exit.i.i, %bb.ap, %bb.ao, %BIGNUM_LEN.exit19.i, %BIGNUM_DIGITS.exit.i
  %.1 = phi i64 [ %i.cm, %bb.z ], [ %.3, %bb.ao ], [ %.3, %BIGNUM_DIGITS.exit.i ], [ %.3, %BIGNUM_LEN.exit19.i ], [ %.3, %bb.ap ], [ %i.cj, %bb.x ], [ %i.gg, %bb.ax ], [ %.3, %bb.ay ], [ %i.ge, %bb.av ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %.thread111 ], [ 1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %.1
}
end_hunk_1
begin_hunk_2_@rb_absint_numwords:bb.a
  %exitcond.not.i.i.i9.i.1 = phi i1 [ true, %bb.o ], [ false, %.critedge.preheader.i.i ], [ false, %.critedge2.i.i ] ; 2 uses
  %.0103142.lcssa172180183.i.i = phi i64 [ 2, %bb.o ], [ 3, %.critedge.preheader.i.i ], [ 1, %.critedge2.i.i ] ; 7 uses
  %i.cm = shl nuw nsw i64 %.0103142.lcssa172180183.i.i, 2 ; 2 uses
  %i.cn = call nonnull ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.a, i64 noundef range(i64 1, 0) %i.cm, i64 noundef 16) #24, !alias.scope !168 ; 0 uses
  %i.co = sub nuw nsw i64 16, %i.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0103142.lcssa172180183.i.sroa.phi.i, i8 0, i64 %i.co, i1 false), !tbaa !7
  %i.cp = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bz)
end_hunk_2
begin_hunk_3_@bary_pack:bb.a

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.f = icmp eq ptr %1, %.0476                   ; 3 uses
  %spec.select = select i1 %i.f, i32 0, i32 %0    ; 16 uses
  %i.g = and i32 %7, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.as
end_hunk_3
begin_hunk_4_@bary_pack:bb.a

bb.ab:                                            ; preds = %.critedge5.thread
  %.not.i362 = icmp eq i64 %i.cv, 0
  br i1 %.not.i362, label %ruby_nonempty_memcpy.exit364, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.cv, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit364

ruby_nonempty_memcpy.exit364:                     ; preds = %bb.ac, %bb.ab, %ruby_nonempty_memcpy.exit
  %.0289544 = phi i64 [ %.0289559, %ruby_nonempty_memcpy.exit ], [ %.0289603, %bb.ab ], [ %.0289603, %bb.ac ]
  %.not324502 = phi i1 [ false, %ruby_nonempty_memcpy.exit ], [ true, %bb.ab ], [ true, %bb.ac ]
  %.not326 = phi i1 [ true, %ruby_nonempty_memcpy.exit ], [ false, %bb.ab ], [ false, %bb.ac ]
  %i.dd = icmp sgt i32 %spec.select, -1
  %i.de = and i32 %7, 128
  %.not325 = icmp eq i32 %i.de, 0
  %or.cond344 = or i1 %.not325, %i.dd
  br i1 %or.cond344, label %bytes_2comp.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit364
  %.not24.i = icmp eq i64 %i.cv, 0
  br i1 %.not24.i, label %bytes_2comp.exit, label %iter.check
end_hunk_4
begin_hunk_5_@bary_pack:bb.a
bytes_2comp.exit:                                 ; preds = %bb.ae, %bb.ad
  br i1 %.not324502, label %bytes_2comp.exit.thread651, label %bytes_2comp.exit.thread

bytes_2comp.exit.thread651:                       ; preds = %bytes_2comp.exit
  %i.dv = add i64 %.0289544, -1
  %i.dw = icmp eq i64 %i.cv, %i.dv
  br i1 %i.dw, label %bb.af, label %.thread494

bb.af:                                            ; preds = %bytes_2comp.exit.thread651
  %i.dx = getelementptr i8, ptr %1, i64 %i.cv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.dz = icmp eq i8 %i.dy, 1
  br i1 %i.dz, label %.thread530, label %.thread494

bytes_2comp.exit.thread:                          ; preds = %.lr.ph21.i, %bytes_2comp.exit, %ruby_nonempty_memcpy.exit364
  %i.ea = shl nsw i32 %spec.select, 1
end_hunk_5
begin_hunk_6_@bary_pack:bb.a

rbimpl_size_mul_or_raise.exit370:                 ; preds = %bb.al
  %.not.i371 = icmp eq i64 %i.ek, 0
  br i1 %.not.i371, label %ruby_nonempty_memcpy.exit373, label %bb.an

bb.an:                                            ; preds = %rbimpl_size_mul_or_raise.exit370
  %i.er = shl nuw i64 %i.ek, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %1, i64 noundef range(i64 1, 0) %i.er, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit373

ruby_nonempty_memcpy.exit373:                     ; preds = %bb.an, %rbimpl_size_mul_or_raise.exit370, %.lr.ph595.preheader, %ruby_nonempty_memcpy.exit369
  %.0284 = phi i32 [ 0, %.lr.ph595.preheader ], [ 0, %ruby_nonempty_memcpy.exit369 ], [ 1, %rbimpl_size_mul_or_raise.exit370 ], [ 1, %bb.an ] ; 5 uses
  %i.es = icmp sgt i32 %spec.select, -1
  %i.et = and i32 %7, 128
  %.not319 = icmp eq i32 %i.et, 0
  %or.cond355 = or i1 %.not319, %i.es
  br i1 %or.cond355, label %bary_2comp.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %ruby_nonempty_memcpy.exit373
  %.not27.i = icmp eq i64 %i.ek, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i374
end_hunk_6
begin_hunk_7_@bary_pack:bb.a
bary_2comp.exit:                                  ; preds = %bb.ap, %bb.ao
  br i1 %.not317, label %bary_2comp.exit.thread663, label %bary_2comp.exit.thread

bary_2comp.exit.thread663:                        ; preds = %bary_2comp.exit
  %i.fm = add nsw i64 %i.ej, -1
  %i.fn = icmp eq i64 %i.ek, %i.fm
  br i1 %i.fn, label %bb.ar, label %bary_2comp.exit.thread
end_hunk_7
begin_hunk_8_@bary_pack:bb.a
  br label %bary_2comp.exit.thread

bary_2comp.exit.thread:                           ; preds = %.lr.ph26.i, %middle.block, %bb.aq, %bb.ar, %bary_2comp.exit, %bary_2comp.exit.thread663, %ruby_nonempty_memcpy.exit373
  %.2286 = phi i32 [ %.0284, %ruby_nonempty_memcpy.exit373 ], [ %.0284, %bary_2comp.exit ], [ %spec.select356, %bb.ar ], [ 1, %bary_2comp.exit.thread663 ], [ %.0284, %bb.aq ], [ %.0284, %middle.block ], [ %.0284, %.lr.ph26.i ]
  %i.fr = and i32 %7, 80
  %.not320.not = icmp eq i32 %i.fr, 16            ; 2 uses
  %i.fs = icmp ne i64 %i.ek, 0
  %or.cond608 = and i1 %.not320.not, %i.fs
  br i1 %or.cond608, label %.lr.ph598.preheader, label %.loopexit554
end_hunk_8
begin_hunk_9_@bary_pack:bb.a
  %exitcond628.not = icmp eq i64 %i.gb, %i.ek
  br i1 %exitcond628.not, label %.loopexit554, label %.lr.ph598, !llvm.loop !186

.loopexit554:                                     ; preds = %.lr.ph598, %middle.block706, %bary_2comp.exit.thread
  %i.gc = xor i1 %.not315, %.not320.not
  %i.gd = icmp eq i64 %4, 0
  %or.cond611.not = or i1 %i.gd, %i.gc
  br i1 %or.cond611.not, label %.loopexit, label %.lr.ph601.preheader
end_hunk_9
begin_hunk_10_@bary_pack:bb.a
  br i1 %i.hc, label %.lr.ph.i379, label %bary_swap.exit383, !llvm.loop !187

bary_swap.exit383:                                ; preds = %.lr.ph.i379, %.loopexit
  %.not322 = icmp ne i32 %.2286, 0
  %i.hd = zext i1 %.not322 to i32
  %spec.select357 = shl nsw i32 %spec.select, %i.hd
  br label %.thread494
end_hunk_10
begin_hunk_11_@bary_pack:bb.a
  %i.nn = getelementptr i8, ptr %.0262, i64 %.034.i394
  br i1 %i.nm, label %.thread494, label %bb.bs

.thread494:                                       ; preds = %bb.bu, %.thread670, %bb.af, %bytes_2comp.exit.thread651, %bb.w, %bb.x, %bb.s, %bb.q, %.thread530, %bytes_2comp.exit.thread, %bb.o, %bb.m, %bb.k, %bb.bq, %bary_swap.exit383, %bb.e
  %.4 = phi i32 [ %.4261, %bb.bq ], [ 0, %bb.e ], [ %i.ao, %bb.m ], [ %spec.select357, %bary_swap.exit383 ], [ 0, %.thread670 ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.aa, %bb.k ], [ %spec.select, %.thread530 ], [ %i.ea, %bytes_2comp.exit.thread ], [ %i.co, %bb.x ], [ -1, %bb.w ], [ %i.bw, %bb.s ], [ -2, %bytes_2comp.exit.thread651 ], [ -2, %bb.af ], [ %.4261, %bb.bu ]
  ret i32 %.4
}

end_hunk_11
begin_hunk_12_@str2big_karatsuba:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.iv, ptr noundef nonnull readonly align 1 %i.iu, i64 noundef range(i64 1, 0) %i.iw, i1 noundef false) #24
  br label %bary_add.exit

bary_add.exit:                                    ; preds = %bb.z, %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177, %middle.block, %.preheader72.i.i159, %.preheader70.i.i, %bb.r, %.loopexit71.i.i169, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i, %rbimpl_size_mul_or_raise.exit
  %i.ix = add i64 %.2217, %i.ay                   ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %4
  %indvar.next = add i64 %indvar, 1
end_hunk_12
begin_hunk_13_@big2str_generic:bb.a
  br label %big2str_alloc.exit.i

big2str_alloc.exit.i:                             ; preds = %bb.z, %RSTRING_PTR.exit.i.i
  %i.cu = phi ptr [ %i.cs, %RSTRING_PTR.exit.i.i ], [ %i.ct, %bb.z ] ; 2 uses
  %.not.i38.i = icmp eq i64 %.0.i66, 65
  br i1 %.not.i38.i, label %ruby_nonempty_memcpy.exit.i, label %bb.aa

end_hunk_13
begin_hunk_14_@big2str_generic:bb.a
  %.pre84 = load ptr, ptr %i.bu, align 8, !tbaa !248
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %big2str_alloc.exit.i, %bb.aa
  %i.cv = phi ptr [ %.pre84, %bb.aa ], [ %i.cu, %big2str_alloc.exit.i ]
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ci
  store ptr %i.cw, ptr %i.bu, align 8, !tbaa !248
end_hunk_14
begin_hunk_15_@big_shift2:bb.a
  br label %bary_pack.exit

bary_pack.exit:                                   ; preds = %ruby_nonempty_memcpy.exit364.i, %bb.h, %.thread530.i
  %.4.i = phi i32 [ %spec.select.i, %.thread530.i ], [ 0, %bb.h ], [ %i.bi, %ruby_nonempty_memcpy.exit364.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = lshr i32 %.4.i, 31                      ; 2 uses
end_hunk_15
begin_hunk_16_@big2str_karatsuba:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.af
  %i.ai = sub i64 65, %.0.i136                    ; 4 uses
  %i.aj = add i64 %i.ai, %5                       ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 9223372036854775806
  br i1 %i.ak, label %bb.k, label %bb.l
end_hunk_16
begin_hunk_17_@big2str_karatsuba:bb.a
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.m, %bb.l
  %i.au = phi ptr [ %i.at, %bb.m ], [ %i.as, %bb.l ] ; 4 uses
  store ptr %i.au, ptr %i.s, align 8, !tbaa !248
  %i.av = load i32, ptr %0, align 8, !tbaa !242
  %.not.i.i = icmp eq i32 %i.av, 0
end_hunk_17
begin_hunk_18_@big2str_karatsuba:bb.a
  %i.aw = getelementptr i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %i.s, align 8, !tbaa !248
  store i8 45, ptr %i.au, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !248
  br label %big2str_alloc.exit.i

big2str_alloc.exit.i:                             ; preds = %bb.n, %RSTRING_PTR.exit.i.i
  %6 = phi ptr [ %i.au, %RSTRING_PTR.exit.i.i ], [ %.pre.i, %bb.n ]
  %.not.i38.i = icmp eq i64 %.0.i136, 65
  br i1 %.not.i38.i, label %ruby_nonempty_memcpy.exit.i, label %bb.o

bb.o:                                             ; preds = %big2str_alloc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %6, ptr noundef nonnull readonly align 1 %i.ah, i64 noundef range(i64 1, 0) %i.ai, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit.i

end_hunk_18
begin_hunk_19_@big2str_karatsuba:bb.a
  %i.cc = sext i32 %i.cb to i64
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %big2str_alloc.exit.i, %bb.o, %.unr-lcssa336
  %.034.i = phi i64 [ %i.cc, %.unr-lcssa336 ], [ %i.ai, %bb.o ], [ %i.ai, %big2str_alloc.exit.i ]
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !248
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.034.i
  store ptr %i.ce, ptr %i.s, align 8, !tbaa !248
end_hunk_19
begin_hunk_20_@big2str_karatsuba:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.fn = getelementptr i8, ptr %i.a, i64 %i.fl
  %i.fo = sub i64 65, %.0.i162                    ; 4 uses
  %i.fp = add i64 %i.fo, %5                       ; 2 uses
  %i.fq = icmp ugt i64 %i.fp, 9223372036854775806
  br i1 %i.fq, label %bb.am, label %bb.an
end_hunk_20
begin_hunk_21_@big2str_karatsuba:bb.a
  br label %RSTRING_PTR.exit.i.i165

RSTRING_PTR.exit.i.i165:                          ; preds = %bb.ao, %bb.an
  %i.ga = phi ptr [ %i.fz, %bb.ao ], [ %i.fy, %bb.an ] ; 4 uses
  store ptr %i.ga, ptr %i.et, align 8, !tbaa !248
  %i.gb = load i32, ptr %0, align 8, !tbaa !242
  %.not.i.i166 = icmp eq i32 %i.gb, 0
end_hunk_21
begin_hunk_22_@big2str_karatsuba:bb.a
  %i.gc = getelementptr i8, ptr %i.ga, i64 1
  store ptr %i.gc, ptr %i.et, align 8, !tbaa !248
  store i8 45, ptr %i.ga, align 1, !tbaa !15
  %.pre.i166 = load ptr, ptr %i.et, align 8, !tbaa !248
  br label %big2str_alloc.exit.i167

big2str_alloc.exit.i167:                          ; preds = %bb.ap, %RSTRING_PTR.exit.i.i165
  %7 = phi ptr [ %i.ga, %RSTRING_PTR.exit.i.i165 ], [ %.pre.i166, %bb.ap ]
  %.not.i38.i168 = icmp eq i64 %.0.i162, 65
  br i1 %.not.i38.i168, label %ruby_nonempty_memcpy.exit.i158, label %bb.aq

bb.aq:                                            ; preds = %big2str_alloc.exit.i167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %7, ptr noundef nonnull readonly align 1 %i.fn, i64 noundef range(i64 1, 0) %i.fo, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit.i158

end_hunk_22
begin_hunk_23_@big2str_karatsuba:bb.a
  %i.hh = sext i32 %i.hg to i64
  br label %ruby_nonempty_memcpy.exit.i158

ruby_nonempty_memcpy.exit.i158:                   ; preds = %big2str_alloc.exit.i167, %bb.aq, %.unr-lcssa330
  %.034.i159 = phi i64 [ %i.hh, %.unr-lcssa330 ], [ %i.fo, %bb.aq ], [ %i.fo, %big2str_alloc.exit.i167 ]
  %i.hi = load ptr, ptr %i.et, align 8, !tbaa !248
  %i.hj = getelementptr i8, ptr %i.hi, i64 %.034.i159
  store ptr %i.hj, ptr %i.et, align 8, !tbaa !248
end_hunk_23
