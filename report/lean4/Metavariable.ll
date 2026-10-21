Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Metavariable?download=true
inline.NumInlined: 1032
inline.NumDeleted: 54
begin_hunk_0_@l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting:bb.a
bb.ax:                                            ; preds = %bb.av
  %.not.i.i270 = icmp eq i32 %.val.i.i269, 0
  br i1 %.not.i.i270, label %lean_inc.exit228, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bq = atomicrmw add ptr %i.bk, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit228

lean_inc.exit228:                                 ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.au
  br i1 %.not.i255, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %lean_inc.exit228
  %i.br = load i32, ptr %i.ai, align 8, !tbaa !12 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.ai, align 8, !tbaa !12
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %.not.i206 = icmp eq i32 %i.br, 0
  br i1 %.not.i206, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #4
  br label %bb.bd

bb.bd:                                            ; preds = %lean_inc.exit228, %bb.ba, %bb.bb, %bb.bc
  tail call void @lean_inc_heartbeat() #4
  %i.bu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.be, label %lean_alloc_ctor.exit

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bd
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !12
  store i32 16842768, ptr %i.bw, align 4
  br label %lean_dec.exit202.sink.split

bb.bf:                                            ; preds = %lean_obj_tag.exit
  %.val245 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.bx = icmp eq i32 %.val245, 1
  br i1 %i.bx, label %lean_dec.exit202, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.by = ptrtoint ptr %i.j to i64
  %i.bz = and i64 %i.by, 1
  %.not.i225 = icmp eq i64 %i.bz, 0
  br i1 %.not.i225, label %bb.bh, label %lean_inc.exit226

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i272 = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i272, 0
  br i1 %i.ca, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.cb = add nuw i32 %.val.i.i272, 1
  store i32 %i.cb, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit226

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i273 = icmp eq i32 %.val.i.i272, 0
  br i1 %.not.i.i273, label %lean_inc.exit226, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cc = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit226

lean_inc.exit226:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  br i1 %.not.i249, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %lean_inc.exit226
  %i.cd = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.a, align 8, !tbaa !12
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %.not.i208 = icmp eq i32 %i.cd, 0
  br i1 %.not.i208, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %bb.bp

bb.bp:                                            ; preds = %lean_inc.exit226, %bb.bm, %bb.bn, %bb.bo
  tail call void @lean_inc_heartbeat() #4
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.bq, label %lean_alloc_ctor.exit275

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit275:                          ; preds = %bb.bp
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !12
  store i32 16842768, ptr %i.ci, align 4
  br label %lean_dec.exit202.sink.split

lean_nat_eq.exit237:                              ; preds = %bb.x, %bb.w, %bb.s, %bb.t, %bb.u, %bb.q, %bb.y
  %.1165.ph = phi ptr [ %i.j, %bb.x ], [ %i.j, %bb.w ], [ %.1187, %bb.s ], [ %.1187, %bb.t ], [ %.1187, %bb.u ], [ %i.j, %bb.y ], [ %.1187, %bb.q ] ; 5 uses
  %i.cj = getelementptr i8, ptr %.1165.ph, i64 8
  %.1165.val247 = load i64, ptr %i.cj, align 8, !tbaa !18 ; 2 uses
  %.mask299 = and i64 %.1165.val247, 9223372036854775807
  %.not300 = icmp eq i64 %.mask299, 0
  br i1 %.not300, label %bb.cu, label %bb.br

bb.br:                                            ; preds = %lean_nat_eq.exit237
  %i.ck = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00__private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting_spec__0(i64 noundef %.1165.val247, i64 noundef 0, ptr noundef nonnull %.1165.ph, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 12 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not.i276 = icmp eq i64 %i.cm, 0               ; 3 uses
  br i1 %.not.i276, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cn = lshr i64 %i.cl, 1
  %i.co = trunc i64 %i.cn to i32
  br label %lean_obj_tag.exit279

bb.bt:                                            ; preds = %bb.br
  %i.cp = getelementptr i8, ptr %i.ck, i64 4
  %.val.i278 = load i32, ptr %i.cp, align 4
  %i.cq = lshr i32 %.val.i278, 24
  br label %lean_obj_tag.exit279

lean_obj_tag.exit279:                             ; preds = %bb.bs, %bb.bt
  %.0.i277 = phi i32 [ %i.co, %bb.bs ], [ %i.cq, %bb.bt ]
  %i.cr = icmp eq i32 %.0.i277, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !10 ; 11 uses
  %.val244 = load i32, ptr %i.ck, align 8, !tbaa !12
  %i.cu = icmp eq i32 %.val244, 1                 ; 3 uses
  br i1 %i.cr, label %bb.bu, label %bb.ci

bb.bu:                                            ; preds = %lean_obj_tag.exit279
  br i1 %i.cu, label %lean_dec.exit194, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = and i64 %i.cv, 1
  %.not.i223 = icmp eq i64 %i.cw, 0
  br i1 %.not.i223, label %bb.bw, label %lean_inc.exit224

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i280 = load i32, ptr %i.ct, align 4, !tbaa !12 ; 3 uses
  %i.cx = icmp sgt i32 %.val.i.i280, 0
  br i1 %i.cx, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.cy = add nuw i32 %.val.i.i280, 1
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !12
  br label %lean_inc.exit224

bb.by:                                            ; preds = %bb.bw
  %.not.i.i281 = icmp eq i32 %.val.i.i280, 0
  br i1 %.not.i.i281, label %lean_inc.exit224, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.cz = atomicrmw add ptr %i.ct, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit224

lean_inc.exit224:                                 ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv
  br i1 %.not.i276, label %bb.ca, label %lean_dec.exit194

bb.ca:                                            ; preds = %lean_inc.exit224
  %i.da = load i32, ptr %i.ck, align 8, !tbaa !12 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.cb, label %bb.cc, !prof !13

bb.cb:                                            ; preds = %bb.ca
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.ck, align 8, !tbaa !12
  br label %lean_dec.exit194

bb.cc:                                            ; preds = %bb.ca
  %.not.i210 = icmp eq i32 %i.da, 0
  br i1 %.not.i210, label %lean_dec.exit194, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ck) #4
  br label %lean_dec.exit194

lean_dec.exit194:                                 ; preds = %lean_inc.exit224, %bb.cb, %bb.cc, %bb.cd, %bb.bu
  %.0175 = phi ptr [ %i.ck, %bb.bu ], [ inttoptr (i64 1 to ptr), %bb.cd ], [ inttoptr (i64 1 to ptr), %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.cb ], [ inttoptr (i64 1 to ptr), %lean_inc.exit224 ]
  %i.dd = getelementptr i8, ptr %i.ct, i64 8
  %.val246 = load i64, ptr %i.dd, align 8, !tbaa !18
  %.mask301 = and i64 %.val246, 9223372036854775807
  %i.de = icmp eq i64 %.mask301, 1
  %spec.select = select i1 %i.de, ptr @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting___closed__1_value, ptr @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting___closed__2_value ; 3 uses
  %i.df = tail call ptr @lean_string_append(ptr noundef nonnull @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting___closed__0_value, ptr noundef nonnull %spec.select) #4
  %i.dg = load i32, ptr %spec.select, align 8, !tbaa !12 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %lean_dec_ref.exit219, label %5, !prof !13

5:                                                ; preds = %lean_dec.exit194
  %.not.i218 = icmp eq i32 %i.dg, 0
  br i1 %.not.i218, label %lean_dec_ref.exit219, label %6

6:                                                ; preds = %5
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %spec.select) #4
  br label %lean_dec_ref.exit219

lean_dec_ref.exit219:                             ; preds = %lean_dec.exit194, %5, %6
  %7 = tail call ptr @lean_string_append(ptr noundef %i.df, ptr noundef nonnull @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting___closed__3_value) #4
  %8 = tail call ptr @lean_array_to_list(ptr noundef nonnull %i.ct) #4
  %9 = tail call ptr @l_String_intercalate(ptr noundef nonnull @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_namesToString___closed__0_value, ptr noundef %8) #4 ; 4 uses
  %10 = tail call ptr @lean_string_append(ptr noundef %7, ptr noundef %9) #4 ; 2 uses
  %11 = load i32, ptr %9, align 4, !tbaa !12      ; 3 uses
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %bb.ce, label %bb.cf, !prof !13

bb.ce:                                            ; preds = %lean_dec_ref.exit219
  %i.di = add nsw i32 %11, -1
  store i32 %i.di, ptr %9, align 4, !tbaa !12
  br label %lean_dec_ref.exit217

bb.cf:                                            ; preds = %lean_dec_ref.exit219
  %.not.i216 = icmp eq i32 %11, 0
  br i1 %.not.i216, label %lean_dec_ref.exit217, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec_ref.exit217

lean_dec_ref.exit217:                             ; preds = %bb.ce, %bb.cf, %bb.cg
  br i1 %i.cu, label %lean_dec.exit202.sink.split, label %bb.ch

bb.ch:                                            ; preds = %lean_dec_ref.exit217
  %i.dj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1)
  br label %lean_dec.exit202.sink.split

bb.ci:                                            ; preds = %lean_obj_tag.exit279
  br i1 %i.cu, label %lean_dec.exit202, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dk = ptrtoint ptr %i.ct to i64
  %i.dl = and i64 %i.dk, 1
  %.not.i222 = icmp eq i64 %i.dl, 0
  br i1 %.not.i222, label %bb.ck, label %lean_inc.exit

bb.ck:                                            ; preds = %bb.cj
  %.val.i.i285 = load i32, ptr %i.ct, align 4, !tbaa !12 ; 3 uses
  %i.dm = icmp sgt i32 %.val.i.i285, 0
  br i1 %i.dm, label %bb.cl, label %bb.cm, !prof !13

bb.cl:                                            ; preds = %bb.ck
  %i.dn = add nuw i32 %.val.i.i285, 1
  store i32 %i.dn, ptr %i.ct, align 4, !tbaa !12
  br label %lean_inc.exit

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i286 = icmp eq i32 %.val.i.i285, 0
  br i1 %.not.i.i286, label %lean_inc.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.do = atomicrmw add ptr %i.ct, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cj
  br i1 %.not.i276, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %lean_inc.exit
  %i.dp = load i32, ptr %i.ck, align 8, !tbaa !12 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.cp, label %bb.cq, !prof !13

bb.cp:                                            ; preds = %bb.co
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.ck, align 8, !tbaa !12
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %.not.i212 = icmp eq i32 %i.dp, 0
  br i1 %.not.i212, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ck) #4
  br label %bb.cs

bb.cs:                                            ; preds = %lean_inc.exit, %bb.cp, %bb.cq, %bb.cr
  tail call void @lean_inc_heartbeat() #4
  %i.ds = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ct, label %lean_alloc_ctor.exit288

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit288:                          ; preds = %bb.cs
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 1, ptr %i.ds, align 4, !tbaa !12
  store i32 16842768, ptr %i.du, align 4
  br label %lean_dec.exit202.sink.split

bb.cu:                                            ; preds = %lean_nat_eq.exit237
  %i.dv = load i32, ptr %.1165.ph, align 8, !tbaa !12 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %.1165.ph, align 8, !tbaa !12
  br label %lean_dec_ref.exit215

bb.cw:                                            ; preds = %bb.cu
  %.not.i214 = icmp eq i32 %i.dv, 0
  br i1 %.not.i214, label %lean_dec_ref.exit215, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1165.ph) #4
  br label %lean_dec_ref.exit215

lean_dec_ref.exit215:                             ; preds = %bb.cv, %bb.cw, %bb.cx
  tail call void @lean_inc_heartbeat() #4
  %i.dy = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.cy, label %lean_alloc_ctor.exit289

bb.cy:                                            ; preds = %lean_dec_ref.exit215
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit289:                          ; preds = %lean_dec_ref.exit215
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 1, ptr %i.dy, align 4, !tbaa !12
  store i32 65552, ptr %i.ea, align 4
  br label %lean_dec.exit202.sink.split

lean_dec.exit202.sink.split:                      ; preds = %lean_dec_ref.exit217, %lean_alloc_ctor.exit275, %bb.ch, %lean_alloc_ctor.exit288, %lean_alloc_ctor.exit289, %lean_alloc_ctor.exit
  %.sink328 = phi ptr [ %i.bu, %lean_alloc_ctor.exit ], [ %i.dy, %lean_alloc_ctor.exit289 ], [ %i.ds, %lean_alloc_ctor.exit288 ], [ %i.dj, %bb.ch ], [ %i.cg, %lean_alloc_ctor.exit275 ], [ %.0175, %lean_dec_ref.exit217 ] ; 2 uses
  %.sink = phi ptr [ %i.bk, %lean_alloc_ctor.exit ], [ @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_extraLCtxVars___redArg___closed__4_value, %lean_alloc_ctor.exit289 ], [ %i.ct, %lean_alloc_ctor.exit288 ], [ %10, %bb.ch ], [ %i.j, %lean_alloc_ctor.exit275 ], [ %10, %lean_dec_ref.exit217 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sink328, i64 8
  store ptr %.sink, ptr %i.eb, align 8, !tbaa !10
  br label %lean_dec.exit202

lean_dec.exit202:                                 ; preds = %lean_dec.exit202.sink.split, %bb.ci, %bb.bf, %lean_dec.exit200
  %.7 = phi ptr [ %i.ai, %lean_dec.exit200 ], [ %i.a, %bb.bf ], [ %i.ck, %bb.ci ], [ %.sink328, %lean_dec.exit202.sink.split ]
  ret ptr %.7
}

declare ptr @l_Lean_Meta_getMVarsNoDelayed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_array_to_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_collectAwaiting(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_MVarId_isAssignable___at___00__private_Lean_PrettyPrinter_Delaborator_Metavariable_0__Lean_PrettyPrinter_Delaborator_describeMVar_spec__0___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %1) #4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 8 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw add ptr %i.c, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit22

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i23 = icmp eq i32 %i.g, 0
  br i1 %.not.i23, label %lean_dec.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.j = tail call ptr @l_Lean_MetavarContext_getDecl(ptr noundef nonnull %i.c, ptr noundef %0) #4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 10 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 1
  %.not.i33 = icmp eq i64 %i.n, 0                 ; 3 uses
  br i1 %.not.i33, label %bb.h, label %lean_inc.exit34

bb.h:                                             ; preds = %lean_dec.exit22
  %.val.i.i36 = load i32, ptr %i.l, align 4, !tbaa !12 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i36, 0
  br i1 %i.o, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i32 %.val.i.i36, 1
  store i32 %i.p, ptr %i.l, align 4, !tbaa !12
  br label %lean_inc.exit34

bb.j:                                             ; preds = %bb.h
  %.not.i.i37 = icmp eq i32 %.val.i.i36, 0
  br i1 %.not.i.i37, label %lean_inc.exit34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = atomicrmw add ptr %i.l, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit34

lean_inc.exit34:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit22
  %i.r = load i32, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %lean_inc.exit34
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.j, align 8, !tbaa !12
  br label %lean_dec_ref.exit31

bb.m:                                             ; preds = %lean_inc.exit34
  %.not.i30 = icmp eq i32 %i.r, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #4
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 10 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i32 = icmp eq i64 %i.x, 0                 ; 3 uses
  br i1 %.not.i32, label %bb.o, label %lean_inc.exit

bb.o:                                             ; preds = %lean_dec_ref.exit31
  %.val.i.i39 = load i32, ptr %i.v, align 4, !tbaa !12 ; 3 uses
end_hunk_0
