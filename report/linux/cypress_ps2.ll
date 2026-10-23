Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cypress_ps2?download=true
inline.NumInlined: 68
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cypress_reconnect:bb.a
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %cypress_detect.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1
  %i.i = icmp eq i8 %i.h, 51
  %i.j = load i8, ptr %i.c, align 1
  %i.k = icmp eq i8 %i.j, -52
  %or.cond.not10.i = select i1 %i.i, i1 %i.k, i1 false
  %.mux.i = select i1 %or.cond.not10.i, i32 0, i32 -19
  br label %cypress_detect.exit

cypress_detect.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %.mux.i, %bb.c ], [ -19, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %.not = icmp ne i32 %.0.i, 0                    ; 2 uses
  %i.l = add nsw i32 %.0, -1
  %i.m = icmp samesign ugt i32 %.0, 1
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %cypress_detect.exit
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 336
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.p, ptr noundef @.str.7) #11
  br label %bb.g

bb.e:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false), !annotation !10
  %i.r = call fastcc i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 17, ptr noundef nonnull %i.a) #8, !srcloc !12 ; 2 uses
  %.not.i17 = icmp eq i32 %i.r, 0
  br i1 %.not.i17, label %cypress_set_absolute_mode.exit.thread, label %bb.f

cypress_set_absolute_mode.exit.thread:            ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.q, i64 8        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, -16
  %i.v = or disjoint i32 %i.u, 8
  store i32 %i.v, ptr %i.s, align 4
  %.val.i = load ptr, ptr %0, align 8
  %i.w = getelementptr i8, ptr %.val.i, i64 4
  store i32 5, ptr %i.w, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 336
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.z, ptr noundef @.str.8) #11
  br label %bb.g

bb.g:                                             ; preds = %cypress_set_absolute_mode.exit.thread, %bb.f, %bb.d
  %.011 = phi i32 [ %.0.i, %bb.d ], [ %i.r, %bb.f ], [ 0, %cypress_set_absolute_mode.exit.thread ]
  ret i32 %.011
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @cypress_ps2_ext_cmd(ptr noundef %0, i8 noundef zeroext range(i8 0, 4) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 17 uses
  tail call void @ps2_begin_command(ptr noundef %i.a) #9
  %i.b = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext -24, i32 noundef 200) #9 ; 2 uses
  %i.c = icmp eq i32 %i.b, -11
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext 0, i32 noundef 200) #9 ; 2 uses
  %i.e = icmp eq i32 %i.d, -11
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext 10, i32 noundef 200) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext range(i8 -24, 11) %1, i32 noundef 200) #9 ; 2 uses
  %i.h = icmp eq i32 %i.g, -11
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext range(i8 -24, 11) %1, i32 noundef 200) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.i, %bb.f ], [ %i.g, %bb.e ]
  %.not22 = icmp eq i32 %.1, 0
  br i1 %.not22, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %i.j = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext -24, i32 noundef 200) #9 ; 2 uses
  %i.k = icmp eq i32 %i.j, -11
  br i1 %i.k, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext 0, i32 noundef 200) #9 ; 2 uses
  %i.m = icmp eq i32 %i.l, -11
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext 10, i32 noundef 200) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.1 = phi i32 [ %i.n, %bb.j ], [ %i.l, %bb.i ], [ %i.j, %bb.h ]
  %.not.1 = icmp eq i32 %.0.1, 0
  br i1 %.not.1, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.o = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext range(i8 -24, 11) %1, i32 noundef 200) #9 ; 2 uses
  %i.p = icmp eq i32 %i.o, -11
  br i1 %i.p, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.q = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext range(i8 -24, 11) %1, i32 noundef 200) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.1 = phi i32 [ %i.q, %bb.m ], [ %i.o, %bb.l ]
  %.not22.1 = icmp eq i32 %.1.1, 0
  br i1 %.not22.1, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.r = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext -24, i32 noundef 200) #9 ; 2 uses
  %i.s = icmp eq i32 %i.r, -11
  br i1 %i.s, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.t = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext 0, i32 noundef 200) #9 ; 2 uses
  %i.u = icmp eq i32 %i.t, -11
  br i1 %i.u, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext 10, i32 noundef 200) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0.2 = phi i32 [ %i.v, %bb.q ], [ %i.t, %bb.p ], [ %i.r, %bb.o ]
  %.not.2 = icmp eq i32 %.0.2, 0
  br i1 %.not.2, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.w = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext range(i8 -24, 11) %1, i32 noundef 200) #9
  %i.x = icmp eq i32 %i.w, -11
  br i1 %i.x, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.y = tail call i32 @ps2_sendbyte(ptr noundef %i.a, i8 noundef zeroext range(i8 -24, 11) %1, i32 noundef 200) #9 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.n, %bb.g
  tail call void @ps2_end_command(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ps2_begin_command(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ps2_end_command(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @cypress_process_packet(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 {
bb.a:
  %1 = alloca %struct.cytp_report_data, align 4   ; 19 uses
  %2 = alloca [2 x %struct.input_mt_pos], align 8 ; 9 uses
  %i.a = alloca [2 x i32], align 8                ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 13 uses
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.e = getelementptr i8, ptr %0, i64 168
  %i.f = load i8, ptr %i.e, align 8               ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.g = lshr i8 %i.f, 6                          ; 4 uses
  %i.h = icmp eq i8 %i.g, 1
  %.sink53.i.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sink53.i.sroa.gep33 = getelementptr inbounds nuw i8, ptr %1, i64 24
  br i1 %i.h, label %cypress_get_finger_count.exit.thread49.i, label %bb.b

cypress_get_finger_count.exit.thread49.i:         ; preds = %bb.a
  store i32 1, ptr %1, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.j = shl nuw i8 %i.f, 1
  %i.k = and i8 %i.j, 8                           ; 2 uses
  store i8 %i.k, ptr %i.i, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i8 %i.g to i32
  %i.m = and i8 %i.f, 32
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %cypress_get_finger_count.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.selectcmp.i.i = icmp eq i8 %i.g, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 5, i32 0
  %switch.selectcmp8.i.i = icmp eq i8 %i.g, 0
  br i1 %switch.selectcmp8.i.i, label %cypress_get_finger_count.exit.thread.i, label %cypress_get_finger_count.exit.i

cypress_get_finger_count.exit.thread.i:           ; preds = %bb.c
  store i32 4, ptr %1, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.o = shl nuw nsw i8 %i.f, 1
  %i.p = and i8 %i.o, 8                           ; 2 uses
  store i8 %i.p, ptr %i.n, align 4
  br label %bb.f

cypress_get_finger_count.exit.i:                  ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %switch.select.i.i, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  store i32 %.0.i.i, ptr %1, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.r = shl i8 %i.f, 1
  %i.s = and i8 %i.r, 8                           ; 4 uses
  store i8 %i.s, ptr %i.q, align 4
  switch i32 %.0.i.i, label %bb.f [
    i32 1, label %bb.d
    i32 0, label %cypress_parse_packet.exit
  ]

bb.d:                                             ; preds = %cypress_get_finger_count.exit.i, %cypress_get_finger_count.exit.thread49.i
  %i.t = phi i8 [ %i.k, %cypress_get_finger_count.exit.thread49.i ], [ %i.s, %cypress_get_finger_count.exit.i ] ; 2 uses
  %i.u = phi ptr [ %i.i, %cypress_get_finger_count.exit.thread49.i ], [ %i.q, %cypress_get_finger_count.exit.i ] ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 169
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = and i8 %i.w, 112
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 4
  %i.aa = getelementptr i8, ptr %0, i64 170
  %i.ab = load i8, ptr %i.aa, align 2
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac             ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = and i8 %i.w, 7
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr i8, ptr %0, i64 171
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %i.d, i64 8
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 8
  %.not42.i = icmp eq i32 %i.ap, 0
  br i1 %.not42.i, label %cypress_parse_packet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %0, i64 172
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = zext i8 %i.ar to i32
  br label %.sink.split.i

bb.f:                                             ; preds = %cypress_get_finger_count.exit.i, %cypress_get_finger_count.exit.thread.i
  %3 = phi i32 [ 4, %cypress_get_finger_count.exit.thread.i ], [ %.0.i.i, %cypress_get_finger_count.exit.i ] ; 2 uses
  %i.at = phi i8 [ %i.p, %cypress_get_finger_count.exit.thread.i ], [ %i.s, %cypress_get_finger_count.exit.i ] ; 2 uses
  %i.au = phi ptr [ %i.n, %cypress_get_finger_count.exit.thread.i ], [ %i.q, %cypress_get_finger_count.exit.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %0, i64 169
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = and i8 %i.aw, 112
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 4
  %i.ba = getelementptr i8, ptr %0, i64 170
  %i.bb = load i8, ptr %i.ba, align 2
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = and i8 %i.aw, 7
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr i8, ptr %0, i64 171
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr i8, ptr %i.d, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, 8
  %.not.i = icmp eq i32 %i.bp, 0                  ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr i8, ptr %0, i64 172
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  store i32 %i.bs, ptr %.sink53.i.sroa.gep, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = phi i32 [ %i.bs, %bb.g ], [ 0, %bb.f ]
  %i.bu = getelementptr i8, ptr %0, i64 173
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = and i8 %i.bv, -16
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 4
  %i.bz = getelementptr i8, ptr %0, i64 174
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.by, %i.cb            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.cc, ptr %i.cd, align 4
  %i.ce = and i8 %i.bv, 15
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = getelementptr i8, ptr %0, i64 175
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ck, ptr %i.cl, align 4
  br i1 %.not.i, label %cypress_parse_packet.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
  %4 = phi i32 [ 0, %bb.e ], [ %i.ck, %bb.h ]
  %5 = phi i32 [ 0, %bb.e ], [ %i.cc, %bb.h ]
  %6 = phi i32 [ %i.al, %bb.e ], [ %i.bl, %bb.h ]
  %7 = phi i32 [ %i.ad, %bb.e ], [ %i.bd, %bb.h ]
  %8 = phi i32 [ 1, %bb.e ], [ %3, %bb.h ]
  %.sink53.i.sroa.phi = phi ptr [ %.sink53.i.sroa.gep, %bb.e ], [ %.sink53.i.sroa.gep33, %bb.h ]
  %.sink.i = phi i32 [ %i.as, %bb.e ], [ %i.bt, %bb.h ]
  %.ph.i = phi i8 [ %i.t, %bb.e ], [ %i.at, %bb.h ]
  %.ph51.i = phi ptr [ %i.u, %bb.e ], [ %i.au, %bb.h ]
  store i32 %.sink.i, ptr %.sink53.i.sroa.phi, align 4
  br label %cypress_parse_packet.exit

cypress_parse_packet.exit:                        ; preds = %cypress_get_finger_count.exit.i, %bb.d, %bb.h, %.sink.split.i
  %9 = phi i32 [ 0, %cypress_get_finger_count.exit.i ], [ 0, %bb.d ], [ %i.ck, %bb.h ], [ %4, %.sink.split.i ]
  %10 = phi i32 [ 0, %cypress_get_finger_count.exit.i ], [ 0, %bb.d ], [ %i.cc, %bb.h ], [ %5, %.sink.split.i ]
  %11 = phi i32 [ 0, %cypress_get_finger_count.exit.i ], [ %i.al, %bb.d ], [ %i.bl, %bb.h ], [ %6, %.sink.split.i ]
  %12 = phi i32 [ 0, %cypress_get_finger_count.exit.i ], [ %i.ad, %bb.d ], [ %i.bd, %bb.h ], [ %7, %.sink.split.i ]
  %13 = phi i32 [ %.0.i.i, %cypress_get_finger_count.exit.i ], [ 1, %bb.d ], [ %3, %bb.h ], [ %8, %.sink.split.i ] ; 4 uses
  %i.cm = phi i8 [ %i.s, %cypress_get_finger_count.exit.i ], [ %i.t, %bb.d ], [ %i.at, %bb.h ], [ %.ph.i, %.sink.split.i ] ; 2 uses
  %i.cn = phi ptr [ %i.q, %cypress_get_finger_count.exit.i ], [ %i.u, %bb.d ], [ %i.au, %bb.h ], [ %.ph51.i, %.sink.split.i ]
  %i.co = and i8 %i.f, 3
  %.not45.i = icmp eq i8 %i.cm, 0
  %.masked.i = and i8 %i.f, 2
  %i.cp = or disjoint i8 %i.cm, %.masked.i
  %spec.select.i = select i1 %.not45.i, i8 %i.co, i8 %i.cp
  store i8 %spec.select.i, ptr %i.cn, align 4
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %13, i32 2) ; 3 uses
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %cypress_parse_packet.exit
  %14 = call i32 @input_mt_assign_slots(ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %spec.store.select, i32 noundef 0) #9 ; 0 uses
  br label %._crit_edge38

.lr.ph:                                           ; preds = %cypress_parse_packet.exit
  %i.cq = trunc nsw i32 %12 to i16
  store i16 %i.cq, ptr %2, align 8
  %i.cr = trunc nsw i32 %11 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.cr, ptr %i.cs, align 2
  %exitcond.not = icmp eq i32 %13, 1
  br i1 %exitcond.not, label %.lr.ph37, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ct = trunc nsw i32 %10 to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 %i.ct, ptr %i.cu, align 4
  %i.cv = trunc nsw i32 %9 to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i16 %i.cv, ptr %i.cw, align 2
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.i, %.lr.ph
  %i.cx = call i32 @input_mt_assign_slots(ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %2, i32 noundef %spec.store.select, i32 noundef 0) #9 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %wide.trip.count43 = zext nneg i32 %spec.store.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph37, %bb.j
  %indvars.iv40 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next41, %bb.j ] ; 3 uses
  %i.cz = getelementptr [12 x i8], ptr %i.cy, i64 %indvars.iv40 ; 3 uses
  %i.da = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv40
  %i.db = load i32, ptr %i.da, align 4
  call void @input_event(ptr noundef %i.c, i32 noundef 3, i32 noundef 47, i32 noundef %i.db) #9
  %i.dc = call zeroext i1 @input_mt_report_slot_state(ptr noundef %i.c, i32 noundef 0, i1 noundef zeroext true) #9 ; 0 uses
  %i.dd = load i32, ptr %i.cz, align 4
  call void @input_event(ptr noundef %i.c, i32 noundef 3, i32 noundef 53, i32 noundef %i.dd) #9
  %i.de = getelementptr i8, ptr %i.cz, i64 4
  %i.df = load i32, ptr %i.de, align 4
  call void @input_event(ptr noundef %i.c, i32 noundef 3, i32 noundef 54, i32 noundef %i.df) #9
  %i.dg = getelementptr i8, ptr %i.cz, i64 8
  %i.dh = load i32, ptr %i.dg, align 4
  call void @input_event(ptr noundef %i.c, i32 noundef 3, i32 noundef 58, i32 noundef %i.dh) #9
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38, label %bb.j, !llvm.loop !19

._crit_edge38:                                    ; preds = %bb.j, %._crit_edge.thread
  call void @input_mt_sync_frame(ptr noundef %i.c) #9
  call void @input_mt_report_finger_count(ptr noundef %i.c, i32 noundef %13) #9
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dj = load i8, ptr %i.di, align 4             ; 3 uses
  %i.dk = and i8 %i.dj, 1
  %i.dl = zext nneg i8 %i.dk to i32
  call void @input_event(ptr noundef %i.c, i32 noundef 1, i32 noundef 272, i32 noundef range(i32 0, 2) %i.dl) #9
  %i.dm = lshr i8 %i.dj, 1
  %i.dn = and i8 %i.dm, 1
  %i.do = zext nneg i8 %i.dn to i32
  call void @input_event(ptr noundef %i.c, i32 noundef 1, i32 noundef 273, i32 noundef range(i32 0, 2) %i.do) #9
  %i.dp = lshr i8 %i.dj, 2
  %i.dq = and i8 %i.dp, 1
  %i.dr = zext nneg i8 %i.dq to i32
  call void @input_event(ptr noundef %i.c, i32 noundef 1, i32 noundef 274, i32 noundef range(i32 0, 2) %i.dr) #9
  call void @input_event(ptr noundef %i.c, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{i64 4150}
!12 = !{i64 8458}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 4584}
!15 = !{i64 5889}
!16 = !{i64 2148550552}
!17 = !{i64 2148552109}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
end_hunk_0
