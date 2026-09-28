Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Try?download=true
inline.NumInlined: 9001
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_appendSeq:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.cf, align 4, !tbaa !11
  br label %lean_dec.exit106

bb.bm:                                            ; preds = %bb.bk
  %.not.i126 = icmp eq i32 %i.cp, 0
  br i1 %.not.i126, label %lean_dec.exit106, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #10
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %lean_inc.exit91.thread, %bb.bn, %bb.bm, %bb.bl
  %i.cs = tail call ptr @lean_array_push(ptr noundef %0, ptr noundef %1) #10
  br label %lean_dec.exit110

bb.bo:                                            ; preds = %lean_inc.exit91.thread, %lean_inc.exit91
  %i.ct = tail call ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacSeqElems_x3f(ptr noundef %i.cf) ; 10 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %.not.i154 = icmp eq i64 %i.cv, 0
  br i1 %.not.i154, label %lean_obj_tag.exit157, label %lean_obj_tag.exit157.thread

lean_obj_tag.exit157:                             ; preds = %bb.bo
  %i.cw = getelementptr i8, ptr %i.ct, i64 4
  %.val.i156 = load i32, ptr %i.cw, align 4
  %.mask204 = and i32 %.val.i156, -16777216
  %i.cx = icmp eq i32 %.mask204, 16777216
  br i1 %i.cx, label %bb.bp, label %bb.ck

lean_obj_tag.exit157.thread:                      ; preds = %bb.bo
  %i.cy = and i64 %i.cu, 8589934590
  %i.cz = icmp eq i64 %i.cy, 2
  br i1 %i.cz, label %bb.bp, label %lean_dec.exit

bb.bp:                                            ; preds = %lean_obj_tag.exit157.thread, %lean_obj_tag.exit157
  br i1 %.not.i98, label %bb.bq, label %lean_dec.exit104

bb.bq:                                            ; preds = %bb.bp
  %i.da = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.br, label %bb.bs, !prof !16

bb.br:                                            ; preds = %bb.bq
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit104

bb.bs:                                            ; preds = %bb.bq
  %.not.i128 = icmp eq i32 %i.da, 0
  br i1 %.not.i128, label %lean_dec.exit104, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit104

lean_dec.exit104:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15 ; 8 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, 1
  %.not.i = icmp eq i64 %i.dg, 0                  ; 2 uses
  br i1 %.not.i, label %bb.bu, label %lean_inc.exit

bb.bu:                                            ; preds = %lean_dec.exit104
  %.val.i.i158 = load i32, ptr %i.de, align 4, !tbaa !11 ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i158, 0
  br i1 %i.dh, label %bb.bv, label %bb.bw, !prof !16

bb.bv:                                            ; preds = %bb.bu
  %i.di = add nuw i32 %.val.i.i158, 1
  store i32 %i.di, ptr %i.de, align 4, !tbaa !11
  br label %lean_inc.exit

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i159 = icmp eq i32 %.val.i.i158, 0
  br i1 %.not.i.i159, label %lean_inc.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dj = atomicrmw sub ptr %i.de, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bx, %bb.bw, %bb.bv, %lean_dec.exit104
  %.val.i161 = load i32, ptr %i.ct, align 8, !tbaa !11 ; 4 uses
  %i.dk = icmp eq i32 %.val.i161, 1
  br i1 %i.dk, label %.preheader.i163.preheader, label %bb.cc

.preheader.i163.preheader:                        ; preds = %lean_inc.exit
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !15 ; 4 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i.i166 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i166, label %bb.by, label %lean_dec.exit.i167

bb.by:                                            ; preds = %.preheader.i163.preheader
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !11 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !11
  br label %lean_dec.exit.i167

bb.ca:                                            ; preds = %bb.by
  %.not.i7.i171 = icmp eq i32 %i.do, 0
  br i1 %.not.i7.i171, label %lean_dec.exit.i167, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #10
  br label %lean_dec.exit.i167

lean_dec.exit.i167:                               ; preds = %bb.cb, %bb.ca, %bb.bz, %.preheader.i163.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.ct) #10
  br label %lean_dec_ref_known.exit172

bb.cc:                                            ; preds = %lean_inc.exit
  %i.dr = icmp sgt i32 %.val.i161, 1
  br i1 %i.dr, label %bb.cd, label %bb.ce, !prof !16

bb.cd:                                            ; preds = %bb.cc
  %i.ds = add nsw i32 %.val.i161, -1
  store i32 %i.ds, ptr %i.ct, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit172

bb.ce:                                            ; preds = %bb.cc
  %.not.i8.i162 = icmp eq i32 %.val.i161, 0
  br i1 %.not.i8.i162, label %lean_dec_ref_known.exit172, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #10
  br label %lean_dec_ref_known.exit172

lean_dec_ref_known.exit172:                       ; preds = %lean_dec.exit.i167, %bb.cd, %bb.ce, %bb.cf
  %i.dt = tail call ptr @l_Array_append___redArg(ptr noundef %0, ptr noundef %i.de) #10 ; 4 uses
  br i1 %.not.i, label %bb.cg, label %lean_dec.exit110

bb.cg:                                            ; preds = %lean_dec_ref_known.exit172
  %i.du = load i32, ptr %i.de, align 4, !tbaa !11 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.ch, label %bb.ci, !prof !16

bb.ch:                                            ; preds = %bb.cg
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.de, align 4, !tbaa !11
  br label %lean_dec.exit110

bb.ci:                                            ; preds = %bb.cg
  %.not.i130 = icmp eq i32 %i.du, 0
  br i1 %.not.i130, label %lean_dec.exit110, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.de) #10
  br label %lean_dec.exit110

bb.ck:                                            ; preds = %lean_obj_tag.exit157
  %i.dx = load i32, ptr %i.ct, align 4, !tbaa !11 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.cl, label %bb.cm, !prof !16

bb.cl:                                            ; preds = %bb.ck
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.ct, align 4, !tbaa !11
  br label %lean_dec.exit

bb.cm:                                            ; preds = %bb.ck
  %.not.i132 = icmp eq i32 %i.dx, 0
  br i1 %.not.i132, label %lean_dec.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit157.thread, %bb.cn, %bb.cm, %bb.cl
  %i.ea = tail call ptr @lean_array_push(ptr noundef %0, ptr noundef %1) #10
  br label %lean_dec.exit110

lean_dec.exit110:                                 ; preds = %lean_dec_ref_known.exit172, %bb.ch, %bb.ci, %bb.cj, %lean_dec.exit112, %bb.ay, %bb.az, %bb.ba, %lean_dec.exit106, %lean_dec.exit, %bb.j, %lean_dec.exit116, %lean_dec.exit114, %lean_dec.exit108, %bb.l
  %.7 = phi ptr [ %i.ea, %lean_dec.exit ], [ %i.o, %bb.j ], [ %i.s, %bb.l ], [ %i.ag, %lean_dec.exit116 ], [ %i.ce, %lean_dec.exit108 ], [ %i.bt, %lean_dec.exit114 ], [ %i.cs, %lean_dec.exit106 ], [ %i.bx, %lean_dec.exit112 ], [ %i.bx, %bb.ba ], [ %i.bx, %bb.az ], [ %i.bx, %bb.ay ], [ %i.dt, %bb.cj ], [ %i.dt, %bb.ci ], [ %i.dt, %bb.ch ], [ %i.dt, %lean_dec_ref_known.exit172 ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___redArg(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !13
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i138 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i138, label %lean_nat_eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone_spec__0(ptr noundef nonnull readonly %0, i64 noundef 0, i64 noundef %.mask.i, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone___closed__0_value)
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.b, %bb.a
  %.1.i = phi ptr [ @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone___closed__0_value, %bb.a ], [ %i.b, %bb.b ] ; 16 uses
  %i.c = getelementptr i8, ptr %.1.i, i64 8
  %.val = load i64, ptr %i.c, align 8, !tbaa !13
  %i.d = and i64 %.val, 9223372036854775807
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.at
    i64 1, label %bb.ak
  ]

bb.c:                                             ; preds = %lean_nat_eq.exit
  %i.e = icmp eq i8 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.g, i8 noundef zeroext 0) #10 ; 19 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i139 = icmp eq i64 %i.j, 0                ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i139, label %bb.e, label %lean_inc_n.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !11 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %.val.i.i, 5
  store i32 %i.l, ptr %i.h, align 4, !tbaa !11
  br label %lean_inc_n.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_n.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %i.h, i32 5 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  tail call void @lean_inc_heartbeat() #10
  %i.n = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %lean_alloc_ctor.exit

bb.i:                                             ; preds = %lean_inc_n.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_n.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1, ptr %i.n, align 4, !tbaa !11
  store i32 33685528, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.h, ptr %i.q, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__3_value, ptr %i.r, align 8, !tbaa !15
  %i.s = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1_once seq_cst, align 4, !tbaa !19
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %lean_alloc_ctor.exit
  %i.u = load ptr, ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1, align 8, !tbaa !15
  br label %lean_obj_once.exit

bb.k:                                             ; preds = %lean_alloc_ctor.exit
  %i.v = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.j, %bb.k
  %.0.i140 = phi ptr [ %i.u, %bb.j ], [ %i.v, %bb.k ]
  %i.w = tail call ptr @l_Lean_Syntax_SepArray_ofElems(ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__13_value, ptr noundef nonnull %.1.i) #10 ; 4 uses
  %i.x = load i32, ptr %.1.i, align 8, !tbaa !11  ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %lean_obj_once.exit
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.1.i, align 8, !tbaa !11
  br label %lean_dec_ref.exit132

bb.m:                                             ; preds = %lean_obj_once.exit
  %.not.i131 = icmp eq i32 %i.x, 0
  br i1 %.not.i131, label %lean_dec_ref.exit132, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #10
  br label %lean_dec_ref.exit132

lean_dec_ref.exit132:                             ; preds = %bb.l, %bb.m, %bb.n
  %i.aa = tail call ptr @l_Array_append___redArg(ptr noundef %.0.i140, ptr noundef %i.w) #10
  %i.ab = load i32, ptr %i.w, align 4, !tbaa !11  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %lean_dec_ref.exit132
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec_ref.exit130

bb.p:                                             ; preds = %lean_dec_ref.exit132
  %.not.i129 = icmp eq i32 %i.ab, 0
  br i1 %.not.i129, label %lean_dec_ref.exit130, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #10
  br label %lean_dec_ref.exit130

lean_dec_ref.exit130:                             ; preds = %bb.o, %bb.p, %bb.q
  tail call void @lean_inc_heartbeat() #10
  %i.ae = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #10 ; 7 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.r, label %lean_alloc_ctor.exit141

bb.r:                                             ; preds = %lean_dec_ref.exit130
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit141:                          ; preds = %lean_dec_ref.exit130
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1, ptr %i.ae, align 4, !tbaa !11
  store i32 16973856, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__9_value, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.aa, ptr %i.aj, align 8, !tbaa !15
  %i.ak = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.h, ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__7_value, ptr noundef nonnull %i.ae) #10
  %i.al = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.h, ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__5_value, ptr noundef %i.ak) #10
  tail call void @lean_inc_heartbeat() #10
  %i.am = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.s, label %lean_alloc_ctor.exit142

bb.s:                                             ; preds = %lean_alloc_ctor.exit141
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit142:                          ; preds = %lean_alloc_ctor.exit141
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 1, ptr %i.am, align 4, !tbaa !11
  store i32 33685528, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.h, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__16_value, ptr %i.aq, align 8, !tbaa !15
  %i.ar = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.h, ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__2_value, ptr noundef nonnull %i.n, ptr noundef %i.al, ptr noundef nonnull %i.am) #10
  tail call void @lean_inc_heartbeat() #10
  %i.as = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.t, label %lean_alloc_ctor.exit143

bb.t:                                             ; preds = %lean_alloc_ctor.exit142
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.u:                                             ; preds = %bb.c
  br i1 %.not.i139, label %bb.v, label %lean_inc_n.exit147

bb.v:                                             ; preds = %bb.u
  %.val.i.i145 = load i32, ptr %i.h, align 4, !tbaa !11 ; 3 uses
  %i.au = icmp sgt i32 %.val.i.i145, 0
  br i1 %i.au, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.av = add nuw i32 %.val.i.i145, 5
  store i32 %i.av, ptr %i.h, align 4, !tbaa !11
  br label %lean_inc_n.exit147

bb.x:                                             ; preds = %bb.v
  %.not.i.i146 = icmp eq i32 %.val.i.i145, 0
  br i1 %.not.i.i146, label %lean_inc_n.exit147, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = atomicrmw sub ptr %i.h, i32 5 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit147

lean_inc_n.exit147:                               ; preds = %bb.u, %bb.w, %bb.x, %bb.y
  tail call void @lean_inc_heartbeat() #10
  %i.ax = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.z, label %lean_alloc_ctor.exit148

bb.z:                                             ; preds = %lean_inc_n.exit147
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit148:                          ; preds = %lean_inc_n.exit147
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 1, ptr %i.ax, align 4, !tbaa !11
  store i32 33685528, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.h, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___redArg___closed__0_value, ptr %i.bb, align 8, !tbaa !15
  %i.bc = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.h, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isCDotTac___closed__3_value, ptr noundef nonnull %i.ax) #10
  %i.bd = load atomic i32, ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1_once seq_cst, align 4, !tbaa !19
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.aa, label %bb.ab, !prof !16

bb.aa:                                            ; preds = %lean_alloc_ctor.exit148
  %i.bf = load ptr, ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1, align 8, !tbaa !15
  br label %lean_obj_once.exit150

bb.ab:                                            ; preds = %lean_alloc_ctor.exit148
  %i.bg = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkTrySuggestions___redArg___closed__1) #10
  br label %lean_obj_once.exit150

lean_obj_once.exit150:                            ; preds = %bb.aa, %bb.ab
  %.0.i149 = phi ptr [ %i.bf, %bb.aa ], [ %i.bg, %bb.ab ]
  %i.bh = tail call ptr @l_Lean_Syntax_SepArray_ofElems(ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__13_value, ptr noundef nonnull %.1.i) #10 ; 4 uses
  %i.bi = load i32, ptr %.1.i, align 8, !tbaa !11 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %lean_obj_once.exit150
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %.1.i, align 8, !tbaa !11
  br label %lean_dec_ref.exit128

bb.ad:                                            ; preds = %lean_obj_once.exit150
  %.not.i127 = icmp eq i32 %i.bi, 0
  br i1 %.not.i127, label %lean_dec_ref.exit128, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #10
  br label %lean_dec_ref.exit128

lean_dec_ref.exit128:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bl = tail call ptr @l_Array_append___redArg(ptr noundef %.0.i149, ptr noundef %i.bh) #10
  %i.bm = load i32, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec_ref.exit128
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.bh, align 4, !tbaa !11
  br label %lean_dec_ref.exit126

bb.ag:                                            ; preds = %lean_dec_ref.exit128
  %.not.i125 = icmp eq i32 %i.bm, 0
  br i1 %.not.i125, label %lean_dec_ref.exit126, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bh) #10
  br label %lean_dec_ref.exit126

lean_dec_ref.exit126:                             ; preds = %bb.af, %bb.ag, %bb.ah
  tail call void @lean_inc_heartbeat() #10
  %i.bp = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #10 ; 7 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ai, label %lean_alloc_ctor.exit151

bb.ai:                                            ; preds = %lean_dec_ref.exit126
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit151:                          ; preds = %lean_dec_ref.exit126
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 1, ptr %i.bp, align 4, !tbaa !11
  store i32 16973856, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.h, ptr %i.bs, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__9_value, ptr %i.bt, align 8, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.bl, ptr %i.bu, align 8, !tbaa !15
  %i.bv = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.h, ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__7_value, ptr noundef nonnull %i.bp) #10
  %i.bw = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.h, ptr noundef nonnull @l_Lean_Elab_Tactic_Try_evalSuggestExact___lam__2___closed__5_value, ptr noundef %i.bv) #10
  %i.bx = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.h, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isCDotTac___closed__1_value, ptr noundef %i.bc, ptr noundef %i.bw) #10
  tail call void @lean_inc_heartbeat() #10
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aj, label %lean_alloc_ctor.exit143

bb.aj:                                            ; preds = %lean_alloc_ctor.exit151
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.ak:                                            ; preds = %lean_nat_eq.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15 ; 5 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, 1
  %.not.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.al, label %lean_array_get.exit

bb.al:                                            ; preds = %bb.ak
  %.val.i.i.i.i = load i32, ptr %i.cb, align 4, !tbaa !11 ; 3 uses
  %i.ce = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.ce, label %bb.am, label %bb.an, !prof !16

bb.am:                                            ; preds = %bb.al
  %i.cf = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.cf, ptr %i.cb, align 4, !tbaa !11
  br label %lean_array_get.exit

bb.an:                                            ; preds = %bb.al
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_array_get.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = atomicrmw sub ptr %i.cb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit

lean_array_get.exit:                              ; preds = %bb.ak, %bb.am, %bb.an, %bb.ao
  %i.ch = load i32, ptr %.1.i, align 8, !tbaa !11 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.ap, label %bb.aq, !prof !16

bb.ap:                                            ; preds = %lean_array_get.exit
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %.1.i, align 8, !tbaa !11
  br label %lean_dec_ref.exit124

bb.aq:                                            ; preds = %lean_array_get.exit
  %.not.i123 = icmp eq i32 %i.ch, 0
  br i1 %.not.i123, label %lean_dec_ref.exit124, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #10
  br label %lean_dec_ref.exit124

lean_dec_ref.exit124:                             ; preds = %bb.ap, %bb.aq, %bb.ar
  tail call void @lean_inc_heartbeat() #10
  %i.ck = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.as, label %lean_alloc_ctor.exit143

bb.as:                                            ; preds = %lean_dec_ref.exit124
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.at:                                            ; preds = %lean_nat_eq.exit
  %i.cm = load i32, ptr %.1.i, align 8, !tbaa !11 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.au, label %bb.av, !prof !16

bb.au:                                            ; preds = %bb.at
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %.1.i, align 8, !tbaa !11
  br label %lean_dec_ref.exit

bb.av:                                            ; preds = %bb.at
  %.not.i122 = icmp eq i32 %i.cm, 0
  br i1 %.not.i122, label %lean_dec_ref.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.au, %bb.av, %bb.aw
  %i.cp = icmp eq i8 %1, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.cs = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.cr, i8 noundef zeroext 0) #10 ; 11 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i120 = icmp eq i64 %i.cu, 0               ; 2 uses
  br i1 %i.cp, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %lean_dec_ref.exit
  br i1 %.not.i120, label %bb.ay, label %lean_inc.exit121

bb.ay:                                            ; preds = %bb.ax
  %.val.i.i156 = load i32, ptr %i.cs, align 4, !tbaa !11 ; 3 uses
  %i.cv = icmp sgt i32 %.val.i.i156, 0
  br i1 %i.cv, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay
  %i.cw = add nuw i32 %.val.i.i156, 1
  store i32 %i.cw, ptr %i.cs, align 4, !tbaa !11
  br label %lean_inc.exit121

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i157 = icmp eq i32 %.val.i.i156, 0
  br i1 %.not.i.i157, label %lean_inc.exit121, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cx = atomicrmw sub ptr %i.cs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit121

lean_inc.exit121:                                 ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  tail call void @lean_inc_heartbeat() #10
  %i.cy = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.bc, label %lean_alloc_ctor.exit158

bb.bc:                                            ; preds = %lean_inc.exit121
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit158:                          ; preds = %lean_inc.exit121
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 1, ptr %i.cy, align 4, !tbaa !11
  store i32 33685528, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cs, ptr %i.db, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone_spec__0___closed__2_value, ptr %i.dc, align 8, !tbaa !15
  %i.dd = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.cs, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone_spec__0___closed__3_value, ptr noundef nonnull %i.cy) #10
  tail call void @lean_inc_heartbeat() #10
  %i.de = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.bd, label %lean_alloc_ctor.exit143

bb.bd:                                            ; preds = %lean_alloc_ctor.exit158
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.be:                                            ; preds = %lean_dec_ref.exit
  br i1 %.not.i120, label %bb.bf, label %lean_inc.exit

bb.bf:                                            ; preds = %bb.be
  %.val.i.i160 = load i32, ptr %i.cs, align 4, !tbaa !11 ; 3 uses
  %i.dg = icmp sgt i32 %.val.i.i160, 0
  br i1 %i.dg, label %bb.bg, label %bb.bh, !prof !16

bb.bg:                                            ; preds = %bb.bf
  %i.dh = add nuw i32 %.val.i.i160, 1
  store i32 %i.dh, ptr %i.cs, align 4, !tbaa !11
  br label %lean_inc.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i161 = icmp eq i32 %.val.i.i160, 0
  br i1 %.not.i.i161, label %lean_inc.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.di = atomicrmw sub ptr %i.cs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be
  tail call void @lean_inc_heartbeat() #10
  %i.dj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.bj, label %lean_alloc_ctor.exit163

bb.bj:                                            ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit163:                          ; preds = %lean_inc.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 1, ptr %i.dj, align 4, !tbaa !11
  store i32 33685528, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.cs, ptr %i.dm, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone_spec__0___closed__0_value, ptr %i.dn, align 8, !tbaa !15
  %i.do = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.cs, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSkipDone_spec__0___closed__1_value, ptr noundef nonnull %i.dj) #10
  tail call void @lean_inc_heartbeat() #10
  %i.dp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.bk, label %lean_alloc_ctor.exit143

bb.bk:                                            ; preds = %lean_alloc_ctor.exit163
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit143:                          ; preds = %lean_alloc_ctor.exit163, %lean_alloc_ctor.exit158, %lean_dec_ref.exit124, %lean_alloc_ctor.exit151, %lean_alloc_ctor.exit142
  %.sink194 = phi ptr [ %i.ck, %lean_dec_ref.exit124 ], [ %i.as, %lean_alloc_ctor.exit142 ], [ %i.by, %lean_alloc_ctor.exit151 ], [ %i.de, %lean_alloc_ctor.exit158 ], [ %i.dp, %lean_alloc_ctor.exit163 ] ; 4 uses
  %.sink = phi ptr [ %i.cb, %lean_dec_ref.exit124 ], [ %i.ar, %lean_alloc_ctor.exit142 ], [ %i.bx, %lean_alloc_ctor.exit151 ], [ %i.dd, %lean_alloc_ctor.exit158 ], [ %i.do, %lean_alloc_ctor.exit163 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink194, i64 4
  store i32 1, ptr %.sink194, align 4, !tbaa !11
  store i32 65552, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink194, i64 8
  store ptr %.sink, ptr %i.ds, align 8, !tbaa !15
  ret ptr %.sink194
}

declare ptr @l_Lean_Syntax_SepArray_ofElems(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___redArg(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  %i.e = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit7

bb.c:                                             ; preds = %bb.a
  %.not.i6 = icmp eq i32 %i.e, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.h = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec_ref.exit7
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit7
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___redArg(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call noundef nonnull ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mkSeq___redArg(ptr noundef readonly %0, i8 noundef zeroext %i.c, ptr noundef readonly %2)
  %i.e = ptrtoint ptr %3 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.j = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %lean_dec.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit12

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i11 = icmp eq i32 %i.j, 0
  br i1 %.not.i11, label %lean_dec_ref.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit12

lean_dec_ref.exit12:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.m = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %lean_dec_ref.exit12
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit10

bb.j:                                             ; preds = %lean_dec_ref.exit12
  %.not.i9 = icmp eq i32 %i.m, 0
  br i1 %.not.i9, label %lean_dec_ref.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit10

lean_dec_ref.exit10:                              ; preds = %bb.i, %bb.j, %bb.k
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isSorry(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %0, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isSorry___closed__1_value) #10
  ret i8 %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isSorry___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %0, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isSorry___closed__1_value) #10
  %i.b = zext i8 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = inttoptr i64 %i.d to ptr
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_filterSorry_spec__0(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %.not39 = icmp eq i64 %1, %2
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.02141 = phi i64 [ %1, %.lr.ph ], [ %i.q, %bb.k ] ; 2 uses
  %.02540 = phi ptr [ %3, %.lr.ph ], [ %.027, %bb.k ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02141
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 10 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, 1
  %.not.i28 = icmp eq i64 %i.e, 0
  br i1 %.not.i28, label %bb.c, label %lean_inc.exit29.thread

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i, 1
  store i32 %i.g, ptr %i.c, align 4, !tbaa !11
  br label %lean_inc.exit29

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit29

lean_inc.exit29:                                  ; preds = %bb.f, %bb.e, %bb.d
  %i.i = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef nonnull %i.c, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isSorry___closed__1_value) #10
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.k

lean_inc.exit29.thread:                           ; preds = %bb.b
  %i.k = tail call zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef %i.c, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isSorry___closed__1_value) #10
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %lean_inc.exit, label %bb.k

bb.g:                                             ; preds = %lean_inc.exit29
end_hunk_0
begin_hunk_1_@l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f_spec__1:bb.a
  %i.aa = and i64 %i.z, 1
  %.not.i39 = icmp eq i64 %i.aa, 0
  br i1 %.not.i39, label %bb.p, label %lean_dec.exit40

bb.p:                                             ; preds = %lean_dec.exit42
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !11  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit40

bb.r:                                             ; preds = %bb.p
  %.not.i44 = icmp eq i32 %i.ab, 0
  br i1 %.not.i44, label %lean_dec.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #10
  br label %lean_dec.exit40

lean_dec.exit40:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit42
  %i.ae = icmp eq i8 %i.t, 0
  br i1 %i.ae, label %lean_dec.exit38, label %bb.t

bb.t:                                             ; preds = %lean_dec.exit40
  br i1 %.not.i50, label %.critedge.i, label %lean_nat_eq.exit, !prof !9

.critedge.i:                                      ; preds = %bb.t
  %i.af = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.t, %.critedge.i
  %.0.i = phi i1 [ %i.af, %.critedge.i ], [ %i.f, %bb.t ]
  %i.ag = zext i1 %.0.i to i8
  br label %lean_dec.exit38

lean_dec.exit38:                                  ; preds = %lean_dec.exit40, %lean_nat_eq.exit
  %.033 = phi i8 [ %i.ag, %lean_nat_eq.exit ], [ %1, %lean_dec.exit40 ]
  %i.ah = icmp eq i8 %.033, 0
  br i1 %i.ah, label %bb.b, label %bb.u

bb.u:                                             ; preds = %lean_dec.exit38
  br i1 %.not.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.ai = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %0, align 4, !tbaa !11
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %.not.i46 = icmp eq i32 %i.ai, 0
  br i1 %.not.i46, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.pre-phi61 = phi i64 [ %.pre60, %.._crit_edge_crit_edge ], [ %i.c, %bb.b ]
  %.not.i36 = icmp eq i64 %.pre-phi61, 0
  br i1 %.not.i36, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %._crit_edge
  %i.al = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.aa, label %bb.ab, !prof !16

bb.aa:                                            ; preds = %bb.z
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %0, align 4, !tbaa !11
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %.not.i48 = icmp eq i32 %i.al, 0
  br i1 %.not.i48, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.u, %bb.y, %bb.x, %bb.w, %bb.ac, %bb.ab, %bb.aa, %._crit_edge
  %.2.ph = phi i8 [ 0, %._crit_edge ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.u ]
  ret i8 %.2.ph
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = getelementptr i8, ptr %4, i64 8
  %.val25 = load i64, ptr %i.d, align 8, !tbaa !13
  %i.e = load i32, ptr %4, align 8, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %4, align 8, !tbaa !11
  br label %lean_dec.exit17

bb.c:                                             ; preds = %bb.a
  %.not.i18 = icmp eq i32 %i.e, 0
  br i1 %.not.i18, label %lean_dec.exit17, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %5, i64 8
  %.val = load i64, ptr %i.h, align 8, !tbaa !13
  %i.i = load i32, ptr %5, align 8, !tbaa !11     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit17
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %5, align 8, !tbaa !11
  br label %lean_dec.exit15

bb.f:                                             ; preds = %lean_dec.exit17
  %.not.i19 = icmp eq i32 %i.i, 0
  br i1 %.not.i19, label %lean_dec.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #10
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.l = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f_spec__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2, ptr noundef %3, i64 noundef %.val25, i64 noundef %.val)
  %i.m = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %lean_dec.exit15
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit24

bb.i:                                             ; preds = %lean_dec.exit15
  %.not.i23 = icmp eq i32 %i.m, 0
  br i1 %.not.i23, label %lean_dec_ref.exit24, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit24

lean_dec_ref.exit24:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.p = ptrtoint ptr %2 to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit24
  %i.r = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i21 = icmp eq i32 %i.r, 0
  br i1 %.not.i21, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit24
  %i.u = shl nuw nsw i8 %i.l, 1
  %i.v = or disjoint i8 %i.u, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = inttoptr i64 %i.w to ptr
  ret ptr %i.x
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17    ; 3 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %lean_dec.exit.thread182, label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val144 = load i64, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.g = shl i64 %.val144, 1                      ; 2 uses
  %i.h = or disjoint i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %lean_dec.exit.thread182, label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %lean_nat_eq.exit
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load ptr, ptr %10, align 8, !tbaa !15     ; 10 uses
  %i.j = and i64 %.val144, 9223372036854775807    ; 2 uses
  %i.k = ptrtoint ptr %11 to i64
  %i.l = and i64 %i.k, 1
  %.not.i123 = icmp eq i64 %i.l, 0
  br i1 %.not.i123, label %bb.b, label %lean_inc.exit124.thread

bb.b:                                             ; preds = %lean_nat_lt.exit
  %.val.i.i = load i32, ptr %11, align 4, !tbaa !11 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %11, align 4, !tbaa !11
  br label %lean_inc.exit124

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit124, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = atomicrmw sub ptr %11, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit124

lean_inc.exit124:                                 ; preds = %bb.e, %bb.d, %bb.c
  %i.p = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f_spec__1(ptr noundef nonnull %11, i8 noundef zeroext %i.d, ptr noundef nonnull %i.i, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.j)
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.f

lean_inc.exit124.thread:                          ; preds = %lean_nat_lt.exit
  %i.r = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f_spec__1(ptr noundef %11, i8 noundef zeroext %i.d, ptr noundef nonnull %i.i, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.j)
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %lean_inc.exit122, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit124.thread, %lean_inc.exit124
  tail call void @lean_inc_heartbeat() #10
  %i.t = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 1, ptr %i.t, align 4, !tbaa !11
  store i32 65552, ptr %i.v, align 4
  br label %lean_dec.exit.thread180.sink.split

.thread:                                          ; preds = %lean_inc.exit124
  %.val.i.i146 = load i32, ptr %11, align 4, !tbaa !11 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i146, 0
  br i1 %i.w, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %.thread
  %i.x = add nuw i32 %.val.i.i146, 1
  store i32 %i.x, ptr %11, align 4, !tbaa !11
  br label %lean_inc.exit122

bb.j:                                             ; preds = %.thread
  %.not.i.i147 = icmp eq i32 %.val.i.i146, 0
  br i1 %.not.i.i147, label %lean_inc.exit122, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = atomicrmw sub ptr %11, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %lean_inc.exit124.thread, %bb.k, %bb.j, %bb.i
  tail call void @lean_inc_heartbeat() #10
  %i.z = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #10 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.l, label %lean_alloc_ctor.exit149

bb.l:                                             ; preds = %lean_inc.exit122
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit149:                          ; preds = %lean_inc.exit122
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.z, align 4, !tbaa !11
  store i32 131096, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %11, ptr %i.ad, align 8, !tbaa !15
  %i.ae = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_mergeAll_x3f_spec__0___redArg(ptr noundef nonnull %i.i, ptr noundef nonnull %0, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull %i.z) ; 12 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not.i150 = icmp eq i64 %i.ag, 0               ; 3 uses
  br i1 %.not.i150, label %bb.n, label %bb.m

bb.m:                                             ; preds = %lean_alloc_ctor.exit149
  %i.ah = lshr i64 %i.af, 1
  %i.ai = trunc i64 %i.ah to i32
  br label %lean_obj_tag.exit

bb.n:                                             ; preds = %lean_alloc_ctor.exit149
  %i.aj = getelementptr i8, ptr %i.ae, i64 4
  %.val.i152 = load i32, ptr %i.aj, align 4
  %i.ak = lshr i32 %.val.i152, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.m, %bb.n
  %.0.i151 = phi i32 [ %i.ai, %bb.m ], [ %i.ak, %bb.n ]
  %i.al = icmp eq i32 %.0.i151, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15 ; 17 uses
  %.val143 = load i32, ptr %i.ae, align 8, !tbaa !11
  %i.ao = icmp eq i32 %.val143, 1                 ; 4 uses
  br i1 %i.al, label %bb.o, label %bb.be

bb.o:                                             ; preds = %lean_obj_tag.exit
  br i1 %i.ao, label %lean_dec.exit131, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i119 = icmp eq i64 %i.aq, 0
  br i1 %.not.i119, label %bb.q, label %lean_inc.exit120

bb.q:                                             ; preds = %bb.p
  %.val.i.i153 = load i32, ptr %i.an, align 4, !tbaa !11 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i153, 0
  br i1 %i.ar, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.as = add nuw i32 %.val.i.i153, 1
  store i32 %i.as, ptr %i.an, align 4, !tbaa !11
  br label %lean_inc.exit120

bb.s:                                             ; preds = %bb.q
  %.not.i.i154 = icmp eq i32 %.val.i.i153, 0
  br i1 %.not.i.i154, label %lean_inc.exit120, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = atomicrmw sub ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit120

lean_inc.exit120:                                 ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  br i1 %.not.i150, label %bb.u, label %lean_dec.exit131

bb.u:                                             ; preds = %lean_inc.exit120
  %i.au = load i32, ptr %i.ae, align 8, !tbaa !11 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ae, align 8, !tbaa !11
  br label %lean_dec.exit131

bb.w:                                             ; preds = %bb.u
  %.not.i132 = icmp eq i32 %i.au, 0
  br i1 %.not.i132, label %lean_dec.exit131, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #10
  br label %lean_dec.exit131

lean_dec.exit131:                                 ; preds = %lean_inc.exit120, %bb.v, %bb.w, %bb.x, %bb.o
  %.0106 = phi ptr [ %i.ae, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.v ], [ inttoptr (i64 1 to ptr), %lean_inc.exit120 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 10 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i156 = icmp eq i64 %i.ba, 0
  br i1 %.not.i156, label %bb.z, label %bb.y

bb.y:                                             ; preds = %lean_dec.exit131
  %i.bb = lshr i64 %i.az, 1
  %i.bc = trunc i64 %i.bb to i32
  br label %lean_obj_tag.exit159

bb.z:                                             ; preds = %lean_dec.exit131
  %i.bd = getelementptr i8, ptr %i.ay, i64 4
  %.val.i158 = load i32, ptr %i.bd, align 4
  %i.be = lshr i32 %.val.i158, 24
  br label %lean_obj_tag.exit159

lean_obj_tag.exit159:                             ; preds = %bb.y, %bb.z
  %.0.i157 = phi i32 [ %i.bc, %bb.y ], [ %i.be, %bb.z ]
  %i.bf = icmp eq i32 %.0.i157, 0
  br i1 %i.bf, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %lean_obj_tag.exit159
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 5 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i117 = icmp eq i64 %i.bj, 0
  br i1 %.not.i117, label %bb.ab, label %lean_inc.exit118

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i160 = load i32, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.bk = icmp sgt i32 %.val.i.i160, 0
  br i1 %i.bk, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.bl = add nuw i32 %.val.i.i160, 1
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !11
  br label %lean_inc.exit118

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i161 = icmp eq i32 %.val.i.i160, 0
  br i1 %.not.i.i161, label %lean_inc.exit118, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit118

lean_inc.exit118:                                 ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.bn = load i32, ptr %i.an, align 8, !tbaa !11 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_inc.exit118
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.an, align 8, !tbaa !11
  br label %lean_dec.exit129

bb.ag:                                            ; preds = %lean_inc.exit118
  %.not.i133 = icmp eq i32 %i.bn, 0
  br i1 %.not.i133, label %lean_dec.exit129, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.an) #10
  br label %lean_dec.exit129

lean_dec.exit129:                                 ; preds = %bb.ah, %bb.ag, %bb.af
  tail call void @lean_inc_heartbeat() #10
  %i.bq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 6 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ai, label %lean_alloc_ctor.exit163

bb.ai:                                            ; preds = %lean_dec.exit129
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit163:                          ; preds = %lean_dec.exit129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 1, ptr %i.bq, align 4, !tbaa !11
  store i32 16842768, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bh, ptr %i.bt, align 8, !tbaa !15
  br i1 %i.ao, label %lean_dec.exit.thread180.sink.split, label %bb.aj

bb.aj:                                            ; preds = %lean_alloc_ctor.exit163
  %i.bu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread180.sink.split

bb.ak:                                            ; preds = %lean_obj_tag.exit159
  %.val.i.i164 = load i32, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.bv = icmp sgt i32 %.val.i.i164, 0
  br i1 %i.bv, label %bb.al, label %bb.am, !prof !16

bb.al:                                            ; preds = %bb.ak
  %i.bw = add nuw i32 %.val.i.i164, 1
  store i32 %i.bw, ptr %i.ay, align 4, !tbaa !11
  br label %lean_inc_ref.exit166

bb.am:                                            ; preds = %bb.ak
  %.not.i.i165 = icmp eq i32 %.val.i.i164, 0
  br i1 %.not.i.i165, label %lean_inc_ref.exit166, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bx = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit166

lean_inc_ref.exit166:                             ; preds = %bb.an, %bb.am, %bb.al
  %i.by = load i32, ptr %i.an, align 8, !tbaa !11 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %lean_inc_ref.exit166
  %i.ca = add nsw i32 %i.by, -1
  store i32 %i.ca, ptr %i.an, align 8, !tbaa !11
  br label %lean_dec.exit127

bb.ap:                                            ; preds = %lean_inc_ref.exit166
  %.not.i135 = icmp eq i32 %i.by, 0
  br i1 %.not.i135, label %lean_dec.exit127, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.an) #10
  br label %lean_dec.exit127
end_hunk_1
begin_hunk_2_@l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__4___boxed:bb.a
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec.exit14
  %i.t = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i24 = icmp eq i32 %i.t, 0
  br i1 %.not.i24, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.r, %bb.q, %bb.p, %lean_dec.exit14
  %i.w = shl nuw nsw i8 %i.i, 1
  %i.x = or disjoint i8 %i.w, 1
  %i.y = zext nneg i8 %i.x to i64
  %i.z = inttoptr i64 %i.y to ptr
  ret ptr %i.z
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not23 = icmp eq i64 %1, %2
  br i1 %.not23, label %lean_inc.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %lean_inc.exit
  %i.b = add i64 %.01624, 1                       ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %lean_inc.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01624 = phi i64 [ %1, %.lr.ph ], [ %i.b, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 5 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %lean_inc.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i, 0
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i32 %.val.i.i, 1
  store i32 %i.h, ptr %i.d, align 4, !tbaa !11
  br label %lean_inc.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.j = tail call zeroext i8 @l_Lean_Elab_Tactic_isSimpOnly(ptr noundef %i.d) #10 ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %lean_inc.exit._crit_edge

lean_inc.exit._crit_edge:                         ; preds = %bb.b, %lean_inc.exit, %bb.a
  %.2.ph = phi i8 [ 0, %bb.a ], [ %i.j, %lean_inc.exit ], [ 0, %bb.b ]
  ret i8 %.2.ph
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !11
  br label %lean_dec.exit10

bb.c:                                             ; preds = %bb.a
  %.not.i11 = icmp eq i32 %i.b, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %i.f = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit10
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit10
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.not23.i = icmp eq i64 %.val16, %.val
  br i1 %.not23.i, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_dec.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.h:                                             ; preds = %lean_inc.exit.i, %.lr.ph.i
  %.01624.i = phi i64 [ %.val16, %.lr.ph.i ], [ %i.s, %lean_inc.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01624.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.i, label %lean_inc.exit.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i = load i32, ptr %i.k, align 4, !tbaa !11 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.n, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.o = add nuw i32 %.val.i.i.i, 1
  store i32 %i.o, ptr %i.k, align 4, !tbaa !11
  br label %lean_inc.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = atomicrmw sub ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %i.q = tail call zeroext i8 @l_Lean_Elab_Tactic_isSimpOnly(ptr noundef %i.k) #10 ; 2 uses
  %i.r = icmp ne i8 %i.q, 0
  %i.s = add i64 %.01624.i, 1                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.s, %.val
  %or.cond = select i1 %i.r, i1 true, i1 %.not.i17
  br i1 %or.cond, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit.loopexit, label %bb.h

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit.loopexit: ; preds = %lean_inc.exit.i
  %i.t = zext i8 %i.q to i64
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = or disjoint i64 %i.u, 1
  br label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit: ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit.loopexit, %lean_dec.exit
  %.2.ph.i = phi i64 [ 1, %lean_dec.exit ], [ %i.v, %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit.loopexit ]
  %i.w = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit15

bb.n:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__2.exit
  %.not.i14 = icmp eq i32 %i.w, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.z = inttoptr i64 %.2.ph.i to ptr
  ret ptr %i.z
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
lean_nat_eq.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.b = shl i64 %.val, 1                         ; 2 uses
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %lean_dec.exit85, label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit:                     ; preds = %lean_nat_eq.exit
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = load ptr, ptr %1, align 8, !tbaa !15       ; 5 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.a, label %lean_nat_lt.exit

bb.a:                                             ; preds = %lean_array_get_borrowed.exit
  %.val.i.i = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i32 %.val.i.i, 1
  store i32 %i.h, ptr %2, align 4, !tbaa !11
  br label %lean_nat_lt.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_nat_lt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %lean_array_get_borrowed.exit, %bb.b, %bb.c, %bb.d
  %i.j = tail call ptr @l_Lean_Syntax_getKind(ptr noundef %2) #10 ; 15 uses
  %i.k = and i64 %.val, 9223372036854775807       ; 7 uses
  %i.l = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_isOnlyAndNonOnly_spec__4(ptr noundef %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.k)
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %lean_nat_lt.exit
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = and i64 %i.n, 1
  %.not.i84 = icmp eq i64 %i.o, 0
  br i1 %.not.i84, label %bb.f, label %lean_dec.exit85

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.j, align 4, !tbaa !11   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit85

bb.h:                                             ; preds = %bb.f
  %.not.i86 = icmp eq i32 %i.p, 0
  br i1 %.not.i86, label %lean_dec.exit85, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #10
  br label %lean_dec.exit85

.critedge:                                        ; preds = %lean_nat_lt.exit
  %i.s = tail call zeroext i8 @lean_name_eq(ptr noundef %i.j, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_simpTraceToSimp___redArg___closed__5_value) #10
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.z

bb.j:                                             ; preds = %.critedge
  %i.u = tail call zeroext i8 @lean_name_eq(ptr noundef %i.j, ptr noundef nonnull @l___private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_grindTraceToGrind___closed__8_value) #10
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = and i64 %i.v, 1
  %.not.i82 = icmp eq i64 %i.w, 0
  br i1 %.not.i82, label %bb.k, label %lean_dec.exit83

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.j, align 4, !tbaa !11   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.j, align 4, !tbaa !11
  br label %lean_dec.exit83

bb.m:                                             ; preds = %bb.k
  %.not.i87 = icmp eq i32 %i.x, 0
  br i1 %.not.i87, label %lean_dec.exit83, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #10
  br label %lean_dec.exit83

lean_dec.exit83:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.aa = icmp eq i8 %i.u, 0
  %.not23.i = icmp eq i64 %i.k, 0
  %or.cond = or i1 %i.aa, %.not23.i
  br i1 %or.cond, label %lean_dec.exit85, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_dec.exit83
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %lean_inc.exit.i
  %i.ac = add nuw nsw i64 %.01624.i, 1            ; 2 uses
  %.not.i106 = icmp eq i64 %i.ac, %i.k
  br i1 %.not.i106, label %lean_dec.exit85, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.01624.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01624.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 5 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 1
  %.not.i.i105 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i105, label %bb.q, label %lean_inc.exit.i

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !11 ; 3 uses
  %i.ah = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.ai = add nuw i32 %.val.i.i.i, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !11
  br label %lean_inc.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.ak = tail call zeroext i8 @l_Lean_Elab_Tactic_isGrindOnly(ptr noundef %i.ae) #10
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.o, label %.lr.ph.i107

bb.u:                                             ; preds = %lean_inc.exit.i109
  %i.am = add nuw nsw i64 %.01928.i, 1            ; 2 uses
  %.not.i111 = icmp eq i64 %i.am, %i.k
  br i1 %.not.i111, label %lean_dec.exit85, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %lean_inc.exit.i, %bb.u
  %.01928.i = phi i64 [ %i.am, %bb.u ], [ 0, %lean_inc.exit.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.01928.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15 ; 5 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i.i108 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i108, label %bb.v, label %lean_inc.exit.i109

bb.v:                                             ; preds = %.lr.ph.i107
  %.val.i.i.i112 = load i32, ptr %i.ao, align 4, !tbaa !11 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i.i112, 0
  br i1 %i.ar, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.as = add nuw i32 %.val.i.i.i112, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !11
  br label %lean_inc.exit.i109

bb.x:                                             ; preds = %bb.v
  %.not.i.i.i113 = icmp eq i32 %.val.i.i.i112, 0
  br i1 %.not.i.i.i113, label %lean_inc.exit.i109, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = atomicrmw sub ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i109

lean_inc.exit.i109:                               ; preds = %bb.y, %bb.x, %bb.w, %.lr.ph.i107
  %i.au = tail call zeroext i8 @l_Lean_Elab_Tactic_isGrindOnly(ptr noundef %i.ao) #10
  %.not148 = icmp eq i8 %i.au, 0
  br i1 %.not148, label %lean_dec.exit85, label %bb.u

bb.z:                                             ; preds = %.critedge
  %i.av = ptrtoint ptr %i.j to i64
  %i.aw = and i64 %i.av, 1
  %.not.i81 = icmp eq i64 %i.aw, 0
  br i1 %.not.i81, label %bb.aa, label %lean_nat_lt.exit99

bb.aa:                                            ; preds = %bb.z
  %i.ax = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.ab, label %bb.ac, !prof !16

bb.ab:                                            ; preds = %bb.aa
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.j, align 4, !tbaa !11
  br label %lean_nat_lt.exit99

bb.ac:                                            ; preds = %bb.aa
  %.not.i89 = icmp eq i32 %i.ax, 0
  br i1 %.not.i89, label %lean_nat_lt.exit99, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #10
  br label %lean_nat_lt.exit99

lean_nat_lt.exit99:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.not23.i115 = icmp eq i64 %i.k, 0
  br i1 %.not23.i115, label %lean_dec.exit85, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %lean_nat_lt.exit99
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.af

bb.ae:                                            ; preds = %lean_inc.exit.i119
  %i.bb = add nuw nsw i64 %.01624.i117, 1         ; 2 uses
  %.not.i121 = icmp eq i64 %i.bb, %i.k
  br i1 %.not.i121, label %lean_dec.exit85, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i116
  %.01624.i117 = phi i64 [ 0, %.lr.ph.i116 ], [ %i.bb, %bb.ae ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.01624.i117
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !15 ; 5 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 1
  %.not.i.i118 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i118, label %bb.ag, label %lean_inc.exit.i119

bb.ag:                                            ; preds = %bb.af
  %.val.i.i.i122 = load i32, ptr %i.bd, align 4, !tbaa !11 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i.i122, 0
  br i1 %i.bg, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %bb.ag
  %i.bh = add nuw i32 %.val.i.i.i122, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !11
  br label %lean_inc.exit.i119

bb.ai:                                            ; preds = %bb.ag
end_hunk_2
