Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ToMono?download=true
inline.NumInlined: 3424
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Compiler_LCNF_decToMono_spec__20:bb.a
  br label %lean_inc.exit201

bb.r:                                             ; preds = %bb.p
  %.not.i.i240 = icmp eq i32 %.val.i.i239, 0
  br i1 %.not.i.i240, label %lean_inc.exit201, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit201

lean_inc.exit201:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %i.al = ptrtoint ptr %i.ac to i64
  %i.am = and i64 %i.al, 1
  %.not.i198 = icmp eq i64 %i.am, 0
  br i1 %.not.i198, label %bb.t, label %lean_inc.exit199

bb.t:                                             ; preds = %lean_inc.exit201
  %.val.i.i241 = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i241, 0
  br i1 %i.an, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.ao = add nuw i32 %.val.i.i241, 1
  store i32 %i.ao, ptr %i.ac, align 4, !tbaa !14
  br label %lean_inc.exit199

bb.v:                                             ; preds = %bb.t
  %.not.i.i242 = icmp eq i32 %.val.i.i241, 0
  br i1 %.not.i.i242, label %lean_inc.exit199, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ap = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit199

lean_inc.exit199:                                 ; preds = %bb.w, %bb.v, %bb.u, %lean_inc.exit201
  %i.aq = ptrtoint ptr %i.aa to i64
  %i.ar = and i64 %i.aq, 1
  %.not.i196 = icmp eq i64 %i.ar, 0
  br i1 %.not.i196, label %bb.x, label %lean_inc.exit197

bb.x:                                             ; preds = %lean_inc.exit199
  %.val.i.i244 = load i32, ptr %i.aa, align 4, !tbaa !14 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i244, 0
  br i1 %i.as, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.at = add nuw i32 %.val.i.i244, 1
  store i32 %i.at, ptr %i.aa, align 4, !tbaa !14
  br label %lean_inc.exit197

bb.z:                                             ; preds = %bb.x
  %.not.i.i245 = icmp eq i32 %.val.i.i244, 0
  br i1 %.not.i.i245, label %lean_inc.exit197, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = atomicrmw sub ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit197

lean_inc.exit197:                                 ; preds = %bb.aa, %bb.z, %bb.y, %lean_inc.exit199
  br i1 %.not.i.i, label %bb.ab, label %lean_dec.exit212

bb.ab:                                            ; preds = %lean_inc.exit197
  %i.av = load i32, ptr %i.e, align 8, !tbaa !14  ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !14
  br label %lean_dec.exit212

bb.ad:                                            ; preds = %bb.ab
  %.not.i213 = icmp eq i32 %i.av, 0
  br i1 %.not.i213, label %lean_dec.exit212, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #5
  br label %lean_dec.exit212

lean_dec.exit212:                                 ; preds = %lean_inc.exit197, %bb.ac, %bb.ad, %bb.ae, %bb.n
  %.0185 = phi ptr [ %i.e, %bb.n ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %lean_inc.exit197 ] ; 8 uses
  %i.ay = tail call ptr @l_Lean_Compiler_LCNF_eraseParams___redArg(i8 noundef zeroext 0, ptr noundef %i.ac, ptr noundef %5) #5 ; 13 uses
  %i.az = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.af, label %bb.ag, !prof !15

bb.af:                                            ; preds = %lean_dec.exit212
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.ac, align 4, !tbaa !14
  br label %lean_dec_ref.exit233

bb.ag:                                            ; preds = %lean_dec.exit212
  %.not.i232 = icmp eq i32 %i.az, 0
  br i1 %.not.i232, label %lean_dec_ref.exit233, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref.exit233

lean_dec_ref.exit233:                             ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bc = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i247 = icmp eq i64 %i.bd, 0               ; 2 uses
  br i1 %.not.i247, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %lean_dec_ref.exit233
  %i.be = lshr i64 %i.bc, 1
  %i.bf = trunc i64 %i.be to i32
  br label %lean_obj_tag.exit250

bb.aj:                                            ; preds = %lean_dec_ref.exit233
  %i.bg = getelementptr i8, ptr %i.ay, i64 4
  %.val.i249 = load i32, ptr %i.bg, align 4
  %i.bh = lshr i32 %.val.i249, 24
  br label %lean_obj_tag.exit250

lean_obj_tag.exit250:                             ; preds = %bb.ai, %bb.aj
  %.0.i248 = phi i32 [ %i.bf, %bb.ai ], [ %i.bh, %bb.aj ]
  %i.bi = icmp eq i32 %.0.i248, 0
  br i1 %i.bi, label %bb.ak, label %bb.cf

bb.ak:                                            ; preds = %lean_obj_tag.exit250
  %.val.i251 = load i32, ptr %i.ay, align 4, !tbaa !14 ; 4 uses
  %i.bj = icmp eq i32 %.val.i251, 1
  br i1 %i.bj, label %.preheader.i, label %bb.ap

.preheader.i:                                     ; preds = %bb.ak
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !12 ; 4 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i.i252 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i252, label %bb.al, label %lean_dec.exit.i

bb.al:                                            ; preds = %.preheader.i
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !14 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %bb.al
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.an:                                            ; preds = %bb.al
  %.not.i7.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ao, %bb.an, %bb.am, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ay) #5
  br label %lean_dec_ref_known.exit

bb.ap:                                            ; preds = %bb.ak
  %i.br = icmp sgt i32 %.val.i251, 1
  br i1 %i.br, label %bb.aq, label %bb.ar, !prof !15

bb.aq:                                            ; preds = %bb.ap
  %i.bs = add nsw i32 %.val.i251, -1
  store i32 %i.bs, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ar:                                            ; preds = %bb.ap
  %.not.i8.i = icmp eq i32 %.val.i251, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aq, %bb.ar, %bb.as
  %i.bt = tail call zeroext i8 @lean_name_eq(ptr noundef %i.aa, ptr noundef nonnull @l_Lean_Compiler_LCNF_LetValue_toMono___closed__4_value) #5
  %i.bu = ptrtoint ptr %i.aa to i64
  %i.bv = and i64 %i.bu, 1
  %.not.i209 = icmp eq i64 %i.bv, 0
  br i1 %.not.i209, label %bb.at, label %lean_dec.exit210

bb.at:                                            ; preds = %lean_dec_ref_known.exit
  %i.bw = load i32, ptr %i.aa, align 4, !tbaa !14 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.au, label %bb.av, !prof !15

bb.au:                                            ; preds = %bb.at
  %i.by = add nsw i32 %i.bw, -1
  store i32 %i.by, ptr %i.aa, align 4, !tbaa !14
  br label %lean_dec.exit210

bb.av:                                            ; preds = %bb.at
  %.not.i214 = icmp eq i32 %i.bw, 0
  br i1 %.not.i214, label %lean_dec.exit210, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #5
  br label %lean_dec.exit210

lean_dec.exit210:                                 ; preds = %bb.aw, %bb.av, %bb.au, %lean_dec_ref_known.exit
  %i.bz = icmp eq i8 %i.bt, 0
  %l_Lean_Compiler_LCNF_LetValue_toMono___closed__27_value.l_Lean_Compiler_LCNF_LetValue_toMono___closed__30_value = select i1 %i.bz, ptr @l_Lean_Compiler_LCNF_LetValue_toMono___closed__27_value, ptr @l_Lean_Compiler_LCNF_LetValue_toMono___closed__30_value ; 4 uses
  %i.ca = tail call ptr @l_Lean_Compiler_LCNF_Code_toMono(ptr noundef %i.ae, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 13 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %.not.i253 = icmp eq i64 %i.cc, 0               ; 2 uses
  br i1 %.not.i253, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %lean_dec.exit210
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = trunc i64 %i.cd to i32
  br label %lean_obj_tag.exit256

bb.ay:                                            ; preds = %lean_dec.exit210
  %i.cf = getelementptr i8, ptr %i.ca, i64 4
  %.val.i255 = load i32, ptr %i.cf, align 4
  %i.cg = lshr i32 %.val.i255, 24
  br label %lean_obj_tag.exit256

lean_obj_tag.exit256:                             ; preds = %bb.ax, %bb.ay
  %.0.i254 = phi i32 [ %i.ce, %bb.ax ], [ %i.cg, %bb.ay ]
  %i.ch = icmp eq i32 %.0.i254, 0
  br i1 %i.ch, label %bb.az, label %bb.bp

bb.az:                                            ; preds = %lean_obj_tag.exit256
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !12 ; 6 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 1
  %.not.i194 = icmp eq i64 %i.cl, 0
  br i1 %.not.i194, label %bb.ba, label %lean_inc.exit195

bb.ba:                                            ; preds = %bb.az
  %.val.i.i257 = load i32, ptr %i.cj, align 4, !tbaa !14 ; 3 uses
  %i.cm = icmp sgt i32 %.val.i.i257, 0
  br i1 %i.cm, label %bb.bb, label %bb.bc, !prof !15

bb.bb:                                            ; preds = %bb.ba
  %i.cn = add nuw i32 %.val.i.i257, 1
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !14
  br label %lean_inc.exit195

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i258 = icmp eq i32 %.val.i.i257, 0
  br i1 %.not.i.i258, label %lean_inc.exit195, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.co = atomicrmw sub ptr %i.cj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit195

lean_inc.exit195:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %.val.i260 = load i32, ptr %i.ca, align 8, !tbaa !14 ; 4 uses
  %i.cp = icmp eq i32 %.val.i260, 1
  br i1 %i.cp, label %.preheader.i262, label %bb.bi

.preheader.i262:                                  ; preds = %lean_inc.exit195
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !12 ; 4 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = and i64 %i.cr, 1
  %.not.i.i264 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i264, label %bb.be, label %lean_dec.exit.i265

bb.be:                                            ; preds = %.preheader.i262
  %i.ct = load i32, ptr %i.cq, align 4, !tbaa !14 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.bf, label %bb.bg, !prof !15

bb.bf:                                            ; preds = %bb.be
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %i.cq, align 4, !tbaa !14
  br label %lean_dec.exit.i265

bb.bg:                                            ; preds = %bb.be
  %.not.i7.i268 = icmp eq i32 %i.ct, 0
  br i1 %.not.i7.i268, label %lean_dec.exit.i265, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cq) #5
  br label %lean_dec.exit.i265

lean_dec.exit.i265:                               ; preds = %bb.bh, %bb.bg, %bb.bf, %.preheader.i262
  tail call void @lean_free_object(ptr noundef nonnull %i.ca) #5
  br label %lean_dec_ref_known.exit269

bb.bi:                                            ; preds = %lean_inc.exit195
  %i.cw = icmp sgt i32 %.val.i260, 1
  br i1 %i.cw, label %bb.bj, label %bb.bk, !prof !15

bb.bj:                                            ; preds = %bb.bi
  %i.cx = add nsw i32 %.val.i260, -1
  store i32 %i.cx, ptr %i.ca, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit269

bb.bk:                                            ; preds = %bb.bi
  %.not.i8.i261 = icmp eq i32 %.val.i260, 0
  br i1 %.not.i8.i261, label %lean_dec_ref_known.exit269, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ca) #5
  br label %lean_dec_ref_known.exit269

lean_dec_ref_known.exit269:                       ; preds = %bb.bl, %bb.bk, %bb.bj, %lean_dec.exit.i265
  %.val.i.i270 = load i32, ptr %l_Lean_Compiler_LCNF_LetValue_toMono___closed__27_value.l_Lean_Compiler_LCNF_LetValue_toMono___closed__30_value, align 8, !tbaa !14 ; 2 uses
  %8 = icmp sgt i32 %.val.i.i270, 0
  br i1 %8, label %lean_inc.exit193, label %9, !prof !15

9:                                                ; preds = %lean_dec_ref_known.exit269
  %.not.i.i271 = icmp eq i32 %.val.i.i270, 0
  br i1 %.not.i.i271, label %lean_inc.exit193, label %10

10:                                               ; preds = %9
  %11 = atomicrmw sub ptr %l_Lean_Compiler_LCNF_LetValue_toMono___closed__27_value.l_Lean_Compiler_LCNF_LetValue_toMono___closed__30_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit193

lean_inc.exit193:                                 ; preds = %lean_dec_ref_known.exit269, %10, %9
  br i1 %i.af, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %lean_inc.exit193
  %i.cy = getelementptr inbounds nuw i8, ptr %.0185, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.0185, i64 24
  store ptr %i.cj, ptr %i.cz, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.0185, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Compiler_LCNF_decToMono_spec__20___closed__0_value, ptr %i.da, align 8, !tbaa !12
  store ptr %l_Lean_Compiler_LCNF_LetValue_toMono___closed__27_value.l_Lean_Compiler_LCNF_LetValue_toMono___closed__30_value, ptr %i.cy, align 8, !tbaa !12
  br label %lean_dec.exit208

bb.bn:                                            ; preds = %lean_inc.exit193
  tail call void @lean_inc_heartbeat() #5
  %i.db = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #5 ; 7 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.bo, label %lean_alloc_ctor.exit273

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit273:                          ; preds = %bb.bn
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 1, ptr %i.db, align 4, !tbaa !14
  store i32 196640, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %l_Lean_Compiler_LCNF_LetValue_toMono___closed__27_value.l_Lean_Compiler_LCNF_LetValue_toMono___closed__30_value, ptr %i.de, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Compiler_LCNF_decToMono_spec__20___closed__0_value, ptr %i.df, align 8, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %i.cj, ptr %i.dg, align 8, !tbaa !12
  br label %lean_dec.exit208

bb.bp:                                            ; preds = %lean_obj_tag.exit256
  %i.dh = ptrtoint ptr %.0185 to i64
  %i.di = and i64 %i.dh, 1
  %.not.i274 = icmp eq i64 %i.di, 0
  br i1 %.not.i274, label %bb.bq, label %lean_del_object.exit

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_free_object(ptr noundef nonnull %.0185) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bp, %bb.bq
  %i.dj = load i32, ptr %.0.i.i, align 4, !tbaa !14 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %lean_del_object.exit
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %.0.i.i, align 4, !tbaa !14
  br label %lean_dec_ref.exit231

bb.bs:                                            ; preds = %lean_del_object.exit
  %.not.i230 = icmp eq i32 %i.dj, 0
  br i1 %.not.i230, label %lean_dec_ref.exit231, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i.i) #5
  br label %lean_dec_ref.exit231

lean_dec_ref.exit231:                             ; preds = %bb.br, %bb.bs, %bb.bt
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !12 ; 5 uses
  %.val235 = load i32, ptr %i.ca, align 8, !tbaa !14
  %i.do = icmp eq i32 %.val235, 1
  br i1 %i.do, label %.thread, label %bb.bu

bb.bu:                                            ; preds = %lean_dec_ref.exit231
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = and i64 %i.dp, 1
  %.not.i190 = icmp eq i64 %i.dq, 0
  br i1 %.not.i190, label %bb.bv, label %lean_inc.exit191

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i275 = load i32, ptr %i.dn, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i275, 0
  br i1 %i.dr, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %bb.bv
  %i.ds = add nuw i32 %.val.i.i275, 1
  store i32 %i.ds, ptr %i.dn, align 4, !tbaa !14
  br label %lean_inc.exit191

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i276 = icmp eq i32 %.val.i.i275, 0
  br i1 %.not.i.i276, label %lean_inc.exit191, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dt = atomicrmw sub ptr %i.dn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit191

lean_inc.exit191:                                 ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu
  br i1 %.not.i253, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %lean_inc.exit191
  %i.du = load i32, ptr %i.ca, align 8, !tbaa !14 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.ca, align 8, !tbaa !14
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %.not.i216 = icmp eq i32 %i.du, 0
  br i1 %.not.i216, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ca) #5
  br label %bb.cd

bb.cd:                                            ; preds = %lean_inc.exit191, %bb.ca, %bb.cb, %bb.cc
  tail call void @lean_inc_heartbeat() #5
  %i.dx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ce, label %.thread.sink.split

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.cf:                                            ; preds = %lean_obj_tag.exit250
  %i.dz = ptrtoint ptr %.0185 to i64
  %i.ea = and i64 %i.dz, 1
  %.not.i279 = icmp eq i64 %i.ea, 0
  br i1 %.not.i279, label %bb.cg, label %lean_del_object.exit280

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_free_object(ptr noundef nonnull %.0185) #5
  br label %lean_del_object.exit280

lean_del_object.exit280:                          ; preds = %bb.cf, %bb.cg
  %i.eb = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.ch, label %bb.ci, !prof !15

bb.ch:                                            ; preds = %lean_del_object.exit280
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit229

bb.ci:                                            ; preds = %lean_del_object.exit280
  %.not.i228 = icmp eq i32 %i.eb, 0
  br i1 %.not.i228, label %lean_dec_ref.exit229, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #5
  br label %lean_dec_ref.exit229

lean_dec_ref.exit229:                             ; preds = %bb.ch, %bb.ci, %bb.cj
  %i.ee = ptrtoint ptr %i.aa to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i205 = icmp eq i64 %i.ef, 0
  br i1 %.not.i205, label %bb.ck, label %lean_dec.exit206

bb.ck:                                            ; preds = %lean_dec_ref.exit229
  %i.eg = load i32, ptr %i.aa, align 4, !tbaa !14 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.cl, label %bb.cm, !prof !15

bb.cl:                                            ; preds = %bb.ck
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %i.aa, align 4, !tbaa !14
  br label %lean_dec.exit206

bb.cm:                                            ; preds = %bb.ck
  %.not.i218 = icmp eq i32 %i.eg, 0
  br i1 %.not.i218, label %lean_dec.exit206, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #5
  br label %lean_dec.exit206

lean_dec.exit206:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %lean_dec_ref.exit229
  %i.ej = load i32, ptr %.0.i.i, align 4, !tbaa !14 ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.co, label %bb.cp, !prof !15

bb.co:                                            ; preds = %lean_dec.exit206
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %.0.i.i, align 4, !tbaa !14
  br label %lean_dec_ref.exit227

bb.cp:                                            ; preds = %lean_dec.exit206
  %.not.i226 = icmp eq i32 %i.ej, 0
  br i1 %.not.i226, label %lean_dec_ref.exit227, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i.i) #5
  br label %lean_dec_ref.exit227

lean_dec_ref.exit227:                             ; preds = %bb.co, %bb.cp, %bb.cq
  %i.em = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !12 ; 5 uses
  %.val234 = load i32, ptr %i.ay, align 8, !tbaa !14
  %i.eo = icmp eq i32 %.val234, 1
  br i1 %i.eo, label %.thread, label %bb.cr

end_hunk_0
