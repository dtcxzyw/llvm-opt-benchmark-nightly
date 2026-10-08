Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@compile_xclass_matchingpath:bb.a
  br label %sljit_emit_op2.exit2254

bb.aoj:                                           ; preds = %bb.aoh, %bb.aof
  %.0.i269.ph.i3008 = phi ptr [ %i.eni, %bb.aoh ], [ %i.enc, %bb.aof ] ; 2 uses
  %i.enj = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i3008, i64 1
  store i8 4, ptr %.0.i269.ph.i3008, align 1, !tbaa !97
  %i.enk = load i64, ptr %i.bvj, align 8, !tbaa !136
  %i.enl = add i64 %i.enk, 4
  store i64 %i.enl, ptr %i.bvj, align 8, !tbaa !136
  store <4 x i8> <i8 72, i8 -125, i8 -64, i8 49>, ptr %i.enj, align 1, !tbaa !97
  br label %sljit_emit_op2.exit2254

sljit_emit_op2.exit2254:                          ; preds = %bb.aks, %bb.akq, %emit_mov.exit2940, %bb.ald, %sljit_emit_op2.exit2170, %sljit_emit_op2u.exit2174thread-pre-split, %sljit_emit_op_flags.exit2182.critedge, %bb.alz, %sljit_emit_op_flags.exit2182, %sljit_emit_op2u.exit2694, %sljit_emit_op2.exit2202, %bb.amj, %bb.amn, %bb.amu, %sljit_emit_op2u.exit2210.thread, %sljit_emit_op2u.exit2210, %sljit_emit_op_flags.exit2218, %bb.anq, %sljit_emit_op2.exit2238.thread, %sljit_emit_op2.exit2238, %sljit_emit_op2u.exit2242thread-pre-split, %sljit_emit_op_flags.exit2250.critedge, %bb.alm, %sljit_emit_op2.exit2163, %sljit_emit_op2.exit2186thread-pre-split, %sljit_emit_op2u.exit2190thread-pre-split.critedge, %sljit_emit_op2u.exit2190thread-pre-split, %sljit_emit_op_flags.exit2198.critedge, %bb.ame, %sljit_emit_op_flags.exit2198, %sljit_emit_cmp.exit2206, %bb.and, %sljit_emit_op2.exit2222.thread, %sljit_emit_op2.exit2222, %sljit_emit_op2u.exit2226thread-pre-split, %sljit_emit_op_flags.exit2234.critedge, %sljit_emit_op_flags.exit2234, %bb.aod, %bb.aoj, %bb.aoi, %sljit_emit_op_flags.exit2250
  %.031.i2204368136873692369837043709371537213726 = phi ptr [ %.0.i.ph.i2683, %bb.aoj ], [ %.0.i.ph.i2683, %sljit_emit_op_flags.exit2250 ], [ %.0.i.ph.i2683, %bb.aoi ], [ %.0.i.ph.i2683, %bb.aod ], [ %.0.i.ph.i2683, %sljit_emit_op_flags.exit2234 ], [ null, %bb.alm ], [ %.0.i.ph.i2683, %sljit_emit_op_flags.exit2234.critedge ], [ %.0.i.ph.i2683, %sljit_emit_op2u.exit2226thread-pre-split ], [ %.0.i.ph.i2683, %sljit_emit_op2.exit2222 ], [ %.0.i.ph.i2683, %sljit_emit_op2.exit2222.thread ], [ %.0.i.ph.i2683, %bb.and ], [ null, %bb.ame ], [ null, %sljit_emit_op_flags.exit2198 ], [ %.0.i.ph.i2683, %sljit_emit_cmp.exit2206 ], [ null, %sljit_emit_op_flags.exit2198.critedge ], [ null, %sljit_emit_op2u.exit2190thread-pre-split ], [ null, %sljit_emit_op2u.exit2190thread-pre-split.critedge ], [ null, %sljit_emit_op2.exit2186thread-pre-split ], [ null, %sljit_emit_op2.exit2163 ], [ %.0.i.ph.i2683, %sljit_emit_op_flags.exit2250.critedge ], [ %.0.i.ph.i2683, %sljit_emit_op2u.exit2242thread-pre-split ], [ %.0.i.ph.i2683, %sljit_emit_op2.exit2238 ], [ %.0.i.ph.i2683, %sljit_emit_op2.exit2238.thread ], [ %.0.i.ph.i2683, %bb.anq ], [ %.0.i.ph.i2683, %sljit_emit_op_flags.exit2218 ], [ %.0.i.ph.i2683, %sljit_emit_op2u.exit2210 ], [ %.0.i.ph.i2683, %sljit_emit_op2u.exit2210.thread ], [ null, %bb.amu ], [ null, %bb.amn ], [ null, %bb.amj ], [ null, %sljit_emit_op2.exit2202 ], [ null, %sljit_emit_op2u.exit2694 ], [ null, %sljit_emit_op_flags.exit2182 ], [ null, %bb.alz ], [ null, %sljit_emit_op_flags.exit2182.critedge ], [ null, %sljit_emit_op2u.exit2174thread-pre-split ], [ null, %sljit_emit_op2.exit2170 ], [ null, %bb.ald ], [ null, %emit_mov.exit2940 ], [ null, %bb.akq ], [ null, %bb.aks ] ; 3 uses
  %i.enm = call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.b) ; 2 uses
  %.not.i2255 = icmp eq ptr %.031.i2204368136873692369837043709371537213726, null
  %.not6.i2256 = icmp eq ptr %i.enm, null
  %or.cond.i2257 = or i1 %.not.i2255, %.not6.i2256
  br i1 %or.cond.i2257, label %sljit_set_label.exit2258, label %bb.aok, !prof !153

bb.aok:                                           ; preds = %sljit_emit_op2.exit2254
  %i.enn = getelementptr inbounds nuw i8, ptr %.031.i2204368136873692369837043709371537213726, i64 16 ; 2 uses
  %i.eno = load i64, ptr %i.enn, align 8, !tbaa !142
  %i.enp = and i64 %i.eno, -2
  store i64 %i.enp, ptr %i.enn, align 8, !tbaa !142
  %i.enq = getelementptr inbounds nuw i8, ptr %.031.i2204368136873692369837043709371537213726, i64 24
  store ptr %i.enm, ptr %i.enq, align 8, !tbaa !97
  br label %sljit_set_label.exit2258

sljit_set_label.exit2258:                         ; preds = %sljit_emit_op2.exit2254, %bb.aok
  %i.enr = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i2259 = icmp eq i32 %i.enr, 0
  br i1 %.not.i2259, label %bb.aol, label %sljit_emit_op2u.exit2262, !prof !130

bb.aol:                                           ; preds = %sljit_set_label.exit2258
  store i32 0, ptr %i.bvg, align 8, !tbaa !132
  %i.ens = load ptr, ptr %i.bvh, align 8, !tbaa !124 ; 2 uses
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ens, i64 8 ; 2 uses
  %i.enu = load i64, ptr %i.ent, align 8, !tbaa !134 ; 2 uses
  %i.env = add i64 %i.enu, 5                      ; 2 uses
  %i.enw = icmp ult i64 %i.env, 4081
  br i1 %i.enw, label %bb.aom, label %bb.aon

bb.aom:                                           ; preds = %bb.aol
  %i.enx = getelementptr inbounds nuw i8, ptr %i.ens, i64 16
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 %i.enu
  store i64 %i.env, ptr %i.ent, align 8, !tbaa !134
  br label %bb.aoq

bb.aon:                                           ; preds = %bb.aol
  %i.enz = load ptr, ptr %i.bvi, align 8, !tbaa !123 ; 2 uses
  %.val.i.i2755 = load ptr, ptr %i.enz, align 8, !tbaa !100
  %i.eoa = getelementptr i8, ptr %i.enz, i64 16
  %.val18.i.i2756 = load ptr, ptr %i.eoa, align 8, !tbaa !101
  %i.eob = call ptr %.val.i.i2755(i64 noundef 4096, ptr noundef %.val18.i.i2756) #20, !inline_history !4 ; 5 uses
  %.not.i.i2757 = icmp eq ptr %i.eob, null
  br i1 %.not.i.i2757, label %bb.aop, label %bb.aoo, !prof !61

bb.aoo:                                           ; preds = %bb.aon
  %i.eoc = load ptr, ptr %i.bvh, align 8, !tbaa !124
  store ptr %i.eoc, ptr %i.eob, align 8, !tbaa !135
  store ptr %i.eob, ptr %i.bvh, align 8, !tbaa !124
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eob, i64 8
  store i64 5, ptr %i.eod, align 8, !tbaa !134
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.eob, i64 16
  br label %bb.aoq

bb.aop:                                           ; preds = %bb.aon
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %sljit_emit_op2u.exit2262

bb.aoq:                                           ; preds = %bb.aoo, %bb.aom
  %.0.i269.ph.i2758 = phi ptr [ %i.eoe, %bb.aoo ], [ %i.eny, %bb.aom ] ; 2 uses
  %i.eof = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i2758, i64 1
  store i8 4, ptr %.0.i269.ph.i2758, align 1, !tbaa !97
  %i.eog = load i64, ptr %i.bvj, align 8, !tbaa !136
  %i.eoh = add i64 %i.eog, 4
  store i64 %i.eoh, ptr %i.bvj, align 8, !tbaa !136
  store <4 x i8> <i8 72, i8 -125, i8 -7, i8 0>, ptr %i.eof, align 1, !tbaa !97
  br label %sljit_emit_op2u.exit2262

sljit_emit_op2u.exit2262:                         ; preds = %sljit_set_label.exit2258, %bb.aop, %bb.aoq
  %i.eoi = xor i32 %.41220, 1
  %i.eoj = call fastcc ptr @sljit_emit_jump(ptr noundef nonnull %i.b, i32 noundef %i.eoi)
  br label %sljit_emit_cmp.exit2027

sljit_emit_cmp.exit2027:                          ; preds = %sljit_emit_op2u.exit, %sljit_emit_op2u.exit4498, %sljit_emit_op2u.exit4498.thread, %sljit_set_label.exit2122, %sljit_emit_op2u.exit.thread, %sljit_set_label.exit2022, %bb.xo, %sljit_emit_op2u.exit2262, %sljit_emit_op_flags.exit2159, %sljit_emit_op_flags.exit1897, %._crit_edge3860, %sljit_emit_op_flags.exit1787, %bb.xp
  %.11251 = phi i64 [ %.012503863, %bb.xo ], [ %.012503863, %bb.xp ], [ 9, %sljit_emit_op_flags.exit1787 ], [ %.012503863, %._crit_edge3860 ], [ 0, %sljit_emit_op_flags.exit1897 ], [ 65296, %sljit_emit_op2u.exit2262 ], [ %.012503863, %sljit_emit_op2u.exit.thread ], [ 0, %sljit_emit_op_flags.exit2159 ], [ %.012503863, %sljit_set_label.exit2022 ], [ %.012503863, %sljit_emit_op2u.exit ], [ %.012503863, %sljit_set_label.exit2122 ], [ %.012503863, %sljit_emit_op2u.exit4498 ], [ %.012503863, %sljit_emit_op2u.exit4498.thread ]
  %.31233 = phi ptr [ null, %bb.xo ], [ null, %bb.xp ], [ %i.cpy, %sljit_emit_op_flags.exit1787 ], [ %i.cub, %._crit_edge3860 ], [ %i.day, %sljit_emit_op_flags.exit1897 ], [ %i.eoj, %sljit_emit_op2u.exit2262 ], [ %i.dmp, %sljit_emit_op2u.exit.thread ], [ %i.dzq, %sljit_emit_op_flags.exit2159 ], [ null, %sljit_set_label.exit2022 ], [ null, %sljit_emit_op2u.exit ], [ null, %sljit_set_label.exit2122 ], [ null, %sljit_emit_op2u.exit4498 ], [ %i.dvk, %sljit_emit_op2u.exit4498.thread ]
  %.24 = phi i32 [ %i.bvo, %bb.xo ], [ %.233869, %bb.xp ], [ %i.bvo, %sljit_emit_op_flags.exit1787 ], [ %i.bvo, %._crit_edge3860 ], [ %i.bvo, %sljit_emit_op_flags.exit1897 ], [ %i.bvo, %sljit_emit_op2u.exit2262 ], [ %i.bvo, %sljit_emit_op2u.exit.thread ], [ %i.bvo, %sljit_emit_op_flags.exit2159 ], [ %i.bvo, %sljit_set_label.exit2022 ], [ %i.bvo, %sljit_emit_op2u.exit ], [ %i.bvo, %sljit_set_label.exit2122 ], [ %i.bvo, %sljit_emit_op2u.exit4498 ], [ %i.bvo, %sljit_emit_op2u.exit4498.thread ]
  %i.eok = getelementptr inbounds nuw i8, ptr %.2412833862, i64 3
  br label %sljit_emit_cmp.exit1717

sljit_emit_cmp.exit1717:                          ; preds = %bb.xm, %bb.vu, %sljit_emit_cmp.exit2027, %sljit_emit_op_flags.exit1733, %sljit_emit_op_flags.exit
  %.28 = phi ptr [ %.251284, %bb.vu ], [ %.251284, %sljit_emit_op_flags.exit ], [ %i.eok, %sljit_emit_cmp.exit2027 ], [ %.27, %bb.xm ], [ %.27, %sljit_emit_op_flags.exit1733 ] ; 4 uses
  %.21252 = phi i64 [ %.012503863, %bb.vu ], [ %.012503863, %sljit_emit_op_flags.exit ], [ %.11251, %sljit_emit_cmp.exit2027 ], [ %.41257, %bb.xm ], [ %.41257, %sljit_emit_op_flags.exit1733 ] ; 4 uses
  %.41234 = phi ptr [ %i.cba, %bb.vu ], [ %i.caw, %sljit_emit_op_flags.exit ], [ %.31233, %sljit_emit_cmp.exit2027 ], [ %i.cjy, %bb.xm ], [ %i.cjt, %sljit_emit_op_flags.exit1733 ] ; 2 uses
  %.25 = phi i32 [ %i.bvo, %bb.vu ], [ %i.bvo, %sljit_emit_op_flags.exit ], [ %.24, %sljit_emit_cmp.exit2027 ], [ %i.bvo, %bb.xm ], [ %i.bvo, %sljit_emit_op_flags.exit1733 ] ; 5 uses
  %.11215 = phi i32 [ 0, %bb.vu ], [ 0, %sljit_emit_op_flags.exit ], [ %.012143870, %sljit_emit_cmp.exit2027 ], [ 0, %bb.xm ], [ 0, %sljit_emit_op_flags.exit1733 ] ; 4 uses
  %.not1361 = icmp eq ptr %.41234, null
  br i1 %.not1361, label %add_jump.exit2269, label %bb.aor

bb.aor:                                           ; preds = %sljit_emit_cmp.exit1717
  %i.eol = icmp sgt i32 %.25, 0
  %i.eom = select i1 %i.eol, ptr %i.f, ptr %2     ; 2 uses
  %i.eon = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i.i2263 = icmp eq i32 %i.eon, 0
  br i1 %.not.i.i2263, label %bb.aos, label %add_jump.exit2269, !prof !130

bb.aos:                                           ; preds = %bb.aor
  %i.eoo = load ptr, ptr %i.bvk, align 8, !tbaa !125 ; 2 uses
  %i.eop = getelementptr inbounds nuw i8, ptr %i.eoo, i64 8 ; 2 uses
  %i.eoq = load i64, ptr %i.eop, align 8, !tbaa !134 ; 2 uses
  %i.eor = add i64 %i.eoq, 16                     ; 2 uses
  %i.eos = icmp ult i64 %i.eor, 4081
  br i1 %i.eos, label %bb.aot, label %bb.aou

bb.aot:                                           ; preds = %bb.aos
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eoo, i64 16
  %i.eou = getelementptr inbounds nuw i8, ptr %i.eot, i64 %i.eoq
  store i64 %i.eor, ptr %i.eop, align 8, !tbaa !134
  br label %sljit_alloc_memory.exit.i2267

bb.aou:                                           ; preds = %bb.aos
  %i.eov = load ptr, ptr %i.bvi, align 8, !tbaa !123 ; 2 uses
  %.val.i.i.i2264 = load ptr, ptr %i.eov, align 8, !tbaa !100
  %i.eow = getelementptr i8, ptr %i.eov, i64 16
  %.val18.i.i.i2265 = load ptr, ptr %i.eow, align 8, !tbaa !101
  %i.eox = call ptr %.val.i.i.i2264(i64 noundef 4096, ptr noundef %.val18.i.i.i2265) #20, !inline_history !17 ; 5 uses
  %.not.i.i.i2266 = icmp eq ptr %i.eox, null
  br i1 %.not.i.i.i2266, label %bb.aov, label %bb.aow, !prof !61

bb.aov:                                           ; preds = %bb.aou
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %add_jump.exit2269

bb.aow:                                           ; preds = %bb.aou
  %i.eoy = load ptr, ptr %i.bvk, align 8, !tbaa !125
  store ptr %i.eoy, ptr %i.eox, align 8, !tbaa !135
  store ptr %i.eox, ptr %i.bvk, align 8, !tbaa !125
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.eox, i64 8
  store i64 16, ptr %i.eoz, align 8, !tbaa !134
  %i.epa = getelementptr inbounds nuw i8, ptr %i.eox, i64 16
  br label %sljit_alloc_memory.exit.i2267

sljit_alloc_memory.exit.i2267:                    ; preds = %bb.aow, %bb.aot
  %.0.i.i2268 = phi ptr [ %i.epa, %bb.aow ], [ %i.eou, %bb.aot ] ; 3 uses
  %i.epb = load ptr, ptr %i.eom, align 8, !tbaa !151
  %i.epc = getelementptr inbounds nuw i8, ptr %.0.i.i2268, i64 8
  store ptr %i.epb, ptr %i.epc, align 8, !tbaa !157
  store ptr %.41234, ptr %.0.i.i2268, align 8, !tbaa !156
  store ptr %.0.i.i2268, ptr %i.eom, align 8, !tbaa !151
  br label %add_jump.exit2269

add_jump.exit2269:                                ; preds = %bb.xl, %bb.xk, %bb.vs, %bb.vt, %bb.ww, %bb.ve, %sljit_alloc_memory.exit.i2267, %bb.aov, %bb.aor, %sljit_emit_cmp.exit1717
  %.112153740 = phi i32 [ %.11215, %sljit_alloc_memory.exit.i2267 ], [ %.11215, %sljit_emit_cmp.exit1717 ], [ %.11215, %bb.aor ], [ %.11215, %bb.aov ], [ 0, %bb.xl ], [ 0, %bb.xk ], [ 0, %bb.vt ], [ 0, %bb.vs ], [ %i.cie, %bb.ww ], [ %i.bzh, %bb.ve ]
  %.253739 = phi i32 [ %.25, %sljit_alloc_memory.exit.i2267 ], [ %.25, %sljit_emit_cmp.exit1717 ], [ %.25, %bb.aor ], [ %.25, %bb.aov ], [ %i.bvo, %bb.xl ], [ %i.bvo, %bb.xk ], [ %i.bvo, %bb.vt ], [ %i.bvo, %bb.vs ], [ %i.bvo, %bb.ww ], [ %i.bvo, %bb.ve ]
  %.212523738 = phi i64 [ %.21252, %sljit_alloc_memory.exit.i2267 ], [ %.21252, %sljit_emit_cmp.exit1717 ], [ %.21252, %bb.aor ], [ %.21252, %bb.aov ], [ %.41257, %bb.xl ], [ %.41257, %bb.xk ], [ %.012503863, %bb.vt ], [ %.012503863, %bb.vs ], [ %.41257, %bb.ww ], [ %.012503863, %bb.ve ]
  %.283737 = phi ptr [ %.28, %sljit_alloc_memory.exit.i2267 ], [ %.28, %sljit_emit_cmp.exit1717 ], [ %.28, %bb.aor ], [ %.28, %bb.aov ], [ %.27, %bb.xl ], [ %.27, %bb.xk ], [ %.251284, %bb.vt ], [ %.251284, %bb.vs ], [ %.27, %bb.ww ], [ %.251284, %bb.ve ] ; 2 uses
  %i.epd = load i8, ptr %.283737, align 1, !tbaa !97 ; 2 uses
  %.not1349 = icmp eq i8 %i.epd, 0
  br i1 %.not1349, label %._crit_edge3872, label %bb.ur, !llvm.loop !635

._crit_edge3872:                                  ; preds = %add_jump.exit2269, %add_jump.exit1709
  %i.epe = load ptr, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %.not1350 = icmp eq ptr %i.epe, null
  br i1 %.not1350, label %add_jump.exit, label %bb.aox

bb.aox:                                           ; preds = %._crit_edge3872
  %i.epf = call fastcc ptr @sljit_emit_label(ptr noundef %i.b) ; 2 uses
  %.not6.i.i = icmp eq ptr %i.epf, null
  br i1 %.not6.i.i, label %add_jump.exit, label %.lr.ph.split.i, !prof !154

.lr.ph.split.i:                                   ; preds = %bb.aox, %sljit_set_label.exit.i
  %.05.i = phi ptr [ %i.epm, %sljit_set_label.exit.i ], [ %i.epe, %bb.aox ] ; 2 uses
  %i.epg = load ptr, ptr %.05.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i2271 = icmp eq ptr %i.epg, null
  br i1 %.not.i.i2271, label %sljit_set_label.exit.i, label %bb.aoy, !prof !153

bb.aoy:                                           ; preds = %.lr.ph.split.i
  %i.eph = getelementptr inbounds nuw i8, ptr %i.epg, i64 16 ; 2 uses
  %i.epi = load i64, ptr %i.eph, align 8, !tbaa !142
  %i.epj = and i64 %i.epi, -2
  store i64 %i.epj, ptr %i.eph, align 8, !tbaa !142
  %i.epk = getelementptr inbounds nuw i8, ptr %i.epg, i64 24
  store ptr %i.epf, ptr %i.epk, align 8, !tbaa !97
  br label %sljit_set_label.exit.i

sljit_set_label.exit.i:                           ; preds = %bb.aoy, %.lr.ph.split.i
  %i.epl = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.epm = load ptr, ptr %i.epl, align 8, !tbaa !157 ; 2 uses
  %.not.i2272 = icmp eq ptr %i.epm, null
  br i1 %.not.i2272, label %add_jump.exit, label %.lr.ph.split.i, !llvm.loop !5

add_jump.exit:                                    ; preds = %sljit_set_label.exit.i, %bb.ck, %bb.cd, %bb.by, %bb.bo, %bb.bh, %bb.bc, %bb.aox, %sljit_alloc_memory.exit.i1405, %bb.co, %sljit_emit_jump.exit1400, %sljit_alloc_memory.exit.i, %bb.bs, %sljit_emit_jump.exit, %._crit_edge3872, %compile_char1_matchingpath.exit1387, %compile_char1_matchingpath.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @do_extuni_utf_invalid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %.0139 = phi ptr [ %1, %bb.a ], [ %.1140, %bb.ac ] ; 7 uses
  %.0136 = phi i32 [ undef, %bb.a ], [ %.2138, %bb.ac ] ; 4 uses
  %.0133 = phi ptr [ %1, %bb.a ], [ %.1134, %bb.ac ] ; 3 uses
  %.0131 = phi ptr [ null, %bb.a ], [ %.1140, %bb.ac ] ; 12 uses
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ac ]
  %.0125 = phi i32 [ 0, %bb.a ], [ %.1126, %bb.ac ] ; 2 uses
  %i.e = load i8, ptr %.0139, align 1, !tbaa !97  ; 5 uses
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %.0139, i64 1 ; 3 uses
  br i1 %i.g, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult ptr %i.h, %i.d
  br i1 %i.i, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !97    ; 2 uses
  %or.cond171 = icmp slt i8 %i.j, -64
  br i1 %or.cond171, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -128                   ; 2 uses
  %i.m = add nsw i8 %i.e, 62
  %or.cond172 = icmp ult i8 %i.m, 30
  br i1 %or.cond172, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = shl nuw nsw i32 %i.f, 6
  %i.o = add nsw i32 %i.n, -12288
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0139, i64 2
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0139, i64 2 ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.d
  br i1 %i.s, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %i.r, align 1, !tbaa !97    ; 2 uses
  %or.cond173 = icmp slt i8 %i.t, -64
  br i1 %or.cond173, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.l, 6
  %i.w = add nsw i32 %i.u, -128
  %i.x = or disjoint i32 %i.w, %i.v               ; 2 uses
  %i.y = and i8 %i.e, -16
  %or.cond174 = icmp eq i8 %i.y, -32
  br i1 %or.cond174, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = shl nuw nsw i32 %i.f, 12
  %i.aa = add nsw i32 %i.z, -917504
  %i.ab = or disjoint i32 %i.x, %i.aa             ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 2048
  %i.ad = getelementptr inbounds nuw i8, ptr %.0139, i64 3
  %i.ae = and i32 %i.ab, 2147481600
  %or.cond = icmp eq i32 %i.ae, 55296
  %or.cond176 = or i1 %i.ac, %or.cond
  br i1 %or.cond176, label %bb.ad, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0139, i64 3 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.d
  br i1 %i.ag, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !97  ; 2 uses
  %or.cond177 = icmp slt i8 %i.ah, -64
  %i.ai = add nsw i8 %i.e, 16
  %or.cond178 = icmp ult i8 %i.ai, 5
  %or.cond186 = select i1 %or.cond177, i1 %or.cond178, i1 false
  br i1 %or.cond186, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.aj = shl nuw nsw i32 %i.x, 6
  %i.ak = zext i8 %i.ah to i32
  %i.al = add nsw i32 %i.ak, -128
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = shl nuw nsw i32 %i.f, 18
  %i.ao = add nsw i32 %i.an, -62914560
  %i.ap = or i32 %i.am, %i.ao                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0139, i64 4
  %i.ar = add nsw i32 %i.ap, -1114112
  %or.cond3 = icmp ult i32 %i.ar, -1048576
  br i1 %or.cond3, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.j, %bb.m, %bb.f
  %.1140 = phi ptr [ %i.aq, %bb.m ], [ %i.q, %bb.f ], [ %i.ad, %bb.j ], [ %i.h, %bb.b ] ; 4 uses
  %.0 = phi i32 [ %i.ap, %bb.m ], [ %i.p, %bb.f ], [ %i.ab, %bb.j ], [ %i.f, %bb.b ] ; 2 uses
  %i.as = lshr i32 %.0, 7
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !158
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 7
  %i.ay = and i32 %.0, 127
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !158
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !267 ; 5 uses
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  br i1 %.not, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.bi = sext i32 %.0136 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @_pcre2_ucp_gbtable_8, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46
  %i.bl = shl nuw i32 1, %i.bh
  %i.bm = and i32 %i.bk, %i.bl
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp ne i32 %.0136, 13
  %i.bp = icmp ne i8 %i.bg, 14
  %or.cond5.not168 = select i1 %i.bo, i1 true, i1 %i.bp
  %i.bq = icmp ne i32 %.0125, 0
  %or.cond7 = select i1 %or.cond5.not168, i1 true, i1 %i.bq
  br i1 %or.cond7, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq i32 %.0136, 11
  %i.bs = icmp eq i8 %i.bg, 11
  %or.cond9 = select i1 %i.br, i1 %i.bs, i1 false
  %i.bt = icmp ugt ptr %.0133, %i.b
  %or.cond220 = select i1 %or.cond9, i1 %i.bt, i1 false
  br i1 %or.cond220, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.q, %bb.ab
  %.0129190 = phi ptr [ %.1130, %bb.ab ], [ %.0133, %bb.q ] ; 4 uses
  %.0135189 = phi i32 [ %i.dw, %bb.ab ], [ 0, %bb.q ] ; 8 uses
  %i.bu = getelementptr inbounds i8, ptr %.0129190, i64 -1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !97  ; 3 uses
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = icmp sgt i8 %i.bv, -1
  br i1 %i.bx, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.by = icmp ugt ptr %i.bu, %i.b
  %i.bz = icmp samesign ult i8 %i.bv, -64
  %or.cond179 = and i1 %i.by, %i.bz
  br i1 %or.cond179, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %bb.r
  %i.ca = add nsw i32 %i.bw, -128                 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.0129190, i64 -2 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !97  ; 3 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = add i8 %i.cc, 62
  %or.cond180 = icmp ult i8 %i.ce, 30
  br i1 %or.cond180, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i32 %i.cd, 6
  %i.cg = add nsw i32 %i.cf, -12288
  %i.ch = or i32 %i.cg, %i.ca
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.ci = icmp ugt ptr %i.cb, %i.b
  %or.cond181 = icmp slt i8 %i.cc, -64
  %or.cond187 = and i1 %i.ci, %or.cond181
  br i1 %or.cond187, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.cj = shl nuw nsw i32 %i.ca, 6
  %i.ck = add nsw i32 %i.cd, -128
  %i.cl = or disjoint i32 %i.ck, %i.cj            ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.0129190, i64 -3 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !97  ; 3 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = and i8 %i.cn, -16
  %or.cond182 = icmp eq i8 %i.cp, -32
  br i1 %or.cond182, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = shl nuw nsw i32 %i.co, 12
  %i.cr = add nsw i32 %i.cq, -917504
  %i.cs = or i32 %i.cr, %i.cl                     ; 3 uses
  %i.ct = icmp samesign ult i32 %i.cs, 2048
  %i.cu = and i32 %i.cs, 2147481600
  %or.cond11 = icmp eq i32 %i.cu, 55296
  %or.cond183 = or i1 %i.ct, %or.cond11
  br i1 %or.cond183, label %._crit_edge, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.cv = icmp ugt ptr %i.cm, %i.b
  %or.cond184 = icmp slt i8 %i.cn, -64
  %or.cond188 = and i1 %i.cv, %or.cond184
  br i1 %or.cond188, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds i8, ptr %.0129190, i64 -4 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !97  ; 2 uses
  %i.cy = add i8 %i.cx, 16
  %or.cond185 = icmp ult i8 %i.cy, 5
  br i1 %or.cond185, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.cz = zext i8 %i.cx to i32
  %i.da = shl nuw nsw i32 %i.cl, 6
  %i.db = add nsw i32 %i.co, -128
  %i.dc = or disjoint i32 %i.db, %i.da
  %i.dd = shl nuw nsw i32 %i.cz, 18
  %i.de = add nsw i32 %i.dd, -62914560
  %i.df = or i32 %i.de, %i.dc                     ; 2 uses
  %i.dg = add nsw i32 %i.df, -1114112
  %or.cond13 = icmp ult i32 %i.dg, -1048576
  br i1 %or.cond13, label %._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.w, %.lr.ph, %bb.z, %bb.t
  %.1130 = phi ptr [ %i.cw, %bb.z ], [ %i.cb, %bb.t ], [ %i.cm, %bb.w ], [ %i.bu, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.df, %bb.z ], [ %i.ch, %bb.t ], [ %i.cs, %bb.w ], [ %i.bw, %.lr.ph ] ; 2 uses
  %i.dh = lshr i32 %.1, 7
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !158
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 7
  %i.dn = and i32 %.1, 127
  %i.do = or disjoint i32 %i.dm, %i.dn
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !158
  %i.ds = zext i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !267
  %.not169 = icmp eq i8 %i.dv, 11
  br i1 %.not169, label %bb.ab, label %._crit_edge

bb.ab:                                            ; preds = %bb.aa
  %i.dw = add nuw nsw i32 %.0135189, 1            ; 2 uses
  %i.dx = icmp ugt ptr %.1130, %i.b
  br i1 %i.dx, label %.lr.ph, label %._crit_edge, !llvm.loop !639

._crit_edge:                                      ; preds = %bb.ab, %bb.w, %bb.z, %bb.y, %bb.x, %bb.u, %bb.r, %bb.aa
  %.0135.lcssa.ph = phi i32 [ %i.dw, %bb.ab ], [ %.0135189, %bb.w ], [ %.0135189, %bb.z ], [ %.0135189, %bb.y ], [ %.0135189, %bb.x ], [ %.0135189, %bb.u ], [ %.0135189, %bb.r ], [ %.0135189, %bb.aa ]
  %i.dy = and i32 %.0135.lcssa.ph, 1
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %._crit_edge.thread, label %bb.ad

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.q
  %i.ea = icmp eq i32 %.0136, 14                  ; 2 uses
  %i.eb = icmp eq i8 %i.bg, 13
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i8 %i.bg, 3
  %or.cond15.not = select i1 %i.ee, i1 %i.ea, i1 false
  %spec.select = select i1 %or.cond15.not, i32 14, i32 %i.bh
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %._crit_edge.thread
  %.2138 = phi i32 [ %spec.select, %._crit_edge.thread ], [ %i.bh, %bb.n ]
  %.1134 = phi ptr [ %.0131, %._crit_edge.thread ], [ %.0133, %bb.n ]
  %.1126 = phi i32 [ %i.ed, %._crit_edge.thread ], [ %.0125, %bb.n ]
  %i.ef = icmp ult ptr %.1140, %i.d
  br i1 %i.ef, label %bb.b, label %bb.ad, !llvm.loop !640

bb.ad:                                            ; preds = %._crit_edge, %bb.p, %bb.o, %bb.c, %bb.d, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.j, %bb.ac
  %.2 = phi ptr [ %.1140, %bb.ac ], [ %.0131, %bb.o ], [ %.0131, %._crit_edge ], [ %.0131, %bb.p ], [ %.0131, %bb.j ], [ %.0131, %bb.c ], [ %.0131, %bb.m ], [ %.0131, %bb.h ], [ %.0131, %bb.d ], [ %.0131, %bb.g ], [ %.0131, %bb.l ], [ %.0131, %bb.k ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @do_extuni_utf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %.0111 = phi ptr [ %1, %bb.a ], [ %.1112, %bb.ac ] ; 14 uses
  %.0108 = phi i32 [ undef, %bb.a ], [ %.2110, %bb.ac ] ; 4 uses
  %.0105 = phi ptr [ %1, %bb.a ], [ %.1106, %bb.ac ] ; 3 uses
  %.0103 = phi ptr [ null, %bb.a ], [ %.1112, %bb.ac ] ; 4 uses
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ac ]
  %.097 = phi i32 [ 0, %bb.a ], [ %.198, %bb.ac ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0111, i64 1 ; 3 uses
  %i.f = load i8, ptr %.0111, align 1, !tbaa !97  ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 10 uses
  %i.h = icmp ugt i8 %i.f, -65
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.g, 32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i32 %i.k, 1984
  %i.m = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.n = load i8, ptr %i.e, align 1, !tbaa !97
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i32
  %i.q = or disjoint i32 %i.l, %i.p
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = and i32 %i.g, 16
  %i.s = icmp eq i32 %i.r, 0
  %i.t = load i8, ptr %i.e, align 1, !tbaa !97
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 4 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw nsw i32 %i.g, 12
  %i.x = and i32 %i.w, 61440
  %i.y = shl nuw nsw i32 %i.v, 6
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !97
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0111, i64 3
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ag = and i32 %i.g, 8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nuw nsw i32 %i.g, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.v, 12
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !97
  %i.ao = and i8 %i.an, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 6
  %i.ar = or disjoint i32 %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0111, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !97
  %i.au = and i8 %i.at, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.0111, i64 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ay = and i32 %i.g, 4
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !97
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0111, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !97
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i32               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0111, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !97
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = shl nuw i32 %i.g, 24
  %i.bn = and i32 %i.bm, 50331648
  %i.bo = shl nuw nsw i32 %i.v, 18
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = shl nuw nsw i32 %i.bd, 12
  %i.br = or disjoint i32 %i.bp, %i.bq
  %i.bs = shl nuw nsw i32 %i.bh, 6
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = or disjoint i32 %i.bt, %i.bl
  %i.bv = getelementptr inbounds nuw i8, ptr %.0111, i64 5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bw = shl i32 %i.g, 30
  %i.bx = and i32 %i.bw, 1073741824
  %i.by = shl nuw nsw i32 %i.v, 24
  %i.bz = or disjoint i32 %i.by, %i.bx
  %i.ca = shl nuw nsw i32 %i.bd, 18
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = shl nuw nsw i32 %i.bh, 12
  %i.cd = or disjoint i32 %i.cb, %i.cc
  %i.ce = shl nuw nsw i32 %i.bl, 6
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.0111, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !97
  %i.ci = and i8 %i.ch, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.0111, i64 6
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.h, %bb.k, %bb.j, %bb.f, %bb.b
  %.1112 = phi ptr [ %i.m, %bb.d ], [ %i.af, %bb.f ], [ %i.ax, %bb.h ], [ %i.bv, %bb.j ], [ %i.cl, %bb.k ], [ %i.e, %bb.b ] ; 4 uses
  %.0 = phi i32 [ %i.q, %bb.d ], [ %i.ae, %bb.f ], [ %i.aw, %bb.h ], [ %i.bu, %bb.j ], [ %i.ck, %bb.k ], [ %i.g, %bb.b ] ; 2 uses
  %i.cm = lshr i32 %.0, 7
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !158
  %i.cq = zext i16 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 7
  %i.cs = and i32 %.0, 127
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !158
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !267 ; 5 uses
  %i.db = zext i8 %i.da to i32                    ; 3 uses
  br i1 %.not, label %bb.m, label %bb.ac

bb.m:                                             ; preds = %bb.l
  %i.dc = sext i32 %.0108 to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr @_pcre2_ucp_gbtable_8, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !46
  %i.df = shl nuw i32 1, %i.db
  %i.dg = and i32 %i.de, %i.df
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = icmp ne i32 %.0108, 13
  %i.dj = icmp ne i8 %i.da, 14
  %or.cond.not119 = select i1 %i.di, i1 true, i1 %i.dj
  %i.dk = icmp ne i32 %.097, 0
  %or.cond3 = select i1 %or.cond.not119, i1 true, i1 %i.dk
  br i1 %or.cond3, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.dl = icmp eq i32 %.0108, 11
  %i.dm = icmp eq i8 %i.da, 11
  %or.cond5 = select i1 %i.dl, i1 %i.dm, i1 false
  %i.dn = icmp ugt ptr %.0105, %i.b
  %or.cond = select i1 %or.cond5, i1 %i.dn, i1 false
  br i1 %or.cond, label %.preheader, label %._crit_edge.thread

.preheader:                                       ; preds = %bb.o, %bb.ab
  %.0101125 = phi ptr [ %.1102, %bb.ab ], [ %.0105, %bb.o ]
  %.0107124 = phi i32 [ %i.he, %bb.ab ], [ 0, %bb.o ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.p
  %.0101.pn = phi ptr [ %.1102, %bb.p ], [ %.0101125, %.preheader ] ; 9 uses
  %.1102 = getelementptr inbounds i8, ptr %.0101.pn, i64 -1 ; 4 uses
  %i.do = load i8, ptr %.1102, align 1, !tbaa !97 ; 2 uses
  %i.dp = zext i8 %i.do to i32                    ; 11 uses
  %i.dq = and i32 %i.dp, 192
  %i.dr = icmp eq i32 %i.dq, 128
  br i1 %i.dr, label %bb.p, label %bb.q, !llvm.loop !641

bb.q:                                             ; preds = %bb.p
  %i.ds = icmp ugt i8 %i.do, -65
  br i1 %i.ds, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.dt = and i32 %i.dp, 32
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = load i8, ptr %.0101.pn, align 1, !tbaa !97
  %i.dw = and i8 %i.dv, 63
  %i.dx = zext nneg i8 %i.dw to i32               ; 5 uses
  br i1 %i.du, label %bb.s, label %bb.t
end_hunk_0
