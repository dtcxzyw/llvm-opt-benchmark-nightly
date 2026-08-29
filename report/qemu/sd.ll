Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sd?download=true
inline.NumInlined: 354
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@sd_cmd_GEN_CMD:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @sd_version_str.sdphy_version, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %sd_version_str.exit.i

sd_version_str.exit.i:                            ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ @.str.117, %bb.c ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.118, ptr noundef %i.g, i32 noundef %i.h, ptr noundef %i.i, ptr noundef %.0.i.i) #18
  br label %sd_invalid_state_for_cmd.exit

bb.e:                                             ; preds = %bb.a
  %i.p = and i64 %1, 4294967296
  %.not31 = icmp eq i64 %i.p, 0
  br i1 %.not31, label %sd_cmd_to_receivingdata.exit, label %sd_cmd_to_sendingdata.exit

sd_cmd_to_sendingdata.exit:                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.q, i8 noundef 0, i64 noundef 512, i1 noundef false) #18
  store i32 5, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 0, ptr %i.s, align 8
  br label %sd_invalid_state_for_cmd.exit

sd_cmd_to_receivingdata.exit:                     ; preds = %bb.e
  store i32 6, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i64 512, ptr %i.v, align 8
  br label %sd_invalid_state_for_cmd.exit

sd_invalid_state_for_cmd.exit:                    ; preds = %sd_version_str.exit.i, %bb.b, %sd_cmd_to_receivingdata.exit, %sd_cmd_to_sendingdata.exit
  %.0 = phi i32 [ 1, %sd_cmd_to_receivingdata.exit ], [ 1, %sd_cmd_to_sendingdata.exit ], [ -2, %bb.b ], [ -2, %sd_version_str.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @sd_cmd_optional(ptr nofree noundef readonly captures(none) %0, i64 %1, i8 %2) #0 {
bb.a:
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 1024
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.extract.trunc = trunc i64 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = and i32 %.sroa.01.0.extract.trunc, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.109, ptr noundef %i.e, i32 noundef %i.f) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 -2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2, 2) i32 @sd_cmd_SWITCH_FUNCTION(ptr noundef %0, i64 %1, i8 %2) #0 {
bb.a:
  %.sroa.5.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 824        ; 2 uses
  %.val = load i32, ptr %i.a, align 8             ; 5 uses
  switch i32 %.val, label %bb.b [
    i32 -1, label %bb.c
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %sd_mode.exit
    i32 4, label %sd_mode.exit
    i32 5, label %sd_mode.exit
    i32 6, label %sd_mode.exit
    i32 7, label %sd_mode.exit
    i32 8, label %sd_mode.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 364, ptr noundef nonnull @__func__.sd_mode, ptr noundef null) #20
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = load i32, ptr @qemu_loglevel, align 4
  %i.c = and i32 %i.b, 2048
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %sd_invalid_mode_for_cmd.exit, label %sd_mode.exit.i, !prof !7

sd_mode.exit.i:                                   ; preds = %bb.c
  %.sroa.03.0.extract.trunc.i = trunc i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = and i32 %.sroa.03.0.extract.trunc.i, 255
  %i.h = icmp ne i32 %.val, -1
  %spec.select = zext i1 %i.h to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @sd_mode_name.mode_name, i64 %spec.select
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  %i.m = icmp ugt i8 %i.l, 3
  br i1 %i.m, label %sd_version_str.exit.i, label %bb.d

bb.d:                                             ; preds = %sd_mode.exit.i
  %i.n = zext nneg i8 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @sd_version_str.sdphy_version, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  br label %sd_version_str.exit.i

sd_version_str.exit.i:                            ; preds = %bb.d, %sd_mode.exit.i
  %.0.i6.i = phi ptr [ %i.p, %bb.d ], [ @.str.117, %sd_mode.exit.i ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.110, ptr noundef %i.f, i32 noundef %i.g, ptr noundef %i.j, ptr noundef %.0.i6.i) #18
  br label %sd_invalid_mode_for_cmd.exit

sd_mode.exit:                                     ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 816
  %.val47 = load ptr, ptr %i.q, align 8           ; 3 uses
  %i.r = icmp eq ptr %.val47, @sd_proto_spi
  %.not46 = icmp eq i32 %.val, 4                  ; 2 uses
  %or.cond = or i1 %.not46, %i.r
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %sd_mode.exit
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 2048
  %.not.i52 = icmp eq i32 %i.t, 0
  br i1 %.not.i52, label %sd_invalid_mode_for_cmd.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %.sroa.03.0.extract.trunc.i53 = trunc i64 %1 to i32
  %i.u = load ptr, ptr %.val47, align 8
  %i.v = and i32 %.sroa.03.0.extract.trunc.i53, 255
  %i.w = tail call fastcc ptr @sd_state_name(i32 noundef %.val)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.y = load i8, ptr %i.x, align 4               ; 2 uses
  %i.z = icmp ugt i8 %i.y, 3
  br i1 %i.z, label %sd_version_str.exit.i54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @sd_version_str.sdphy_version, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %sd_version_str.exit.i54

sd_version_str.exit.i54:                          ; preds = %bb.g, %bb.f
  %.0.i.i55 = phi ptr [ %i.ac, %bb.g ], [ @.str.117, %bb.f ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.118, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w, ptr noundef %.0.i.i55) #18
  br label %sd_invalid_mode_for_cmd.exit

bb.h:                                             ; preds = %sd_mode.exit
  %i.ad = icmp slt i64 %1, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 952
  store <8 x i8> <i8 0, i8 1, i8 -128, i8 1, i8 -128, i8 1, i8 -128, i8 1>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <4 x i8> <i8 -128, i8 1, i8 -128, i8 67>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i8 -128, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 965
  store i8 3, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 966 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.ai, i8 noundef 0, i64 noundef 3, i1 noundef false) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 900
  br i1 %i.ad, label %.split.preheader.i, label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = trunc i64 %.sroa.5.0.extract.shift to i8
  %i.an = or i8 %i.al, %i.am
  store i8 %i.an, ptr %i.ak, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 967 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = lshr i64 %1, 40
  %i.ar = trunc i64 %i.aq to i8
  %i.as = or i8 %i.ap, %i.ar
  store i8 %i.as, ptr %i.ao, align 1
  %i.at = load i8, ptr %i.ai, align 2
  %i.au = lshr i64 %1, 48
  %i.av = trunc i64 %i.au to i8
  %i.aw = or i8 %i.at, %i.av
  br label %sd_function_switch.exit

.split.preheader.i:                               ; preds = %bb.h
  %i.ax = and i32 %.sroa.5.0.extract.trunc, 15    ; 2 uses
  %.not.i57 = icmp eq i32 %i.ax, 15
  br i1 %.not.i57, label %.split.1.i, label %bb.i

bb.i:                                             ; preds = %.split.preheader.i
  %i.ay = trunc nuw nsw i32 %i.ax to i8           ; 2 uses
  store i8 %i.ay, ptr %i.aj, align 4
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.i, %.split.preheader.i
  %.pre-phi.i = phi i8 [ %i.ay, %bb.i ], [ 15, %.split.preheader.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = lshr i32 %.sroa.5.0.extract.trunc, 4
  %i.bc = and i32 %i.bb, 15                       ; 2 uses
  %.not.1.i = icmp eq i32 %i.bc, 15
  br i1 %.not.1.i, label %.split.2.i, label %bb.j

bb.j:                                             ; preds = %.split.1.i
  %i.bd = trunc nuw nsw i32 %i.bc to i8           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 901
  store i8 %i.bd, ptr %i.be, align 1
  %3 = shl nuw i8 %i.bd, 4
  br label %.split.2.i

.split.2.i:                                       ; preds = %.split.1.i, %bb.j
  %.tr.i.pre-phi = phi i8 [ %3, %bb.j ], [ -16, %.split.1.i ]
  %i.bf = or i8 %.pre-phi.i, %.tr.i.pre-phi
  %i.bg = or i8 %i.bf, %i.ba
  store i8 %i.bg, ptr %i.az, align 8
  %i.bh = lshr i32 %.sroa.5.0.extract.trunc, 8
  %i.bi = and i32 %i.bh, 15                       ; 2 uses
  %.not.2.i = icmp eq i32 %i.bi, 15
  br i1 %.not.2.i, label %.split.3.i, label %bb.k

bb.k:                                             ; preds = %.split.2.i
  %i.bj = trunc nuw nsw i32 %i.bi to i8           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 902
  store i8 %i.bj, ptr %i.bk, align 2
  br label %.split.3.i

.split.3.i:                                       ; preds = %bb.k, %.split.2.i
  %.pre-phi37.i = phi i8 [ %i.bj, %bb.k ], [ 15, %.split.2.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 967 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = lshr i32 %.sroa.5.0.extract.trunc, 12   ; 2 uses
  %i.bo = and i32 %i.bn, 15                       ; 2 uses
  %.not.3.i = icmp eq i32 %i.bo, 15
  br i1 %.not.3.i, label %.split.4.i, label %bb.l

bb.l:                                             ; preds = %.split.3.i
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 903
  store i8 %i.bp, ptr %i.bq, align 1
  br label %.split.4.i

.split.4.i:                                       ; preds = %bb.l, %.split.3.i
  %i.br = shl nuw nsw i32 %i.bn, 4
  %i.bs = trunc i32 %i.br to i8
  %i.bt = or i8 %.pre-phi37.i, %i.bs
  %i.bu = or i8 %i.bt, %i.bm
  store i8 %i.bu, ptr %i.bl, align 1
  %i.bv = lshr i32 %.sroa.5.0.extract.trunc, 16
  %i.bw = and i32 %i.bv, 15                       ; 2 uses
  %.not.4.i = icmp eq i32 %i.bw, 15
  br i1 %.not.4.i, label %.split.5.i, label %bb.m

bb.m:                                             ; preds = %.split.4.i
  %i.bx = trunc nuw nsw i32 %i.bw to i8           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 %i.bx, ptr %i.by, align 8
  br label %.split.5.i

.split.5.i:                                       ; preds = %bb.m, %.split.4.i
  %.pre-phi39.i = phi i8 [ %i.bx, %bb.m ], [ 15, %.split.4.i ]
  %i.bz = load i8, ptr %i.ai, align 2
  %i.ca = lshr i32 %.sroa.5.0.extract.trunc, 20   ; 2 uses
  %i.cb = and i32 %i.ca, 15                       ; 2 uses
  %.not.5.i = icmp eq i32 %i.cb, 15
  br i1 %.not.5.i, label %.split33.us.loopexit.i, label %bb.n

bb.n:                                             ; preds = %.split.5.i
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 905
  store i8 %i.cc, ptr %i.cd, align 1
  br label %.split33.us.loopexit.i

.split33.us.loopexit.i:                           ; preds = %bb.n, %.split.5.i
  %i.ce = shl nuw nsw i32 %i.ca, 4
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = or i8 %.pre-phi39.i, %i.cf
  %i.ch = or i8 %i.cg, %i.bz
  br label %sd_function_switch.exit

sd_function_switch.exit:                          ; preds = %.split.us.preheader.i, %.split33.us.loopexit.i
  %storemerge = phi i8 [ %i.aw, %.split.us.preheader.i ], [ %i.ch, %.split33.us.loopexit.i ]
  store i8 %storemerge, ptr %i.ai, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 969
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ci, i8 noundef 0, i64 noundef 47, i1 noundef false) #18
  br i1 %.not46, label %bb.r, label %bb.o

bb.o:                                             ; preds = %sd_function_switch.exit
  %i.cj = load i32, ptr @qemu_loglevel, align 4
  %i.ck = and i32 %i.cj, 2048
  %.not.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i, label %sd_invalid_mode_for_cmd.exit, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %1 to i32
  %i.cl = load ptr, ptr %.val47, align 8
  %i.cm = and i32 %.sroa.03.0.extract.trunc.i.i, 255
  %i.cn = tail call fastcc ptr @sd_state_name(i32 noundef %.val)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.cp = load i8, ptr %i.co, align 4             ; 2 uses
  %i.cq = icmp ugt i8 %i.cp, 3
  br i1 %i.cq, label %sd_version_str.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = zext nneg i8 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @sd_version_str.sdphy_version, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8
  br label %sd_version_str.exit.i.i

sd_version_str.exit.i.i:                          ; preds = %bb.q, %bb.p
  %.0.i.i.i = phi ptr [ %i.ct, %bb.q ], [ @.str.117, %bb.p ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.118, ptr noundef %i.cl, i32 noundef %i.cm, ptr noundef %i.cn, ptr noundef %.0.i.i.i) #18
  br label %sd_invalid_mode_for_cmd.exit

bb.r:                                             ; preds = %sd_function_switch.exit
  store i32 5, ptr %i.a, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i64 64, ptr %i.cw, align 8
  br label %sd_invalid_mode_for_cmd.exit

sd_invalid_mode_for_cmd.exit:                     ; preds = %bb.r, %sd_version_str.exit.i.i, %bb.o, %sd_version_str.exit.i54, %bb.e, %sd_version_str.exit.i, %bb.c
  %.0 = phi i32 [ -2, %bb.c ], [ -2, %sd_version_str.exit.i ], [ -2, %sd_version_str.exit.i54 ], [ -2, %bb.e ], [ -2, %sd_version_str.exit.i.i ], [ 1, %bb.r ], [ -2, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2, 8) i32 @sd_cmd_SEND_IF_COND(ptr nofree noundef captures(none) %0, i64 %1, i8 %2) #0 {
bb.a:
  %.sroa.29.0.extract.shift = lshr i64 %1, 32
  %.sroa.29.0.extract.trunc = trunc nuw i64 %.sroa.29.0.extract.shift to i32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 2048
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %sd_invalid_state_for_cmd.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %.sroa.03.0.extract.trunc.i = trunc i64 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = and i32 %.sroa.03.0.extract.trunc.i, 255
  %i.i = tail call fastcc ptr @sd_state_name(i32 noundef %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %i.l = icmp ugt i8 %i.k, 3
  br i1 %i.l, label %sd_version_str.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @sd_version_str.sdphy_version, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %sd_version_str.exit.i

sd_version_str.exit.i:                            ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ @.str.117, %bb.c ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.118, ptr noundef %i.g, i32 noundef %i.h, ptr noundef %i.i, ptr noundef %.0.i.i) #18
  br label %sd_invalid_state_for_cmd.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 828 ; 2 uses
  store i32 0, ptr %i.p, align 4
  %.not13 = icmp ult i64 %1, 1099511627776
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %.sroa.29.0.extract.trunc, -256
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 0, -255) %i.q, i1 false)
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = lshr i32 %.sroa.29.0.extract.trunc, %i.s
  %.not14 = icmp eq i32 %i.t, 0
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr i8, ptr %0, i64 816
  %.val = load ptr, ptr %i.u, align 8
  %i.v = icmp eq ptr %.val, @sd_proto_spi
  %i.w = select i1 %i.v, i32 7, i32 0
  br label %sd_invalid_state_for_cmd.exit

bb.h:                                             ; preds = %bb.f
  store i32 %.sroa.29.0.extract.trunc, ptr %i.p, align 4
  br label %sd_invalid_state_for_cmd.exit

sd_invalid_state_for_cmd.exit:                    ; preds = %sd_version_str.exit.i, %bb.b, %bb.h, %bb.g
  %.0 = phi i32 [ 7, %bb.h ], [ %i.w, %bb.g ], [ -2, %bb.b ], [ -2, %sd_version_str.exit.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal noundef range(i32 -2, 2) i32 @spi_cmd_SEND_CSD(ptr noundef initializes((824, 828), (928, 940)) %0, i64 %1, i8 %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 noundef 16, i1 noundef false) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i64 16, ptr %i.f, align 8
  ret i32 1
}
end_hunk_0
