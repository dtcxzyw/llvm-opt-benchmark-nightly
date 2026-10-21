Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ImportCompletion?download=true
inline.NumInlined: 824
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1:bb.a

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.r, %bb.s, %bb.t
  %i.am = tail call ptr @l_Lean_Syntax_getTailPos_x3f(ptr noundef %i.x, i8 noundef zeroext %i.d) #4 ; 6 uses
  br i1 %.not.i77, label %bb.u, label %lean_dec.exit91

bb.u:                                             ; preds = %lean_dec_ref_known.exit
  %i.an = load i32, ptr %i.x, align 4, !tbaa !12  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.x, align 4, !tbaa !12
  br label %lean_dec.exit91

bb.w:                                             ; preds = %bb.u
  %.not.i95 = icmp eq i32 %i.an, 0
  br i1 %.not.i95, label %lean_dec.exit91, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #4
  br label %lean_dec.exit91

lean_dec.exit91:                                  ; preds = %bb.x, %bb.w, %bb.v, %lean_dec_ref_known.exit
  %i.aq = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %.not.i116 = icmp eq i64 %i.ar, 0
  br i1 %.not.i116, label %bb.z, label %bb.y

bb.y:                                             ; preds = %lean_dec.exit91
  %i.as = lshr i64 %i.aq, 1
  %i.at = trunc i64 %i.as to i32
  br label %lean_obj_tag.exit119

bb.z:                                             ; preds = %lean_dec.exit91
  %i.au = getelementptr i8, ptr %i.am, i64 4
  %.val.i118 = load i32, ptr %i.au, align 4
  %i.av = lshr i32 %.val.i118, 24
  br label %lean_obj_tag.exit119

lean_obj_tag.exit119:                             ; preds = %bb.y, %bb.z
  %.0.i117 = phi i32 [ %i.at, %bb.y ], [ %i.av, %bb.z ]
  %i.aw = icmp eq i32 %.0.i117, 0
  br i1 %i.aw, label %lean_dec.exit89, label %bb.aa

bb.aa:                                            ; preds = %lean_obj_tag.exit119
  %i.ax = ptrtoint ptr %i.g to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i88 = icmp eq i64 %i.ay, 0
  br i1 %.not.i88, label %bb.ab, label %lean_dec.exit

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !12
  br label %lean_dec.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i97 = icmp eq i32 %i.az, 0
  br i1 %.not.i97, label %lean_dec.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #4
  br label %lean_dec.exit

lean_dec_ref_known.exit140:                       ; preds = %bb.bq, %bb.bp, %bb.bo, %lean_dec.exit.i136, %lean_obj_once.exit127
  %.066 = phi ptr [ %i.cr, %lean_obj_once.exit127 ], [ %i.ct, %lean_dec.exit.i136 ], [ %i.ct, %bb.bo ], [ %i.ct, %bb.bp ], [ %i.ct, %bb.bq ] ; 6 uses
  %i.bc = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__0_once seq_cst, align 4, !tbaa !17
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.af, label %bb.ag, !prof !13

bb.af:                                            ; preds = %lean_dec_ref_known.exit140
  %i.be = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.ag:                                            ; preds = %lean_dec_ref_known.exit140
  %i.bf = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__0) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.af, %bb.ag
  %.0.i120 = phi ptr [ %i.be, %bb.af ], [ %i.bf, %bb.ag ] ; 3 uses
  %i.bg = ptrtoint ptr %.066 to i64               ; 2 uses
  %i.bh = and i64 %i.bg, 1
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.al, label %bb.ah, !prof !18

bb.ah:                                            ; preds = %lean_obj_once.exit
  %i.bi = ptrtoint ptr %.0.i120 to i64            ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %.not168 = icmp eq i64 %i.bj, 0
  br i1 %.not168, label %lean_nat_add.exit, label %bb.ai, !prof !18

bb.ai:                                            ; preds = %bb.ah
  %i.bk = lshr i64 %i.bg, 1
  %i.bl = lshr i64 %i.bi, 1
  %i.bm = add nuw i64 %i.bl, %i.bk                ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.bo = shl nuw i64 %i.bm, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %lean_dec.exit87

bb.ak:                                            ; preds = %bb.ai
  %i.br = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) %i.bm) #4
  br label %lean_dec.exit87

lean_nat_add.exit:                                ; preds = %bb.ah
  %i.bs = tail call ptr @lean_nat_big_add(ptr noundef %.066, ptr noundef %.0.i120) #4
  br label %lean_dec.exit87

bb.al:                                            ; preds = %lean_obj_once.exit
  %i.bt = tail call ptr @lean_nat_big_add(ptr noundef %.066, ptr noundef %.0.i120) #4 ; 3 uses
  %i.bu = load i32, ptr %.066, align 4, !tbaa !12 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %.066, align 4, !tbaa !12
  br label %lean_dec.exit87

bb.an:                                            ; preds = %bb.al
  %.not.i99 = icmp eq i32 %i.bu, 0
  br i1 %.not.i99, label %lean_dec.exit87, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.066) #4
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %bb.aj, %bb.ak, %bb.ao, %bb.an, %bb.am, %lean_nat_add.exit
  %.0.i148 = phi ptr [ %i.bt, %bb.ao ], [ %i.bs, %lean_nat_add.exit ], [ %i.bt, %bb.am ], [ %i.bt, %bb.an ], [ %i.br, %bb.ak ], [ %i.bq, %bb.aj ] ; 6 uses
  %i.bx = ptrtoint ptr %.0.i148 to i64            ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  %or.cond = select i1 %.not.i109, i1 %i.by, i1 false, !prof !19
  br i1 %or.cond, label %bb.ap, label %.critedge.i110, !prof !19

bb.ap:                                            ; preds = %lean_dec.exit87
  %i.bz = icmp eq ptr %0, %.0.i148
  br label %lean_nat_eq.exit

.critedge.i110:                                   ; preds = %lean_dec.exit87
  %i.ca = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %0, ptr noundef %.0.i148) #4
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.ap, %.critedge.i110
  %.0.i111 = phi i1 [ %i.bz, %bb.ap ], [ %i.ca, %.critedge.i110 ]
  %i.cb = and i64 %i.bx, 1
  %.not.i84 = icmp eq i64 %i.cb, 0
  br i1 %.not.i84, label %bb.aq, label %lean_dec.exit83

bb.aq:                                            ; preds = %lean_nat_eq.exit
  %i.cc = load i32, ptr %.0.i148, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %.0.i148, align 4, !tbaa !12
  br label %lean_dec.exit83

bb.as:                                            ; preds = %bb.aq
  %.not.i101 = icmp eq i32 %i.cc, 0
  br i1 %.not.i101, label %lean_dec.exit83, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i148) #4
  br label %lean_dec.exit83

bb.au:                                            ; preds = %lean_dec.exit81
  br i1 %.not.i82, label %bb.av, label %lean_dec.exit83.thread190

bb.av:                                            ; preds = %bb.au
  %i.cf = load i32, ptr %.173, align 4, !tbaa !12 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %.173, align 4, !tbaa !12
  br label %lean_dec.exit83.thread190

bb.ax:                                            ; preds = %bb.av
  %.not.i103 = icmp eq i32 %i.cf, 0
  br i1 %.not.i103, label %lean_dec.exit83.thread190, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.173) #4
  br label %lean_dec.exit83.thread190

bb.az:                                            ; preds = %.thread
  %i.ci = lshr i64 %i.dp, 1
  %i.cj = trunc i64 %i.ci to i32
  br label %lean_obj_tag.exit125

bb.ba:                                            ; preds = %bb.bw
  %i.ck = getelementptr i8, ptr %.173, i64 4
  %.val.i124 = load i32, ptr %i.ck, align 4
  %i.cl = lshr i32 %.val.i124, 24
  br label %lean_obj_tag.exit125

lean_obj_tag.exit125:                             ; preds = %bb.az, %bb.ba
  %.0.i123 = phi i32 [ %i.cj, %bb.az ], [ %i.cl, %bb.ba ]
  %i.cm = icmp eq i32 %.0.i123, 0
  br i1 %i.cm, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %lean_obj_tag.exit125
  %i.cn = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__4_once seq_cst, align 4, !tbaa !17
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %bb.bc, label %bb.bd, !prof !13

bb.bc:                                            ; preds = %bb.bb
  %i.cp = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit127

bb.bd:                                            ; preds = %bb.bb
  %i.cq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__4, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__4_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__4) #4
  br label %lean_obj_once.exit127

lean_obj_once.exit127:                            ; preds = %bb.bc, %bb.bd
  %.0.i126 = phi ptr [ %i.cp, %bb.bc ], [ %i.cq, %bb.bd ]
  %i.cr = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %.0.i126) #4
  br label %lean_dec_ref_known.exit140

bb.be:                                            ; preds = %lean_obj_tag.exit125
  %i.cs = getelementptr inbounds nuw i8, ptr %.173, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !10 ; 8 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = and i64 %i.cu, 1
  %.not.i76 = icmp eq i64 %i.cv, 0
  br i1 %.not.i76, label %bb.bf, label %lean_inc.exit

bb.bf:                                            ; preds = %bb.be
  %.val.i.i128 = load i32, ptr %i.ct, align 4, !tbaa !12 ; 3 uses
  %i.cw = icmp sgt i32 %.val.i.i128, 0
  br i1 %i.cw, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.cx = add nuw i32 %.val.i.i128, 1
  store i32 %i.cx, ptr %i.ct, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i129 = icmp eq i32 %.val.i.i128, 0
  br i1 %.not.i.i129, label %lean_inc.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cy = atomicrmw sub ptr %i.ct, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be
  %.val.i131 = load i32, ptr %.173, align 8, !tbaa !12 ; 4 uses
  %i.cz = icmp eq i32 %.val.i131, 1
  br i1 %i.cz, label %.preheader.i133, label %bb.bn

.preheader.i133:                                  ; preds = %lean_inc.exit
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !10 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i.i135 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i135, label %bb.bj, label %lean_dec.exit.i136

bb.bj:                                            ; preds = %.preheader.i133
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !12
  br label %lean_dec.exit.i136

bb.bl:                                            ; preds = %bb.bj
  %.not.i7.i139 = icmp eq i32 %i.dd, 0
  br i1 %.not.i7.i139, label %lean_dec.exit.i136, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #4
  br label %lean_dec.exit.i136

lean_dec.exit.i136:                               ; preds = %bb.bm, %bb.bl, %bb.bk, %.preheader.i133
  tail call void @lean_free_object(ptr noundef nonnull %.173) #4
  br label %lean_dec_ref_known.exit140

bb.bn:                                            ; preds = %lean_inc.exit
  %i.dg = icmp sgt i32 %.val.i131, 1
  br i1 %i.dg, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.dh = add nsw i32 %.val.i131, -1
  store i32 %i.dh, ptr %.173, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit140

bb.bp:                                            ; preds = %bb.bn
  %.not.i8.i132 = icmp eq i32 %.val.i131, 0
  br i1 %.not.i8.i132, label %lean_dec_ref_known.exit140, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.173) #4
  br label %lean_dec_ref_known.exit140

lean_dec.exit:                                    ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae, %lean_dec.exit89, %bb.by, %bb.bz, %bb.ca
  %.173 = phi ptr [ %i.ds, %lean_dec.exit89 ], [ %i.ds, %bb.ca ], [ %i.ds, %bb.bz ], [ %i.ds, %bb.by ], [ %i.am, %bb.ae ], [ %i.am, %bb.ad ], [ %i.am, %bb.ac ], [ %i.am, %bb.aa ] ; 11 uses
  %i.di = tail call zeroext i8 @l_Lean_Syntax_isMissing(ptr noundef %i.o) #4
  %i.dj = ptrtoint ptr %i.o to i64
  %i.dk = and i64 %i.dj, 1
  %.not.i80 = icmp eq i64 %i.dk, 0
  br i1 %.not.i80, label %bb.br, label %lean_dec.exit81

bb.br:                                            ; preds = %lean_dec.exit
  %i.dl = load i32, ptr %i.o, align 4, !tbaa !12  ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %bb.br
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %i.o, align 4, !tbaa !12
  br label %lean_dec.exit81

bb.bt:                                            ; preds = %bb.br
  %.not.i105 = icmp eq i32 %i.dl, 0
  br i1 %.not.i105, label %lean_dec.exit81, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec.exit81

lean_dec.exit81:                                  ; preds = %bb.bu, %bb.bt, %bb.bs, %lean_dec.exit
  %i.do = icmp eq i8 %i.di, 0
  %i.dp = ptrtoint ptr %.173 to i64               ; 3 uses
  %i.dq = and i64 %i.dp, 1
  %.not.i82 = icmp eq i64 %i.dq, 0                ; 2 uses
  br i1 %i.do, label %bb.au, label %bb.bv

bb.bv:                                            ; preds = %lean_dec.exit81
  br i1 %.not.i82, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  %i.dr = getelementptr i8, ptr %.173, i64 4
  %.val.i143 = load i32, ptr %i.dr, align 4
  %.not = icmp ult i32 %.val.i143, 16777216
  br i1 %.not, label %lean_dec.exit83.thread190, label %bb.ba

.thread:                                          ; preds = %bb.bv
  %4 = and i64 %i.dp, 8589934590
  %.not.a = icmp eq i64 %4, 0
  br i1 %.not.a, label %lean_dec.exit83.thread190, label %bb.az

lean_dec.exit89:                                  ; preds = %lean_obj_tag.exit119, %lean_obj_tag.exit
  %i.ds = tail call ptr @l_Lean_Syntax_getTailPos_x3f(ptr noundef %i.g, i8 noundef zeroext %i.d) #4 ; 4 uses
  %i.dt = ptrtoint ptr %i.g to i64
  %i.du = and i64 %i.dt, 1
  %.not.i79 = icmp eq i64 %i.du, 0
  br i1 %.not.i79, label %bb.bx, label %lean_dec.exit

bb.bx:                                            ; preds = %lean_dec.exit89
  %i.dv = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %i.g, align 4, !tbaa !12
  br label %lean_dec.exit

bb.bz:                                            ; preds = %bb.bx
  %.not.i107 = icmp eq i32 %i.dv, 0
  br i1 %.not.i107, label %lean_dec.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #4
  br label %lean_dec.exit

lean_dec.exit83:                                  ; preds = %bb.at, %bb.as, %bb.ar, %lean_nat_eq.exit
  br i1 %.0.i111, label %.thread160, label %lean_dec.exit83.thread190

lean_dec.exit83.thread190:                        ; preds = %.thread, %bb.bw, %lean_dec.exit83, %bb.ay, %bb.ax, %bb.aw, %bb.au
  %i.dy = add i64 %.062194, 1                     ; 2 uses
  %i.dz = icmp eq i64 %i.dy, %3                   ; 2 uses
  %i.ea = zext i1 %i.dz to i8
  br i1 %i.dz, label %.thread160, label %.lr.ph

.thread160:                                       ; preds = %lean_dec.exit83.thread190, %lean_dec.exit83, %bb.a
  %.2164 = phi i8 [ 0, %bb.a ], [ 0, %lean_dec.exit83.thread190 ], [ 1, %lean_dec.exit83 ]
  ret i8 %.2164
}

declare ptr @l_Lean_Syntax_getArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Syntax_getOptional_x3f(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 1, 3) %1) unnamed_addr #2 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !12    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %lean_dec.exit
  tail call void @lean_free_object(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %.preheader, %lean_dec.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lean_dec.exit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %lean_dec.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 4, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !21

bb.h:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.k = add nsw i32 %.val, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit9

bb.j:                                             ; preds = %bb.h
  %.not.i8 = icmp eq i32 %.val, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.b
  ret void
}

declare ptr @l_Lean_Syntax_getTailPos_x3f(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_Char_utf8Size(i32 noundef 32) #4
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__4() #0 {
bb.a:
  %i.a = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__1_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__2_value, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___closed__3_value) #4
  ret ptr %i.a
}

declare zeroext i8 @l_Lean_Syntax_isMissing(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00ImportCompletion_isImportNameCompletionRequest_spec__1(ptr noundef %0, ptr noundef %1, i64 noundef %.val22, i64 noundef %.val)
  %i.j = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit12
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.i:                                             ; preds = %lean_dec.exit12
  %.not.i20 = icmp eq i32 %i.j, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %0 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit21
  %i.o = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i18 = icmp eq i32 %i.o, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit21
  %i.r = shl nuw nsw i8 %i.i, 1
  %i.s = or disjoint i8 %i.r, 1
  %i.t = zext nneg i8 %i.s to i64
  %i.u = inttoptr i64 %i.t to ptr
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l_ImportCompletion_isImportNameCompletionRequest(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i77 = icmp eq i64 %i.b, 0                 ; 6 uses
end_hunk_0
