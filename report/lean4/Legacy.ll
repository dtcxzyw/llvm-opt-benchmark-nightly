Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Legacy?download=true
inline.NumInlined: 13929
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumUnrolled: 264
begin_hunk_0_@l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0:bb.a
bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #8
  br label %lean_dec.exit118

lean_dec.exit118:                                 ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %i.ag = ptrtoint ptr %4 to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i115 = icmp eq i64 %i.ah, 0
  br i1 %.not.i115, label %bb.x, label %lean_dec.exit116

bb.x:                                             ; preds = %lean_dec.exit118
  %i.ai = load i32, ptr %4, align 4, !tbaa !11    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit116

bb.z:                                             ; preds = %bb.x
  %.not.i127 = icmp eq i32 %i.ai, 0
  br i1 %.not.i127, label %lean_dec.exit116, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #8
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %bb.aa, %bb.z, %bb.y, %lean_dec.exit118
  %i.al = ptrtoint ptr %3 to i64
  %i.am = and i64 %i.al, 1
  %.not.i113 = icmp eq i64 %i.am, 0
  br i1 %.not.i113, label %bb.ab, label %lean_dec.exit114

bb.ab:                                            ; preds = %lean_dec.exit116
  %i.an = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit114

bb.ad:                                            ; preds = %bb.ab
  %.not.i129 = icmp eq i32 %i.an, 0
  br i1 %.not.i129, label %lean_dec.exit114, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit114

lean_dec.exit114:                                 ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_dec.exit116
  %i.aq = ptrtoint ptr %2 to i64
  %i.ar = and i64 %i.aq, 1
  %.not.i111 = icmp eq i64 %i.ar, 0
  br i1 %.not.i111, label %bb.af, label %lean_dec.exit112

bb.af:                                            ; preds = %lean_dec.exit114
  %i.as = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.ag, label %bb.ah, !prof !15

bb.ag:                                            ; preds = %bb.af
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit112

bb.ah:                                            ; preds = %bb.af
  %.not.i131 = icmp eq i32 %i.as, 0
  br i1 %.not.i131, label %lean_dec.exit112, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit112

lean_dec.exit112:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %lean_dec.exit114
  %i.av = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %lean_dec.exit112
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit138

bb.ak:                                            ; preds = %lean_dec.exit112
  %.not.i137 = icmp eq i32 %i.av, 0
  br i1 %.not.i137, label %lean_dec_ref.exit138, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit138

lean_dec_ref.exit138:                             ; preds = %bb.aj, %bb.ak, %bb.al
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !9  ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.ba, 1
  %.not.i124 = icmp eq i64 %i.bb, 0
  br i1 %.not.i124, label %bb.am, label %lean_inc.exit125

bb.am:                                            ; preds = %lean_dec_ref.exit138
  %.val.i.i143 = load i32, ptr %i.az, align 4, !tbaa !11 ; 3 uses
  %i.bc = icmp sgt i32 %.val.i.i143, 0
  br i1 %i.bc, label %bb.an, label %bb.ao, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.bd = add nuw i32 %.val.i.i143, 1
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !11
  br label %lean_inc.exit125

bb.ao:                                            ; preds = %bb.am
  %.not.i.i144 = icmp eq i32 %.val.i.i143, 0
  br i1 %.not.i.i144, label %lean_inc.exit125, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.be = atomicrmw sub ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit125

lean_inc.exit125:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_dec_ref.exit138
  %.val.i146 = load i32, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %i.bf = icmp eq i32 %.val.i146, 1
  br i1 %i.bf, label %.preheader.i148.preheader, label %bb.au

.preheader.i148.preheader:                        ; preds = %lean_inc.exit125
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !9  ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i.i150 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i150, label %bb.aq, label %lean_dec.exit.i151

bb.aq:                                            ; preds = %.preheader.i148.preheader
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !11 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ar, label %bb.as, !prof !15

bb.ar:                                            ; preds = %bb.aq
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !11
  br label %lean_dec.exit.i151

bb.as:                                            ; preds = %bb.aq
  %.not.i7.i155 = icmp eq i32 %i.bj, 0
  br i1 %.not.i7.i155, label %lean_dec.exit.i151, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #8
  br label %lean_dec.exit.i151

lean_dec.exit.i151:                               ; preds = %bb.at, %bb.as, %bb.ar, %.preheader.i148.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.j) #8
  br label %lean_dec_ref_known.exit156

bb.au:                                            ; preds = %lean_inc.exit125
  %i.bm = icmp sgt i32 %.val.i146, 1
  br i1 %i.bm, label %bb.av, label %bb.aw, !prof !15

bb.av:                                            ; preds = %bb.au
  %i.bn = add nsw i32 %.val.i146, -1
  store i32 %i.bn, ptr %i.j, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit156

bb.aw:                                            ; preds = %bb.au
  %.not.i8.i147 = icmp eq i32 %.val.i146, 0
  br i1 %.not.i8.i147, label %lean_dec_ref_known.exit156, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec_ref_known.exit156

lean_dec_ref_known.exit156:                       ; preds = %lean_dec.exit.i151, %bb.av, %bb.aw, %bb.ax
  tail call void @lean_inc_heartbeat() #8
  %i.bo = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ay, label %lean_dec_ref_known.exit

bb.ay:                                            ; preds = %lean_dec_ref_known.exit156
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec_ref_known.exit:                          ; preds = %lean_dec_ref_known.exit156
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 1, ptr %i.bo, align 4, !tbaa !11
  store i32 16842768, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.az, ptr %i.br, align 8, !tbaa !9
  br label %lean_dec.exit

lean_dec_ref_known.exit.thread:                   ; preds = %lean_dec_ref_known.exit.thread210, %bb.p, %bb.q, %bb.r, %lean_inc_ref.exit
  %i.bs = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.bt = and i64 %i.bs, 1
  %.not.i157 = icmp eq i64 %i.bt, 0
  br i1 %.not.i157, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %lean_dec_ref_known.exit.thread
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.ba:                                            ; preds = %lean_dec_ref_known.exit.thread
  %i.bu = icmp ugt ptr %0, inttoptr (i64 4611686018427387903 to ptr)
  br i1 %i.bu, label %bb.bb, label %lean_usize_mul_checked.exit.i.i, !prof !21

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_internal_panic_overflow() #9
  unreachable

lean_usize_mul_checked.exit.i.i:                  ; preds = %bb.ba
  %14 = icmp ugt ptr %0, inttoptr (i64 4611686018427387897 to ptr)
  br i1 %14, label %bb.bc, label %lean_mk_empty_array_with_capacity.exit, !prof !21

bb.bc:                                            ; preds = %lean_usize_mul_checked.exit.i.i
  tail call void @lean_internal_panic_overflow() #9
  unreachable

lean_mk_empty_array_with_capacity.exit:           ; preds = %lean_usize_mul_checked.exit.i.i
  %15 = lshr i64 %i.bs, 1                         ; 2 uses
  %16 = shl nuw i64 %15, 3
  %17 = add nuw i64 %16, 24
  %i.bv = tail call ptr @lean_alloc_object(i64 noundef %17) #8 ; 5 uses
  store i32 1, ptr %i.bv, align 4, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 65535
  %i.bz = or disjoint i32 %i.by, -167772160
  store i32 %i.bz, ptr %i.bw, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %i.ca, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %15, ptr %i.cb, align 8, !tbaa !13
  %i.cc = tail call ptr @lean_alloc_object(i64 noundef 64) #8 ; 11 uses
  store i32 1, ptr %i.cc, align 4, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, 65535
  %i.cg = or disjoint i32 %i.cf, -184549376
  store i32 %i.cg, ptr %i.cd, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr @l_Lean_Elab_Term_Do_ToTerm_run___boxed, ptr %i.ch, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i16 7, ptr %i.ci, align 8, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 18
  store i16 5, ptr %i.cj, align 2, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %1, ptr %i.ck, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store ptr %2, ptr %i.cl, align 8, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr %3, ptr %i.cm, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store ptr %i.bv, ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.co, align 8, !tbaa !9
  %i.cp = tail call ptr @l_Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_ToCodeBlock_mkForInBody_spec__0___redArg(ptr noundef nonnull %i.cc, ptr poison, ptr poison, ptr poison, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) ; 11 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cr = and i64 %i.cq, 1
  %.not.i158 = icmp eq i64 %i.cr, 0
  br i1 %.not.i158, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %lean_mk_empty_array_with_capacity.exit
  %i.cs = lshr i64 %i.cq, 1
  %i.ct = trunc i64 %i.cs to i32
  br label %lean_obj_tag.exit161

bb.be:                                            ; preds = %lean_mk_empty_array_with_capacity.exit
  %i.cu = getelementptr i8, ptr %i.cp, i64 4
  %.val.i160 = load i32, ptr %i.cu, align 4
  %i.cv = lshr i32 %.val.i160, 24
  br label %lean_obj_tag.exit161

lean_obj_tag.exit161:                             ; preds = %bb.bd, %bb.be
  %.0.i159 = phi i32 [ %i.ct, %bb.bd ], [ %i.cv, %bb.be ]
  %i.cw = icmp eq i32 %.0.i159, 0
  br i1 %i.cw, label %bb.bf, label %bb.ch

bb.bf:                                            ; preds = %lean_obj_tag.exit161
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !9  ; 5 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = and i64 %i.cz, 1
  %.not.i122 = icmp eq i64 %i.da, 0
  br i1 %.not.i122, label %bb.bg, label %lean_inc.exit123

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i162 = load i32, ptr %i.cy, align 4, !tbaa !11 ; 3 uses
  %i.db = icmp sgt i32 %.val.i.i162, 0
  br i1 %i.db, label %bb.bh, label %bb.bi, !prof !15

bb.bh:                                            ; preds = %bb.bg
  %i.dc = add nuw i32 %.val.i.i162, 1
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !11
  br label %lean_inc.exit123

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i163 = icmp eq i32 %.val.i.i162, 0
  br i1 %.not.i.i163, label %lean_inc.exit123, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dd = atomicrmw sub ptr %i.cy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit123

lean_inc.exit123:                                 ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %.val.i165 = load i32, ptr %i.cp, align 8, !tbaa !11 ; 4 uses
  %i.de = icmp eq i32 %.val.i165, 1
  br i1 %i.de, label %.preheader.i167.preheader, label %bb.bo

.preheader.i167.preheader:                        ; preds = %lean_inc.exit123
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !9  ; 4 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, 1
  %.not.i.i169 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i169, label %bb.bk, label %lean_dec.exit.i170

bb.bk:                                            ; preds = %.preheader.i167.preheader
  %i.di = load i32, ptr %i.df, align 4, !tbaa !11 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.bl, label %bb.bm, !prof !15

bb.bl:                                            ; preds = %bb.bk
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !11
  br label %lean_dec.exit.i170

bb.bm:                                            ; preds = %bb.bk
  %.not.i7.i174 = icmp eq i32 %i.di, 0
  br i1 %.not.i7.i174, label %lean_dec.exit.i170, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.df) #8
  br label %lean_dec.exit.i170

lean_dec.exit.i170:                               ; preds = %bb.bn, %bb.bm, %bb.bl, %.preheader.i167.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.cp) #8
  br label %lean_dec_ref_known.exit175

bb.bo:                                            ; preds = %lean_inc.exit123
  %i.dl = icmp sgt i32 %.val.i165, 1
  br i1 %i.dl, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.dm = add nsw i32 %.val.i165, -1
  store i32 %i.dm, ptr %i.cp, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit175

bb.bq:                                            ; preds = %bb.bo
  %.not.i8.i166 = icmp eq i32 %.val.i165, 0
  br i1 %.not.i8.i166, label %lean_dec_ref_known.exit175, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cp) #8
  br label %lean_dec_ref_known.exit175

lean_dec_ref_known.exit175:                       ; preds = %lean_dec.exit.i170, %bb.bp, %bb.bq, %bb.br
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !9  ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !9  ; 5 uses
  %i.dt = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.do, i8 noundef zeroext 0) #8 ; 7 uses
  %i.du = load atomic i32, ptr @l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0___closed__1_once seq_cst, align 4, !tbaa !16
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.bs, label %bb.bt, !prof !15

bb.bs:                                            ; preds = %lean_dec_ref_known.exit175
  %i.dw = load ptr, ptr @l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0___closed__1, align 8, !tbaa !9
  br label %lean_obj_once.exit177

bb.bt:                                            ; preds = %lean_dec_ref_known.exit175
  %i.dx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0___closed__1, ptr noundef nonnull @l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0___closed__1_once, ptr noundef nonnull @_init_l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0___closed__1) #8
  br label %lean_obj_once.exit177

lean_obj_once.exit177:                            ; preds = %bb.bs, %bb.bt
  %.0.i176 = phi ptr [ %i.dw, %bb.bs ], [ %i.dx, %bb.bt ]
  %i.dy = ptrtoint ptr %i.ds to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i120 = icmp eq i64 %i.dz, 0
  br i1 %.not.i120, label %bb.bu, label %lean_inc.exit121

bb.bu:                                            ; preds = %lean_obj_once.exit177
  %.val.i.i178 = load i32, ptr %i.ds, align 4, !tbaa !11 ; 3 uses
  %i.ea = icmp sgt i32 %.val.i.i178, 0
  br i1 %i.ea, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.eb = add nuw i32 %.val.i.i178, 1
  store i32 %i.eb, ptr %i.ds, align 4, !tbaa !11
  br label %lean_inc.exit121

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i179 = icmp eq i32 %.val.i.i178, 0
  br i1 %.not.i.i179, label %lean_inc.exit121, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ec = atomicrmw sub ptr %i.ds, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit121

lean_inc.exit121:                                 ; preds = %bb.bx, %bb.bw, %bb.bv, %lean_obj_once.exit177
  %i.ed = ptrtoint ptr %i.dq to i64
  %i.ee = and i64 %i.ed, 1
  %.not.i119 = icmp eq i64 %i.ee, 0
  br i1 %.not.i119, label %bb.by, label %lean_inc.exit

bb.by:                                            ; preds = %lean_inc.exit121
  %.val.i.i181 = load i32, ptr %i.dq, align 4, !tbaa !11 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i181, 0
  br i1 %i.ef, label %bb.bz, label %bb.ca, !prof !15

bb.bz:                                            ; preds = %bb.by
  %i.eg = add nuw i32 %.val.i.i181, 1
  store i32 %i.eg, ptr %i.dq, align 4, !tbaa !11
  br label %lean_inc.exit

bb.ca:                                            ; preds = %bb.by
  %.not.i.i182 = icmp eq i32 %.val.i.i181, 0
  br i1 %.not.i.i182, label %lean_inc.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.eh = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cb, %bb.ca, %bb.bz, %lean_inc.exit121
  %i.ei = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.dq, ptr noundef nonnull @l_Lean_Elab_Term_Do_ToCodeBlock_doTryToCode___lam__0___closed__2_value, ptr noundef %i.ds) #8
  %i.ej = ptrtoint ptr %i.dt to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i184 = icmp eq i64 %i.ek, 0
  br i1 %.not.i184, label %bb.cc, label %lean_inc_n.exit

bb.cc:                                            ; preds = %lean_inc.exit
  %.val.i.i185 = load i32, ptr %i.dt, align 4, !tbaa !11 ; 3 uses
end_hunk_0
begin_hunk_1_@initialize_Lean_Elab_Do_Legacy:bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val46 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val46, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !11   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !11
  br label %lean_dec_ref.exit40

bb.e:                                             ; preds = %bb.c
  %.not.i39 = icmp eq i32 %i.h, 0
  br i1 %.not.i39, label %lean_dec_ref.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #8
  br label %lean_dec_ref.exit40

lean_dec_ref.exit40:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @initialize_Lean_Elab_PatternVar(i8 noundef zeroext %0) #8 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val45 = load i32, ptr %i.l, align 4
  %.mask.i47 = and i32 %.val45, -16777216
  %i.m = icmp eq i32 %.mask.i47, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit40
  %i.n = load i32, ptr %i.k, align 4, !tbaa !11   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !11
  br label %lean_dec_ref.exit38

bb.i:                                             ; preds = %bb.g
  %.not.i37 = icmp eq i32 %i.n, 0
  br i1 %.not.i37, label %lean_dec_ref.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #8
  br label %lean_dec_ref.exit38

lean_dec_ref.exit38:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.q = tail call ptr @initialize_Lean_Elab_Quotation_Util(i8 noundef zeroext %0) #8 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val44 = load i32, ptr %i.r, align 4
  %.mask.i48 = and i32 %.val44, -16777216
  %i.s = icmp eq i32 %.mask.i48, 16777216
  br i1 %i.s, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %lean_dec_ref.exit38
  %i.t = load i32, ptr %i.q, align 4, !tbaa !11   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !11
  br label %lean_dec_ref.exit36

bb.m:                                             ; preds = %bb.k
  %.not.i35 = icmp eq i32 %i.t, 0
  br i1 %.not.i35, label %lean_dec_ref.exit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #8
  br label %lean_dec_ref.exit36

lean_dec_ref.exit36:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @initialize_Lean_Parser_Do(i8 noundef zeroext %0) #8 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val43 = load i32, ptr %i.x, align 4
  %.mask.i49 = and i32 %.val43, -16777216
  %i.y = icmp eq i32 %.mask.i49, 16777216
  br i1 %i.y, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref.exit36
  %i.z = load i32, ptr %i.w, align 4, !tbaa !11   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec_ref.exit34

bb.q:                                             ; preds = %bb.o
  %.not.i33 = icmp eq i32 %i.z, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #8
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.ac = tail call ptr @initialize_Init_Omega(i8 noundef zeroext %0) #8 ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val42 = load i32, ptr %i.ad, align 4
  %.mask.i50 = and i32 %.val42, -16777216
  %i.ae = icmp eq i32 %.mask.i50, 16777216
  br i1 %i.ae, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %lean_dec_ref.exit34
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !11 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !11
  br label %lean_dec_ref.exit32

bb.u:                                             ; preds = %bb.s
  %.not.i31 = icmp eq i32 %i.af, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #8
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ai = tail call ptr @runtime_initialize_Lean_Elab_Do_Legacy(i8 noundef zeroext %0) ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val41 = load i32, ptr %i.aj, align 4
  %.mask.i51 = and i32 %.val41, -16777216
  %i.ak = icmp eq i32 %.mask.i51, 16777216
  br i1 %i.ak, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %lean_dec_ref.exit32
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !11 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !11
  br label %lean_dec_ref.exit30

bb.y:                                             ; preds = %bb.w
  %.not.i29 = icmp eq i32 %i.al, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #8
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.ao = tail call ptr @meta_initialize_Lean_Elab_Do_Legacy(i8 noundef zeroext %0) ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val = load i32, ptr %i.ap, align 4
  %.mask.i52 = and i32 %.val, -16777216
  %i.aq = icmp eq i32 %.mask.i52, 16777216
  br i1 %i.aq, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %lean_dec_ref.exit30
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !11 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ab, label %bb.ac, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !11
  br label %tailrecurse._crit_edge

bb.ac:                                            ; preds = %bb.aa
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %tailrecurse._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #8
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit30, %lean_dec_ref.exit32, %lean_dec_ref.exit34, %lean_dec_ref.exit36, %lean_dec_ref.exit38, %lean_dec_ref.exit40, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ai, %lean_dec_ref.exit32 ], [ %i.ac, %lean_dec_ref.exit34 ], [ %i.w, %lean_dec_ref.exit36 ], [ %i.q, %lean_dec_ref.exit38 ], [ %i.k, %lean_dec_ref.exit40 ], [ %i.e, %.lr.ph ], [ %i.ao, %lean_dec_ref.exit30 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Elab_BindersUtil(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Lean_Elab_PatternVar(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Lean_Elab_Quotation_Util(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Lean_Parser_Do(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Init_Omega(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #6

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_overflow() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

declare zeroext i1 @lean_nat_big_lt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_nat_overflow_mul(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @lean_nat_big_mul(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_nat_big_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_array_get_panic(ptr noundef) local_unnamed_addr #1

declare ptr @lean_big_usize_to_nat(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @lean_string_eq_cold(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_copy_expand_array_nonlinear(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @lean_nat_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_array_set_panic(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_free_object(ptr noundef) local_unnamed_addr #1

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Array_mkArray0(ptr noundef) local_unnamed_addr #1

declare ptr @l_String_toRawSubstring_x27(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__3_once seq_cst, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__3, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__3, ptr noundef nonnull @l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__3_once, ptr noundef nonnull @_init_l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__3) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef %.0.i) #8
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l_Lean_throwMaxRecDepthAt___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__6___redArg___closed__3() #0 {
bb.a:
  %i.a = load ptr, ptr @l_Lean_maxRecDepthErrorMessage, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #8
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !11
  store i32 50397200, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !9
  ret ptr %i.b
}

declare double @lean_float_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @lean_float_of_nat(ptr noundef) local_unnamed_addr #1

declare i64 @lean_usize_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_init_l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00__private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3_spec__6_spec__10___redArg___closed__0() #4 {
bb.a:
  ret i64 32
}

declare ptr @l_Lean_PersistentHashMap_empty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_instHashableExtraModUse_hash___boxed(ptr noundef) #1

declare ptr @l_Lean_instBEqExtraModUse_beq___boxed(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__3_once seq_cst, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__3, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__3, ptr noundef nonnull @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__3) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #8
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !11
  store i32 65552, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.h, align 8, !tbaa !9
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00Lean_Elab_Term_Do_mkJmp_spec__0_spec__2_spec__3___closed__3() #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_mkEmptyEntriesArray(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr)) #8
  ret ptr %i.a
}

declare ptr @l_Lean_PersistentHashMap_mkEmptyEntriesArray(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lean_uint64_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Std_HashMap_instInhabited(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Name_hash___override___boxed(ptr noundef) #1

declare ptr @l_Lean_Name_beq___boxed(ptr noundef, ptr noundef) #1

declare ptr @l_Array_instInhabited(ptr noundef) local_unnamed_addr #1

declare ptr @l_mkPanicMessageWithDecl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_EStateM_instMonad___lam__0(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_EStateM_instMonad___lam__1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_EStateM_instMonad___lam__2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_EStateM_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_EStateM_pure(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_EStateM_seqRight(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_EStateM_bind(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_Lean_Syntax_mkStrLit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l_Lean_Elab_getResetInfoTrees___at___00Lean_Elab_withInfoTreeContext___at___00Lean_Elab_withMacroExpansionInfo___at___00Lean_Elab_Term_withMacroExpansion___at___00Lean_Elab_Term_Do_elabDo_spec__0_spec__0_spec__1_spec__2___redArg___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 280) #8 ; 5 uses
  store i32 1, ptr %i.a, align 4, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -167772160
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.g, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #8
  %i.h = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !11
  store i32 65552, ptr %i.j, align 4
end_hunk_1
