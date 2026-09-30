Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hdmi_chmap?download=true
inline.NumInlined: 27
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hdmi_chmap_ctl_put:bb.a
  %i.c = getelementptr i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 120
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !annotation !12
  %i.j = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.k = load i32, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = add nuw i32 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.k
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !36

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.09.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.m = sext i32 %.09.i to i64
  %i.n = getelementptr [8 x i8], ptr %i.j, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %or.cond.i = icmp ugt i64 %i.o, 36
  br i1 %or.cond.i, label %chmap_value_check.exit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.p = getelementptr i8, ptr %i.f, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.f, i64 88       ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call zeroext i1 %i.q(ptr noundef %i.s, i32 noundef %i.i) #16
  br i1 %i.t, label %bb.c, label %chmap_value_check.exit

bb.c:                                             ; preds = %.loopexit
  %i.u = getelementptr i8, ptr %0, i64 76
  %.val = load i32, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %0, i64 80
  %.val49 = load i32, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %1, i64 60
  %.val50 = load i32, ptr %i.w, align 4
  %i.x = sub i32 %.val50, %.val                   ; 2 uses
  %i.y = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %.val49, i32 %i.x) #18, !srcloc !38
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.x, %i.z
  %.val51 = load ptr, ptr %i.d, align 8
  %i.ab = getelementptr i8, ptr %i.d, i64 8
  %.val52 = load i32, ptr %i.ab, align 8
  %i.ac = sext i32 %.val52 to i64
  %i.ad = getelementptr [56 x i8], ptr %.val51, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 208
  %.01.i = load ptr, ptr %i.ae, align 8           ; 2 uses
  %.not2.i = icmp eq ptr %.01.i, null
  br i1 %.not2.i, label %chmap_value_check.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.c, %bb.d
  %.03.i = phi ptr [ %.0.i, %bb.d ], [ %.01.i, %bb.c ] ; 3 uses
  %i.af = getelementptr i8, ptr %.03.i, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp eq i32 %i.ag, %i.aa
  br i1 %i.ah, label %snd_pcm_chmap_substream.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i53
  %i.ai = getelementptr i8, ptr %.03.i, i64 224
  %.0.i = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i54 = icmp eq ptr %.0.i, null
  br i1 %.not.i54, label %chmap_value_check.exit, label %.lr.ph.i53, !llvm.loop !37

snd_pcm_chmap_substream.exit:                     ; preds = %.lr.ph.i53
  %i.aj = getelementptr i8, ptr %.03.i, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not45 = icmp eq ptr %i.ak, null
  br i1 %.not45, label %chmap_value_check.exit, label %bb.e

bb.e:                                             ; preds = %snd_pcm_chmap_substream.exit
  %i.al = load i32, ptr %i.ak, align 8
  switch i32 %i.al, label %chmap_value_check.exit [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.e ], [ 1, %bb.f ]
  %i.am = load i64, ptr %i.j, align 8
  %i.an = trunc i64 %i.am to i8
  store i8 %i.an, ptr %i.a, align 1
  %i.ao = getelementptr i8, ptr %1, i64 80
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %1, i64 88
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr i8, ptr %1, i64 96
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = trunc i64 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %1, i64 104
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %1, i64 112
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %1, i64 120
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = getelementptr i8, ptr %1, i64 128
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %i.f, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.r, align 8
  call void %i.br(ptr noundef %i.bs, i32 noundef %i.i, ptr noundef nonnull %i.b) #16
  %i.bt = load i64, ptr %i.a, align 1
  %i.bu = load i64, ptr %i.b, align 8
  %i.bv = icmp ne i64 %i.bt, %i.bu
  %i.bw = zext i1 %i.bv to i32
  %.not46 = icmp eq i32 %i.bw, 0
  br i1 %.not46, label %chmap_value_check.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = call fastcc i32 @hdmi_manual_channel_allocation(i32 noundef 8, ptr noundef nonnull %i.a) #17, !srcloc !39 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %chmap_value_check.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr i8, ptr %i.f, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not47 = icmp eq ptr %i.ca, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = call i32 %i.ca(ptr noundef %i.f, i32 noundef %i.bx, i32 noundef 8, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not48 = icmp eq i32 %i.cb, 0
  br i1 %.not48, label %bb.k, label %chmap_value_check.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = getelementptr i8, ptr %i.f, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.r, align 8
  call void %i.cd(ptr noundef %i.ce, i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef %.0) #16
  br label %chmap_value_check.exit

chmap_value_check.exit:                           ; preds = %.lr.ph.i, %bb.d, %bb.c, %bb.j, %bb.h, %bb.g, %bb.e, %snd_pcm_chmap_substream.exit, %.loopexit, %bb.k
  %.037 = phi i32 [ %i.cb, %bb.j ], [ 0, %bb.d ], [ 0, %bb.g ], [ -22, %bb.h ], [ 0, %bb.k ], [ -16, %bb.e ], [ 0, %.loopexit ], [ 0, %snd_pcm_chmap_substream.exit ], [ 0, %bb.c ], [ -22, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @hdmi_chmap_ctl_tlv(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp ult i32 %2, 8
  br i1 %i.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.k = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %3, i32 0, i64 4, i64 %i.j) #18, !srcloc !42 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = ptrtoint ptr %i.l to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.m)
  %sext.mask = and i64 %i.n, 4294967295
  %.not = icmp eq i64 %sext.mask, 0
  br i1 %.not, label %hweight_long.exit, label %bb.o

hweight_long.exit:                                ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %i.p = getelementptr i8, ptr %i.e, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.e, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 %i.q(ptr noundef %i.s, i32 noundef %i.h) #16 ; 10 uses
  %4 = and i32 %i.t, 2
  %.not.1.i = icmp eq i32 %4, 0
  %.1.1.i = select i1 %.not.1.i, i32 5, i32 1029
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 2
  %.1.2.i = or disjoint i32 %.1.1.i, %i.v         ; 2 uses
  %i.w = and i32 %i.t, 8
  %.not.3.i = icmp eq i32 %i.w, 0
  %5 = or disjoint i32 %.1.2.i, 160
  %.1.3.i = select i1 %.not.3.i, i32 %.1.2.i, i32 %5
  %i.x = shl i32 %i.t, 2
  %i.y = and i32 %i.x, 64
  %.1.4.i = or disjoint i32 %.1.3.i, %i.y         ; 2 uses
  %i.z = and i32 %i.t, 32
  %.not.5.i = icmp eq i32 %i.z, 0
  %i.aa = or disjoint i32 %.1.4.i, 24
  %.1.5.i = select i1 %.not.5.i, i32 %.1.4.i, i32 %i.aa ; 2 uses
  %i.ab = and i32 %i.t, 64
  %.not.6.i = icmp eq i32 %i.ab, 0
  %i.ac = or i32 %.1.5.i, 768
  %.1.6.i = select i1 %.not.6.i, i32 %.1.5.i, i32 %i.ac ; 2 uses
  %i.ad = and i32 %i.t, 128
  %.not.7.i = icmp eq i32 %i.ad, 0
  %i.ae = or i32 %.1.6.i, 6144
  %.1.7.i = select i1 %.not.7.i, i32 %.1.6.i, i32 %i.ae ; 2 uses
  %i.af = and i32 %i.t, 256
  %.not.8.i = icmp eq i32 %i.af, 0
  %i.ag = or i32 %.1.7.i, 40960
  %.1.8.i = select i1 %.not.8.i, i32 %.1.7.i, i32 %i.ag
  %i.ah = shl i32 %i.t, 7
  %i.ai = and i32 %i.ah, 65536
  %i.aj = shl i32 %i.t, 4
  %i.ak = and i32 %i.aj, 16384
  %.1.9.i = or disjoint i32 %i.ak, %i.ai
  %.1.10.i = or i32 %.1.9.i, %.1.8.i              ; 2 uses
  %i.al = zext nneg i32 %.1.10.i to i64
  %i.am = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.an = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.al, i64 %i.am) #19, !srcloc !43 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ap)
  %.not106148 = icmp ult i64 %i.ao, 2
  br i1 %.not106148, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %hweight_long.exit
  %i.aq = getelementptr i8, ptr %3, i64 8
  %i.ar = add i32 %2, -8
  %i.as = getelementptr i8, ptr %i.e, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %i.at = phi i64 [ 2, %.preheader.lr.ph ], [ %i.cf, %bb.n ]
  %.083152 = phi i32 [ %i.ar, %.preheader.lr.ph ], [ %.285, %bb.n ]
  %.087151 = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %.289, %bb.n ]
  %.091150 = phi i32 [ 2, %.preheader.lr.ph ], [ %i.ce, %bb.n ] ; 5 uses
  %.092149 = phi i32 [ 0, %.preheader.lr.ph ], [ %.294, %bb.n ]
  %i.au = shl i32 %.091150, 2                     ; 6 uses
  %i.av = add nuw i32 %i.au, 8
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %i.ax = icmp ugt i32 %i.au, 32
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.m
  %.184147 = phi i32 [ %.083152, %.preheader ], [ %.285, %bb.m ] ; 4 uses
  %.188146 = phi ptr [ %.087151, %.preheader ], [ %.289, %bb.m ] ; 5 uses
  %.193145 = phi i32 [ %.092149, %.preheader ], [ %.294, %bb.m ] ; 3 uses
  %.098144 = phi i32 [ 0, %.preheader ], [ %i.cc, %bb.m ]
  %.099143 = phi ptr [ @channel_allocations, %.preheader ], [ %i.cd, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !12
  %i.ay = getelementptr i8, ptr %.099143, i64 36
  %i.az = load i32, ptr %i.ay, align 4
  %.not109 = icmp eq i32 %i.az, %.091150
  br i1 %.not109, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr i8, ptr %.099143, i64 40
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = and i32 %i.bb, %.1.10.i
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.o, align 8
  %i.bf = call i32 %i.be(ptr noundef %i.e, ptr noundef %.099143, i32 noundef %.091150) #16 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = icmp ult i32 %.184147, 8
  br i1 %i.bh, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = call i64 @llvm.read_register.i64(metadata !0)
  %i.bj = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %.188146, i32 %i.bf, i64 4, i64 %i.bi) #18, !srcloc !44 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  %i.bm = ptrtoint ptr %i.bk to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.bl)
  %sext.mask111 = and i64 %i.bm, 4294967295
  %.not110 = icmp eq i64 %sext.mask111, 0
  br i1 %.not110, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr i8, ptr %.188146, i64 4
  %i.bo = call i64 @llvm.read_register.i64(metadata !0)
  %i.bp = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.bn, i32 %i.au, i64 4, i64 %i.bo) #18, !srcloc !45 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = ptrtoint ptr %i.bq to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.br)
  %sext.mask113 = and i64 %i.bs, 4294967295
  %.not112 = icmp eq i64 %sext.mask113, 0
  br i1 %.not112, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr i8, ptr %.188146, i64 8   ; 2 uses
  %i.bu = add i32 %.184147, -8                    ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %i.au
  br i1 %i.bv, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = sub nuw i32 %i.bu, %i.au
  %i.bx = add i32 %i.av, %.193145
  %i.by = load ptr, ptr %i.as, align 8
  call void %i.by(ptr noundef %i.e, ptr noundef %.099143, ptr noundef nonnull %i.a, i32 noundef %.091150) #16
  br i1 %i.ax, label %bb.k, label %check_copy_size.exit, !prof !46

bb.k:                                             ; preds = %bb.j
  call void @__copy_overflow(i32 noundef range(i32 0, -2147483648) 32, i64 noundef range(i64 -2147483648, 2147483648) %i.aw) #16
  br label %.critedge

check_copy_size.exit:                             ; preds = %bb.j
  %i.bz = call i64 @_copy_to_user(ptr noundef %i.bt, ptr noundef nonnull %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.aw) #16
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.l, label %.critedge

bb.l:                                             ; preds = %check_copy_size.exit
  %i.cb = getelementptr [4 x i8], ptr %i.bt, i64 %i.at
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c, %bb.d
  %.294 = phi i32 [ %.193145, %bb.c ], [ %.193145, %bb.d ], [ %i.bx, %bb.l ] ; 3 uses
  %.289 = phi ptr [ %.188146, %bb.c ], [ %.188146, %bb.d ], [ %i.cb, %bb.l ] ; 2 uses
  %.285 = phi i32 [ %.184147, %bb.c ], [ %.184147, %bb.d ], [ %i.bw, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cc = add nuw nsw i32 %.098144, 1             ; 2 uses
  %i.cd = getelementptr i8, ptr %.099143, i64 44
  %exitcond.not = icmp eq i32 %i.cc, 50
  br i1 %exitcond.not, label %bb.n, label %bb.c, !llvm.loop !40

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.h, %check_copy_size.exit, %bb.k
  %.2.ph = phi i32 [ -14, %bb.k ], [ -14, %check_copy_size.exit ], [ -19, %bb.e ], [ -12, %bb.f ], [ -14, %bb.g ], [ -12, %bb.i ], [ -14, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = add i32 %.091150, 1                     ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %.not106 = icmp ult i64 %i.ao, %i.cf
  br i1 %.not106, label %._crit_edge, label %.preheader, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.n, %hweight_long.exit
  %.092.lcssa = phi i32 [ 0, %hweight_long.exit ], [ %.294, %bb.n ]
  %i.cg = getelementptr i8, ptr %3, i64 4
  %i.ch = call i64 @llvm.read_register.i64(metadata !0)
  %i.ci = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.cg, i32 %.092.lcssa, i64 4, i64 %i.ch) #18, !srcloc !47 ; 2 uses
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1
  %i.cl = ptrtoint ptr %i.cj to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.ck)
  %sext.mask108 = and i64 %i.cl, 4294967295
  %.not107 = icmp eq i64 %sext.mask108, 0
  %. = select i1 %.not107, i32 0, i32 -14
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %._crit_edge, %bb.b, %bb.a
  %.4 = phi i32 [ -14, %bb.b ], [ -12, %bb.a ], [ %.2.ph, %.critedge ], [ %., %._crit_edge ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -1, 259) i32 @hdmi_chmap_cea_alloc_validate_get_type(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, %2
  %. = select i1 %.not, i32 258, i32 -1
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hdmi_cea_alloc_to_tlv_chmap(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 7, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.016 = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]    ; 3 uses
  %i.b = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.c)
end_hunk_0
