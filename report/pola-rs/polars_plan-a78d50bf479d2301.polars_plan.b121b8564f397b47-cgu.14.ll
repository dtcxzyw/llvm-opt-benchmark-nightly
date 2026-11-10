Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary19coerced_binop_dtype:bb.a
  ], !dbg !105149

bb.ao:                                            ; preds = %bb.ab
  switch i8 %4, label %bb.am [
    i8 0, label %bb.ar
    i8 1, label %bb.ar
    i8 2, label %bb.ar
    i8 3, label %bb.ar
    i8 4, label %bb.ar
    i8 5, label %bb.ar
    i8 6, label %bb.ar
    i8 7, label %bb.ar
    i8 15, label %bb.ar
    i8 16, label %bb.ar
    i8 17, label %bb.ar
  ], !dbg !105150

.thread215:                                       ; preds = %..thread215_crit_edge, %bb.af, %bb.ai, %bb.al
  %i.bc = phi i128 [ %.pre244, %..thread215_crit_edge ], [ %i.av, %bb.af ], [ %i.ay, %bb.ai ], [ %i.ba, %bb.al ], !dbg !105108
  %i.bd = icmp eq i128 %i.bc, 2, !dbg !105109
  br i1 %i.bd, label %bb.at, label %bb.am, !dbg !105109

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  switch i8 %i.v, label %bb.am [
    i8 11, label %bb.ag
    i8 12, label %bb.ag
    i8 13, label %bb.ag
    i8 30, label %bb.aq
    i8 1, label %bb.ag
    i8 2, label %bb.ag
    i8 3, label %bb.ag
    i8 4, label %bb.ag
    i8 5, label %bb.ag
    i8 6, label %bb.ag
    i8 7, label %bb.ag
    i8 8, label %bb.ag
    i8 9, label %bb.ag
    i8 10, label %bb.ag
  ], !dbg !105151

bb.aq:                                            ; preds = %bb.ap
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !105152
  %i.bf = load i128, ptr %i.be, align 16, !dbg !105152, !range !3520, !noundef !2317 ; 2 uses
  %switch193.a = icmp samesign ult i128 %i.bf, 2, !dbg !105153
  br i1 %switch193.a, label %bb.ag, label %.thread225.thread239, !dbg !105153

bb.ar:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  switch i8 %i.v, label %bb.am [
    i8 11, label %bb.ag
    i8 12, label %bb.ag
    i8 13, label %bb.ag
    i8 30, label %bb.as
    i8 1, label %bb.ag
    i8 2, label %bb.ag
    i8 3, label %bb.ag
    i8 4, label %bb.ag
    i8 5, label %bb.ag
    i8 6, label %bb.ag
    i8 7, label %bb.ag
    i8 8, label %bb.ag
    i8 9, label %bb.ag
    i8 10, label %bb.ag
  ], !dbg !105154

bb.as:                                            ; preds = %bb.ar
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !105155
  %i.bh = load i128, ptr %i.bg, align 16, !dbg !105155, !range !3520, !noundef !2317
  %switch194.a = icmp samesign ult i128 %i.bh, 2, !dbg !105156
  br i1 %switch194.a, label %bb.ag, label %.thread226, !dbg !105156

bb.at:                                            ; preds = %.thread215
  switch i8 %4, label %bb.am [
    i8 0, label %bb.au
    i8 1, label %bb.au
    i8 2, label %bb.au
    i8 3, label %bb.au
    i8 4, label %bb.au
    i8 5, label %bb.au
    i8 6, label %bb.au
    i8 7, label %bb.au
    i8 15, label %bb.au
    i8 16, label %bb.au
    i8 17, label %bb.au
  ], !dbg !105157

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at
  switch i8 %i.v, label %bb.am [
    i8 11, label %bb.ag
    i8 12, label %bb.ag
    i8 13, label %bb.ag
    i8 30, label %bb.av
    i8 1, label %bb.ag
    i8 2, label %bb.ag
    i8 3, label %bb.ag
    i8 4, label %bb.ag
    i8 5, label %bb.ag
    i8 6, label %bb.ag
    i8 7, label %bb.ag
    i8 8, label %bb.ag
    i8 9, label %bb.ag
    i8 10, label %bb.ag
  ], !dbg !105158

bb.av:                                            ; preds = %bb.au
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !105159
  %i.bj = load i128, ptr %i.bi, align 16, !dbg !105159, !range !3520, !noundef !2317
  %switch195 = icmp samesign ult i128 %i.bj, 2, !dbg !105160
  br i1 %switch195, label %bb.ag, label %.thread226, !dbg !105160

bb.aw:                                            ; preds = %bb.am
  switch i8 %.val201251, label %.thread226 [
    i8 15, label %bb.ay
    i8 30, label %bb.az
  ], !dbg !105109

bb.ax:                                            ; preds = %bb.am
  %i.bk = icmp eq i8 %.val201251, 18, !dbg !105109
  br i1 %i.bk, label %bb.bc, label %bb.bd, !dbg !105109

bb.ay:                                            ; preds = %bb.aw
  %i.bl = icmp samesign ult i8 %4, 18, !dbg !105161
  br i1 %i.bl, label %switch.hole_check, label %.thread226, !dbg !105161

bb.az:                                            ; preds = %bb.aw
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !105108
  %i.bn = load i128, ptr %i.bm, align 16, !dbg !105108, !range !3520, !noundef !2317
  %i.bo = icmp eq i128 %i.bn, 2, !dbg !105109
  %i.bp = icmp samesign ult i8 %4, 18
  %or.cond281 = and i1 %i.bo, %i.bp, !dbg !105109
  br i1 %or.cond281, label %switch.hole_check275, label %.thread226, !dbg !105109

switch.hole_check:                                ; preds = %bb.ay
  %switch.maskindex = zext nneg i8 %4 to i32, !dbg !105161
  %switch.shifted = lshr i32 229631, %switch.maskindex, !dbg !105161
  %switch.lobit = trunc i32 %switch.shifted to i1, !dbg !105161
  br i1 %switch.lobit, label %switch.lookup, label %.thread226, !dbg !105161

switch.hole_check275:                             ; preds = %bb.az
  %switch.maskindex277 = zext nneg i8 %4 to i32, !dbg !105162
  %switch.shifted278 = lshr i32 229631, %switch.maskindex277, !dbg !105162
  %switch.lobit279 = trunc i32 %switch.shifted278 to i1, !dbg !105162
  br i1 %switch.lobit279, label %switch.lookup, label %.thread226, !dbg !105162

switch.hole_check283:                             ; preds = %bb.ba
  %switch.maskindex285 = zext nneg i8 %4 to i32, !dbg !105163
  %switch.shifted286 = lshr i32 229631, %switch.maskindex285, !dbg !105163
  %switch.lobit287 = trunc i32 %switch.shifted286 to i1, !dbg !105163
  br i1 %switch.lobit287, label %switch.lookup, label %.thread226, !dbg !105163

switch.hole_check289:                             ; preds = %bb.bb
  %switch.maskindex291 = zext nneg i8 %4 to i32, !dbg !105164
  %switch.shifted292 = lshr i32 229631, %switch.maskindex291, !dbg !105164
  %switch.lobit293 = trunc i32 %switch.shifted292 to i1, !dbg !105164
  br i1 %switch.lobit293, label %switch.lookup, label %.thread226, !dbg !105164

switch.lookup:                                    ; preds = %switch.hole_check289, %switch.hole_check283, %switch.hole_check275, %switch.hole_check
  %i.bq = phi i8 [ 18, %switch.hole_check283 ], [ 30, %switch.hole_check275 ], [ 15, %switch.hole_check ], [ 18, %switch.hole_check289 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !105036
  call fastcc void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary20err_date_str_compare(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.k), !dbg !105036
  %i.br = load i64, ptr %i.k, align 8, !dbg !105165, !range !2439, !noundef !2317
  %.not = icmp eq i64 %i.br, 18, !dbg !105165
  br i1 %.not, label %bb.bf, label %bb.be, !dbg !105166

bb.ba:                                            ; preds = %bb.bc
  %i.bs = icmp samesign ult i8 %4, 18, !dbg !105163
  br i1 %i.bs, label %switch.hole_check283, label %.thread226, !dbg !105163

bb.bb:                                            ; preds = %bb.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !105108
  %i.bu = load i128, ptr %i.bt, align 16, !dbg !105108, !range !3520, !noundef !2317
  %i.bv = icmp eq i128 %i.bu, 2, !dbg !105109
  %i.bw = icmp samesign ult i8 %4, 18
  %or.cond295 = and i1 %i.bv, %i.bw, !dbg !105109
  br i1 %or.cond295, label %switch.hole_check289, label %.thread226, !dbg !105109

bb.bc:                                            ; preds = %bb.ax
  switch i8 %i.v, label %.thread226 [
    i8 15, label %bb.ba
    i8 30, label %bb.bb
  ], !dbg !105109

bb.bd:                                            ; preds = %bb.ax
  %i.bx = icmp eq i8 %i.v, 19, !dbg !105109
  br i1 %i.bx, label %bb.bg, label %.thread220, !dbg !105109

bb.be:                                            ; preds = %switch.lookup
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.by, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !105168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !105169
  store i64 1, ptr %0, align 16, !dbg !105167
  br label %bb.dh, !dbg !105116

bb.bf:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !105169
  br label %.thread226, !dbg !105170

.thread226:                                       ; preds = %switch.hole_check317, %switch.hole_check311, %bb.bq, %switch.hole_check303, %switch.hole_check297, %bb.bh, %bb.aw, %bb.az, %bb.ay, %switch.hole_check, %switch.hole_check275, %switch.hole_check289, %switch.hole_check283, %bb.ba, %bb.av, %bb.as, %bb.bb, %bb.bi, %bb.bc, %bb.bn, %bb.bl, %bb.bg, %bb.bt, %bb.br, %bb.bp, %.thread225.thread239, %bb.bk, %bb.bj, %.thread225, %.thread220, %bb.bf
  %i.bz = phi i8 [ 19, %switch.hole_check311 ], [ 19, %switch.hole_check317 ], [ 19, %bb.bq ], [ 15, %bb.bn ], [ 15, %bb.bl ], [ 27, %bb.as ], [ %.val201251, %bb.bt ], [ 19, %bb.br ], [ 15, %bb.bp ], [ 15, %.thread225.thread239 ], [ 28, %bb.bk ], [ 19, %bb.bj ], [ 15, %.thread225 ], [ %.val201251, %.thread220 ], [ 15, %bb.bh ], [ %.val201251, %bb.bf ], [ 30, %bb.av ], [ 18, %bb.bc ], [ 18, %switch.hole_check283 ], [ %.val201251, %bb.bg ], [ 18, %bb.bb ], [ 18, %bb.ba ], [ 18, %switch.hole_check289 ], [ 30, %bb.bi ], [ 30, %switch.hole_check303 ], [ %.val201251, %switch.hole_check275 ], [ %.val201251, %switch.hole_check ], [ %.val201251, %bb.ay ], [ %.val201251, %bb.az ], [ %.val201251, %bb.aw ], [ 15, %switch.hole_check297 ] ; 4 uses
  %i.ca = phi i8 [ 19, %switch.hole_check311 ], [ 19, %switch.hole_check317 ], [ 19, %bb.bq ], [ 15, %bb.bn ], [ 15, %bb.bl ], [ 27, %bb.as ], [ %i.cg, %bb.bt ], [ 19, %bb.br ], [ 15, %bb.bp ], [ 15, %.thread225.thread239 ], [ 28, %bb.bk ], [ 19, %bb.bj ], [ 15, %.thread225 ], [ %.val201251, %.thread220 ], [ 15, %bb.bh ], [ %i.bq, %bb.bf ], [ 30, %bb.av ], [ 18, %bb.bc ], [ 18, %switch.hole_check283 ], [ %.val201251, %bb.bg ], [ 18, %bb.bb ], [ 18, %bb.ba ], [ 18, %switch.hole_check289 ], [ 30, %bb.bi ], [ 30, %switch.hole_check303 ], [ %.val201251, %switch.hole_check275 ], [ %.val201251, %switch.hole_check ], [ %.val201251, %bb.ay ], [ %.val201251, %bb.az ], [ %.val201251, %bb.aw ], [ 15, %switch.hole_check297 ] ; 7 uses
  switch i8 %4, label %bb.cb [
    i8 0, label %bb.bv
    i8 1, label %bb.bv
    i8 2, label %bb.bv
    i8 3, label %bb.bv
    i8 4, label %bb.bv
    i8 5, label %bb.bv
    i8 6, label %bb.bv
    i8 7, label %bb.bv
    i8 15, label %bb.bv
    i8 16, label %bb.bv
    i8 17, label %bb.bv
  ], !dbg !105171

bb.bg:                                            ; preds = %bb.bd
  switch i8 %.val201251, label %.thread226 [
    i8 15, label %bb.bh
    i8 30, label %bb.bi
  ], !dbg !105109

.thread220:                                       ; preds = %bb.bd
  switch i8 %.val201251, label %.thread226 [
    i8 15, label %.thread225
    i8 19, label %bb.bj
    i8 28, label %bb.bk
  ], !dbg !105109

bb.bh:                                            ; preds = %bb.bg
  %i.cb = icmp samesign ult i8 %4, 18, !dbg !105172
  br i1 %i.cb, label %switch.hole_check297, label %.thread226, !dbg !105172

bb.bi:                                            ; preds = %bb.bg
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !105108
  %i.cd = load i128, ptr %i.cc, align 16, !dbg !105108, !range !3520, !noundef !2317
  %i.ce = icmp eq i128 %i.cd, 2, !dbg !105109
  %i.cf = icmp samesign ult i8 %4, 18
  %or.cond309 = and i1 %i.ce, %i.cf, !dbg !105109
  br i1 %or.cond309, label %switch.hole_check303, label %.thread226, !dbg !105109

switch.hole_check297:                             ; preds = %bb.bh
  %switch.maskindex299 = zext nneg i8 %4 to i32, !dbg !105172
  %switch.shifted300 = lshr i32 229631, %switch.maskindex299, !dbg !105172
  %switch.lobit301 = trunc i32 %switch.shifted300 to i1, !dbg !105172
  br i1 %switch.lobit301, label %switch.lookup298, label %.thread226, !dbg !105172

switch.hole_check303:                             ; preds = %bb.bi
  %switch.maskindex305 = zext nneg i8 %4 to i32, !dbg !105173
  %switch.shifted306 = lshr i32 229631, %switch.maskindex305, !dbg !105173
  %switch.lobit307 = trunc i32 %switch.shifted306 to i1, !dbg !105173
  br i1 %switch.lobit307, label %switch.lookup298, label %.thread226, !dbg !105173

switch.hole_check311:                             ; preds = %bb.bq
  %switch.maskindex313 = zext nneg i8 %4 to i32, !dbg !105174
  %switch.shifted314 = lshr i32 229631, %switch.maskindex313, !dbg !105174
  %switch.lobit315 = trunc i32 %switch.shifted314 to i1, !dbg !105174
  br i1 %switch.lobit315, label %switch.lookup298, label %.thread226, !dbg !105174

switch.hole_check317:                             ; preds = %bb.br
  %switch.maskindex319 = zext nneg i8 %4 to i32, !dbg !105175
  %switch.shifted320 = lshr i32 229631, %switch.maskindex319, !dbg !105175
  %switch.lobit321 = trunc i32 %switch.shifted320 to i1, !dbg !105175
  br i1 %switch.lobit321, label %switch.lookup298, label %.thread226, !dbg !105175

switch.lookup298:                                 ; preds = %switch.hole_check317, %switch.hole_check311, %switch.hole_check303, %switch.hole_check297
  %i.cg = phi i8 [ 19, %switch.hole_check311 ], [ 30, %switch.hole_check303 ], [ 15, %switch.hole_check297 ], [ 19, %switch.hole_check317 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !105060
  call fastcc void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary20err_date_str_compare(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j), !dbg !105060
  %i.ch = load i64, ptr %i.j, align 8, !dbg !105176, !range !2439, !noundef !2317
  %.not173 = icmp eq i64 %i.ch, 18, !dbg !105176
  br i1 %.not173, label %bb.bt, label %bb.bs, !dbg !105177

.thread225:                                       ; preds = %.thread220
  switch i8 %i.v, label %.thread226 [
    i8 21, label %bb.bl
    i8 30, label %.thread225..thread225.thread239_crit_edge
  ], !dbg !105109

.thread225..thread225.thread239_crit_edge:        ; preds = %.thread225
  %.phi.trans.insert245 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre246 = load i128, ptr %.phi.trans.insert245, align 16, !dbg !105108, !range !3520
  br label %.thread225.thread239, !dbg !105109

bb.bj:                                            ; preds = %.thread220
  switch i8 %i.v, label %.thread226 [
    i8 15, label %bb.bq
    i8 30, label %bb.br
  ], !dbg !105109

bb.bk:                                            ; preds = %.thread220
  %i.ci = icmp eq i8 %i.v, 28, !dbg !105109
  br i1 %i.ci, label %bb.bu, label %.thread226, !dbg !105109

bb.bl:                                            ; preds = %.thread225
  switch i8 %4, label %.thread226 [
    i8 0, label %bb.bm
    i8 1, label %bb.bm
    i8 2, label %bb.bm
    i8 3, label %bb.bm
    i8 4, label %bb.bm
    i8 5, label %bb.bm
    i8 6, label %bb.bm
    i8 7, label %bb.bm
    i8 15, label %bb.bm
    i8 16, label %bb.bm
    i8 17, label %bb.bm
  ], !dbg !105178

.thread225.thread239:                             ; preds = %.thread225..thread225.thread239_crit_edge, %bb.aq
  %i.cj = phi i128 [ %.pre246, %.thread225..thread225.thread239_crit_edge ], [ %i.bf, %bb.aq ], !dbg !105108
  %i.ck = icmp eq i128 %i.cj, 2, !dbg !105109
  br i1 %i.ck, label %bb.bn, label %.thread226, !dbg !105109

bb.bm:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !105065
  call fastcc void @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary20err_date_str_compare(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.i), !dbg !105065
  %i.cl = load i64, ptr %i.i, align 8, !dbg !105179, !range !2439, !noundef !2317
  %.not174 = icmp eq i64 %i.cl, 18, !dbg !105179
  br i1 %.not174, label %bb.bp, label %bb.bo, !dbg !105180

bb.bn:                                            ; preds = %.thread225.thread239
  switch i8 %4, label %.thread226 [
    i8 0, label %bb.bm
    i8 1, label %bb.bm
    i8 2, label %bb.bm
    i8 3, label %bb.bm
    i8 4, label %bb.bm
    i8 5, label %bb.bm
    i8 6, label %bb.bm
    i8 7, label %bb.bm
    i8 15, label %bb.bm
    i8 16, label %bb.bm
    i8 17, label %bb.bm
  ], !dbg !105181

bb.bo:                                            ; preds = %bb.bm
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !105183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !105184
  store i64 1, ptr %0, align 16, !dbg !105182
  br label %bb.dh, !dbg !105116

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !105184
  br label %.thread226, !dbg !105185

bb.bq:                                            ; preds = %bb.bj
  %i.cn = icmp samesign ult i8 %4, 18, !dbg !105174
  br i1 %i.cn, label %switch.hole_check311, label %.thread226, !dbg !105174

bb.br:                                            ; preds = %bb.bj
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !105108
  %i.cp = load i128, ptr %i.co, align 16, !dbg !105108, !range !3520, !noundef !2317
  %i.cq = icmp eq i128 %i.cp, 2, !dbg !105109
  %i.cr = icmp samesign ult i8 %4, 18
  %or.cond323 = and i1 %i.cq, %i.cr, !dbg !105109
  br i1 %or.cond323, label %switch.hole_check317, label %.thread226, !dbg !105109

bb.bs:                                            ; preds = %switch.lookup298
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !105186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !dbg !105187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !105188
  store i64 1, ptr %0, align 16, !dbg !105186
  br label %bb.dh, !dbg !105116

bb.bt:                                            ; preds = %switch.lookup298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !105188
  br label %.thread226, !dbg !105189

bb.bu:                                            ; preds = %bb.bk
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !105190
  store i8 31, ptr %i.ct, align 16, !dbg !105190
  store i64 0, ptr %0, align 16, !dbg !105190
  br label %bb.dh, !dbg !105116

bb.bv:                                            ; preds = %.thread226, %.thread226, %.thread226, %.thread226, %.thread226, %.thread226, %.thread226, %.thread226, %.thread226, %.thread226, %.thread226
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !105191
  %.val200 = load i128, ptr %i.cu, align 16, !dbg !105191
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !105191
  %.val202 = load i128, ptr %i.cv, align 16, !dbg !105191
  switch i8 %4, label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary22compares_cat_to_string.exit.thread [
    i8 0, label %bb.bw
    i8 1, label %bb.bw
    i8 2, label %bb.bw
    i8 3, label %bb.bw
    i8 4, label %bb.bw
    i8 5, label %bb.bw
    i8 6, label %bb.bw
    i8 7, label %bb.bw
    i8 15, label %bb.bw
    i8 16, label %bb.bw
    i8 17, label %bb.bw
  ], !dbg !105192

bb.bw:                                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv
  switch i8 %i.v, label %bb.bz [
    i8 15, label %bb.by
    i8 30, label %bb.bx
  ], !dbg !105193

bb.bx:                                            ; preds = %bb.bw
  %i.cw = icmp eq i128 %.val200, 2, !dbg !105193
  %i.cx = and i8 %i.bz, -2
  %switch.i = icmp eq i8 %i.cx, 26
  %or.cond.i = and i1 %i.cw, %switch.i, !dbg !105193
  br i1 %or.cond.i, label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary22compares_cat_to_string.exit.thread233, label %bb.bz, !dbg !105193

bb.by:                                            ; preds = %bb.bw
  %i.cy = and i8 %i.bz, -2, !dbg !105194
  %switch.old.i = icmp eq i8 %i.cy, 26, !dbg !105194
  br i1 %switch.old.i, label %_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion6binary22compares_cat_to_string.exit.thread233, label %bb.bz, !dbg !105194

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
end_hunk_0
