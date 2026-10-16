Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Helpers?download=true
inline.NumInlined: 5461
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2:bb.a
  %i.az = lshr i32 %.val.i124, 24
  br label %lean_obj_tag.exit125

lean_obj_tag.exit125:                             ; preds = %bb.ai, %bb.aj
  %.0.i123 = phi i32 [ %i.ax, %bb.ai ], [ %i.az, %bb.aj ]
  %i.ba = icmp eq i32 %.0.i123, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 12 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = and i64 %i.bd, 1
  %.not.i114 = icmp eq i64 %i.be, 0               ; 3 uses
  br i1 %i.ba, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %lean_obj_tag.exit125
  br i1 %.not.i114, label %bb.al, label %lean_inc.exit115

bb.al:                                            ; preds = %bb.ak
  %.val.i.i126 = load i32, ptr %i.bc, align 4, !tbaa !10 ; 3 uses
  %i.bf = icmp sgt i32 %.val.i.i126, 0
  br i1 %i.bf, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.bg = add nuw i32 %.val.i.i126, 1
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !10
  br label %lean_inc.exit115

bb.an:                                            ; preds = %bb.al
  %.not.i.i127 = icmp eq i32 %.val.i.i126, 0
  br i1 %.not.i.i127, label %lean_inc.exit115, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bh = atomicrmw sub ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit115

lean_inc.exit115:                                 ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.val.i129 = load i32, ptr %i.at, align 8, !tbaa !10 ; 4 uses
  %i.bi = icmp eq i32 %.val.i129, 1
  br i1 %i.bi, label %.preheader.i, label %bb.at

.preheader.i:                                     ; preds = %lean_inc.exit115
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i7.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i7.i, label %bb.ap, label %lean_dec.exit.i

bb.ap:                                            ; preds = %.preheader.i
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.as, %bb.ar, %bb.aq, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.at) #5
  br label %lean_dec_ref_known.exit

bb.at:                                            ; preds = %lean_inc.exit115
  %i.bp = icmp sgt i32 %.val.i129, 1
  br i1 %i.bp, label %bb.au, label %bb.av, !prof !11

bb.au:                                            ; preds = %bb.at
  %i.bq = add nsw i32 %.val.i129, -1
  store i32 %i.bq, ptr %i.at, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %bb.at
  %.not.i.i130 = icmp eq i32 %.val.i129, 0
  br i1 %.not.i.i130, label %lean_dec_ref_known.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.au, %bb.av, %bb.aw
  br i1 %i.ai, label %bb.bt, label %bb.ax

bb.ax:                                            ; preds = %lean_dec_ref_known.exit
  tail call void @lean_inc_heartbeat() #5
  %i.br = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ay, label %lean_alloc_ctor.exit132

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit132:                          ; preds = %bb.ax
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !10
  store i32 16842768, ptr %i.bt, align 4
  br label %bb.bt

bb.az:                                            ; preds = %lean_obj_tag.exit125
  br i1 %.not.i114, label %bb.ba, label %lean_inc.exit113

bb.ba:                                            ; preds = %bb.az
  %.val.i.i133 = load i32, ptr %i.bc, align 4, !tbaa !10 ; 3 uses
  %i.bu = icmp sgt i32 %.val.i.i133, 0
  br i1 %i.bu, label %bb.bb, label %bb.bc, !prof !11

bb.bb:                                            ; preds = %bb.ba
  %i.bv = add nuw i32 %.val.i.i133, 1
  store i32 %i.bv, ptr %i.bc, align 4, !tbaa !10
  br label %lean_inc.exit113

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i134 = icmp eq i32 %.val.i.i133, 0
  br i1 %.not.i.i134, label %lean_inc.exit113, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.bw = atomicrmw sub ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit113

lean_inc.exit113:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %.val.i136 = load i32, ptr %i.at, align 8, !tbaa !10 ; 4 uses
  %i.bx = icmp eq i32 %.val.i136, 1
  br i1 %i.bx, label %.preheader.i139, label %bb.bi

.preheader.i139:                                  ; preds = %lean_inc.exit113
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 4 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i7.i141 = icmp eq i64 %i.ca, 0
  br i1 %.not.i7.i141, label %bb.be, label %lean_dec.exit.i142

bb.be:                                            ; preds = %.preheader.i139
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !10 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.bf, label %bb.bg, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !10
  br label %lean_dec.exit.i142

bb.bg:                                            ; preds = %bb.be
  %.not.i.i.i146 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i146, label %lean_dec.exit.i142, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #5
  br label %lean_dec.exit.i142

lean_dec.exit.i142:                               ; preds = %bb.bh, %bb.bg, %bb.bf, %.preheader.i139
  tail call void @lean_free_object(ptr noundef nonnull %i.at) #5
  br label %lean_dec_ref_known.exit147

bb.bi:                                            ; preds = %lean_inc.exit113
  %i.ce = icmp sgt i32 %.val.i136, 1
  br i1 %i.ce, label %bb.bj, label %bb.bk, !prof !11

bb.bj:                                            ; preds = %bb.bi
  %i.cf = add nsw i32 %.val.i136, -1
  store i32 %i.cf, ptr %i.at, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit147

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i137 = icmp eq i32 %.val.i136, 0
  br i1 %.not.i.i137, label %lean_dec_ref_known.exit147, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #5
  br label %lean_dec_ref_known.exit147

lean_dec_ref_known.exit147:                       ; preds = %lean_dec.exit.i142, %bb.bj, %bb.bk, %bb.bl
  br i1 %.not.i114, label %bb.bm, label %lean_dec.exit

bb.bm:                                            ; preds = %lean_dec_ref_known.exit147
  %i.cg = load i32, ptr %i.bc, align 4, !tbaa !10 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.bn, label %bb.bo, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.bc, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bn, %bb.bo, %bb.bp, %lean_dec_ref_known.exit147
  %i.cj = and i64 %i.bd, 510
  %i.ck = icmp eq i64 %i.cj, 0
  %l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__1_value.l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__3_value = select i1 %i.ck, ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__1_value, ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__3_value ; 2 uses
  br i1 %i.ai, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %lean_dec.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.093, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 16777215
  store i32 %i.cn, ptr %i.cl, align 4
  br label %bb.bt

bb.br:                                            ; preds = %lean_dec.exit
  tail call void @lean_inc_heartbeat() #5
  %i.co = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.bs, label %lean_alloc_ctor.exit151

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit151:                          ; preds = %bb.br
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 1, ptr %i.co, align 4, !tbaa !10
  store i32 65552, ptr %i.cq, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %lean_dec_ref_known.exit, %bb.bq, %lean_alloc_ctor.exit151, %lean_alloc_ctor.exit132
  %.093.sink = phi ptr [ %.093, %bb.bq ], [ %i.co, %lean_alloc_ctor.exit151 ], [ %i.br, %lean_alloc_ctor.exit132 ], [ %.093, %lean_dec_ref_known.exit ] ; 2 uses
  %l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__1_value.l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__3_value.sink = phi ptr [ %l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__1_value.l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__3_value, %bb.bq ], [ %l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__1_value.l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__3_value, %lean_alloc_ctor.exit151 ], [ %i.bc, %lean_alloc_ctor.exit132 ], [ %i.bc, %lean_dec_ref_known.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.093.sink, i64 8
  store ptr %l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__1_value.l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___closed__3_value.sink, ptr %i.cr, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #5
  %i.cs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.bu, label %lean_alloc_ctor.exit152

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit152:                          ; preds = %bb.bt
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 1, ptr %i.cs, align 4, !tbaa !10
  store i32 65552, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %.093.sink, ptr %i.cv, align 8, !tbaa !13
  %i.cw = tail call ptr @l___private_Std_Async_Basic_0__Std_Async_BaseAsync_bind_bindAsyncTask(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %i.cs, ptr noundef %1) #5
  br label %bb.bv

bb.bv:                                            ; preds = %lean_alloc_ctor.exit152, %lean_alloc_ctor.exit121
  %.1 = phi ptr [ %i.ae, %lean_alloc_ctor.exit121 ], [ %i.cw, %lean_alloc_ctor.exit152 ]
  ret ptr %.1
}

declare ptr @l_Std_Http_Internal_Mock_Client_getSendChan(ptr noundef) local_unnamed_addr #1

declare ptr @l_Std_CloseableChannel_close___redArg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i32, ptr %0, align 4, !tbaa !10  ; 3 uses
  %i.a = icmp sgt i32 %.val.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i, 2
  store i32 %i.b, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref_n.exit

bb.c:                                             ; preds = %bb.a
  %.not.i82 = icmp eq i32 %.val.i, 0
  br i1 %.not.i82, label %lean_inc_ref_n.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %0, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @lean_alloc_object(i64 noundef 40) #5 ; 8 uses
  store i32 1, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = or disjoint i32 %i.g, -184549376
  store i32 %i.h, ptr %i.e, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendRaw___lam__1___boxed, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 4, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i16 2, ptr %i.k, align 2, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendRaw___closed__0_value, ptr %i.m, align 8, !tbaa !13
  %i.n = tail call ptr @lean_alloc_object(i64 noundef 56) #5 ; 10 uses
  store i32 1, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = or disjoint i32 %i.q, -184549376
  store i32 %i.r, ptr %i.o, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__1___boxed, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i16 6, ptr %i.t, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  store i16 4, ptr %i.u, align 2, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %1, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %3, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %4, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.d, ptr %i.y, align 8, !tbaa !13
  %i.z = tail call ptr @lean_alloc_object(i64 noundef 48) #5 ; 9 uses
  store i32 1, ptr %i.z, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 65535
  %i.ad = or disjoint i32 %i.ac, -184549376
  store i32 %i.ad, ptr %i.aa, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendClose___lam__2___boxed, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i16 5, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  store i16 3, ptr %i.ag, align 2, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.n, ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %0, ptr %i.aj, align 8, !tbaa !13
  %i.ak = tail call ptr @lean_alloc_object(i64 noundef 56) #5 ; 10 uses
  store i32 1, ptr %i.ak, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 65535
  %i.ao = or disjoint i32 %i.an, -184549376
  store i32 %i.ao, ptr %i.al, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendRaw___lam__6___boxed, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i16 5, ptr %i.aq, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  store i16 4, ptr %i.ar, align 2, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %0, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %2, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %i.z, ptr %i.av, align 8, !tbaa !13
  %i.aw = tail call ptr @lean_io_as_task(ptr noundef nonnull %i.ak, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  %i.ax = tail call ptr @lean_task_bind_core(ptr noundef %i.aw, ptr noundef nonnull @l___private_Std_Http_Test_Helpers_0__Std_Http_Internal_Test_sendRaw___closed__1_value, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #5 ; 5 uses
  %i.ay = tail call ptr @lean_task_get(ptr noundef %i.ax) #5 ; 17 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i4.i = icmp eq i64 %i.ba, 0               ; 4 uses
  br i1 %.not.i4.i, label %bb.e, label %lean_inc.exit.i

bb.e:                                             ; preds = %lean_inc_ref_n.exit
  %.val.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !10 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.bb, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.bc = add nuw i32 %.val.i.i.i, 1
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !10
  br label %lean_inc.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i5.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i5.i, label %lean_inc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_inc_ref_n.exit
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = and i64 %i.be, 1
end_hunk_0
