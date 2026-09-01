Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate?download=true
inline.NumInlined: 3928
inline.NumDeleted: 504
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gen_INC:bb.a
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @tcg_gen_atomic_add_fetch_i64_chk(ptr noundef %i.i, ptr noundef %i.s, ptr noundef %i.l, i64 noundef range(i64 -2147483648, 2147483648) %i.o, i32 noundef %i.b, i32 noundef 1) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.i, ptr noundef %i.i, ptr noundef %i.t) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.c, align 8
  tail call fastcc void @gen_setcc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = trunc i32 %i.b to i8
  %i.ab = add i8 %i.aa, 28
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.ab, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_DEC(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((160, 176), (192, 193)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_movi_i64(ptr noundef %i.d, i64 noundef -1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 4
  %.not = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @tcg_gen_atomic_add_fetch_i64_chk(ptr noundef %i.i, ptr noundef %i.s, ptr noundef %i.l, i64 noundef range(i64 -2147483648, 2147483648) %i.o, i32 noundef %i.b, i32 noundef 1) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.i, ptr noundef %i.i, ptr noundef %i.t) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.c, align 8
  tail call fastcc void @gen_setcc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = trunc i32 %i.b to i8
  %i.ab = add i8 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.ab, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PUSHA(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 156
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  br label %bb.b

bb.b:                                             ; preds = %gen_lea_ss_ofs.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %gen_lea_ss_ofs.exit.i ] ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  %i.i = trunc i64 %indvars.iv.i to i32
  %i.j = or i32 %i.i, -8
  %i.k = shl i32 %i.j, %i.b                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.g, ptr noundef %i.h, i64 noundef range(i64 -2147483648, 2147483648) %i.l) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.m = and i32 %.val.i.i, 32768
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 2 uses
  %i.n = and i32 %.val.i.i, 32
  %.not2.i.i.i = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not2.i.i.i, i32 1, i32 2
  %i.p = select i1 %.not.i.i.i, i32 %i.o, i32 3   ; 3 uses
  %i.q = and i32 %.val.i.i, 64
  %.not27.i.i.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not.i.i.i, i32 2, i32 3      ; 2 uses
  br i1 %.not27.i.i.i, label %gen_lea_ss_ofs.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp samesign ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @tcg_gen_ext_i64(ptr noundef %i.g, ptr noundef %.0.i.i, i32 noundef %i.p) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.021.i.i.i = phi ptr [ %i.g, %bb.f ], [ %.0.i.i, %bb.e ]
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.g, ptr noundef %.021.i.i.i, ptr noundef %i.t) #14
  br label %gen_lea_ss_ofs.exit.i

gen_lea_ss_ofs.exit.i:                            ; preds = %bb.g, %bb.d
  %.1.i.i.i = phi ptr [ %i.g, %bb.g ], [ %.0.i.i, %bb.d ]
  %.0.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.p, %bb.d ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.g, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.u = sub nuw nsw i64 7, %indvars.iv.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @cpu_regs, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %.val.i = load i32, ptr %i.e, align 4
  %i.y = sext i32 %.val.i to i64
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.w, ptr noundef %i.ab, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i32 noundef %i.b, i32 noundef 1) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.h, label %bb.b, !llvm.loop !19

bb.h:                                             ; preds = %gen_lea_ss_ofs.exit.i
  %i.ac = shl i32 -8, %i.b
  %.val13.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @tcg_constant_i64(i64 noundef %i.ad) #14 ; 2 uses
  %i.af = and i32 %.val13.i, 32800
  %cond.i.i = icmp eq i32 %i.af, 0
  br i1 %cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %i.ae) #14
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.ai, ptr noundef %i.ai, ptr noundef %i.ag, i32 noundef 0, i32 noundef 16) #14
  br label %gen_pusha.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = and i32 %.val13.i, 32
  %.not2.i.i14.i = icmp eq i32 %i.aj, 0
  %i.ak = and i32 %.val13.i, 32768
  %.not.i.i15.i = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not2.i.i14.i, i32 1, i32 2
  %i.am = select i1 %.not.i.i15.i, i32 %i.al, i32 3
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.an, ptr noundef %i.an, ptr noundef %i.ae) #14
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.ao, ptr noundef %i.ao, i32 noundef %i.am) #14
  br label %gen_pusha.exit

gen_pusha.exit:                                   ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_POPA(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 156
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.h = icmp eq i64 %indvars.iv.i, 3
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = load ptr, ptr %i.c, align 8                ; 7 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32     ; 2 uses
  %i.j = shl i32 %3, %i.b                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %i.j to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %2, ptr noundef %i.i, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %2, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.l = and i32 %.val.i.i, 32768
  %.not.i.i.i = icmp eq i32 %i.l, 0               ; 2 uses
  %i.m = and i32 %.val.i.i, 32
  %.not2.i.i.i = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not2.i.i.i, i32 1, i32 2
  %i.o = select i1 %.not.i.i.i, i32 %i.n, i32 3   ; 3 uses
  %i.p = and i32 %.val.i.i, 64
  %.not27.i.i.i = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not.i.i.i, i32 2, i32 3      ; 2 uses
  br i1 %.not27.i.i.i, label %gen_lea_ss_ofs.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i32 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @tcg_gen_ext_i64(ptr noundef %2, ptr noundef %.0.i.i, i32 noundef %i.o) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.021.i.i.i = phi ptr [ %2, %bb.g ], [ %.0.i.i, %bb.f ]
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %2, ptr noundef %.021.i.i.i, ptr noundef %i.s) #14
  br label %gen_lea_ss_ofs.exit.i

gen_lea_ss_ofs.exit.i:                            ; preds = %bb.h, %bb.e
  %.1.i.i.i = phi ptr [ %2, %bb.h ], [ %.0.i.i, %bb.e ]
  %.0.i.i.i = phi i32 [ %i.q, %bb.h ], [ %i.o, %bb.e ]
  tail call void @tcg_gen_ext_i64(ptr noundef %2, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %.val.i = load i32, ptr %i.f, align 4
  %i.v = sext i32 %.val.i to i64
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.t, ptr noundef %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.v, i32 noundef %i.b, i32 noundef 1) #14
  %i.z = load ptr, ptr %i.e, align 8
  %4 = sub nuw i32 7, %3
  %i.aa = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %i.b, i32 noundef range(i32 -128, -2147483640) %4, ptr noundef null, ptr noundef %i.z) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %gen_lea_ss_ofs.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.j, label %bb.b, !llvm.loop !20

bb.j:                                             ; preds = %bb.i
  %i.ab = shl i32 8, %i.b
  %.val19.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call ptr @tcg_constant_i64(i64 noundef %i.ac) #14 ; 2 uses
  %i.ae = and i32 %.val19.i, 32800
  %cond.i.i = icmp eq i32 %i.ae, 0
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ad) #14
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.ah, ptr noundef %i.ah, ptr noundef %i.af, i32 noundef 0, i32 noundef 16) #14
  br label %gen_popa.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = and i32 %.val19.i, 32
  %.not2.i.i20.i = icmp eq i32 %i.ai, 0
  %i.aj = and i32 %.val19.i, 32768
  %.not.i.i21.i = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not2.i.i20.i, i32 1, i32 2
  %i.al = select i1 %.not.i.i21.i, i32 %i.ak, i32 3
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.am, ptr noundef %i.am, ptr noundef %i.ad) #14
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.an, ptr noundef %i.an, i32 noundef %i.al) #14
  br label %gen_popa.exit

gen_popa.exit:                                    ; preds = %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_BOUND(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 1
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %helper_info_boundw.helper_info_boundl = select i1 %i.f, ptr @helper_info_boundw, ptr @helper_info_boundl ; 2 uses
  %i.r = load ptr, ptr %helper_info_boundw.helper_info_boundl, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.r, ptr noundef nonnull %helper_info_boundw.helper_info_boundl, ptr noundef null, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @decode_63(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32768
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_63.arpl, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.e = load i8, ptr %i.d, align 1, !range !9, !noundef !10
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_63.movsxd, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_63.mov, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_IMUL3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @tcg_gen_ext16s_i64(ptr noundef %i.d, ptr noundef %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_mul_i64(ptr noundef %i.f, ptr noundef %i.f, ptr noundef %i.g) #14
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.e, align 8
  tail call void @tcg_gen_ext16s_i64(ptr noundef %i.h, ptr noundef %i.i) #14
  %i.j = load ptr, ptr %i.e, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  tail call void @tcg_gen_ext32s_i64(ptr noundef %i.l, ptr noundef %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8
  tail call void @tcg_gen_mul_i64(ptr noundef %i.n, ptr noundef %i.n, ptr noundef %i.o) #14
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @tcg_gen_ext32s_i64(ptr noundef %i.p, ptr noundef %i.q) #14
  %i.r = load ptr, ptr %i.m, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.s = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @tcg_gen_muls2_i64(ptr noundef %i.u, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w) #14
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = load ptr, ptr %i.t, align 8
  tail call void @tcg_gen_sari_i64(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 63) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 2123, ptr noundef nonnull @__func__.gen_IMUL3, ptr noundef null) #16
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  tail call void @tcg_gen_sub_i64(ptr noundef %i.aa, ptr noundef %i.aa, ptr noundef %.0) #14
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = trunc nuw nsw i32 %i.b to i8
  %i.ah = add nuw nsw i8 %i.ag, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.ah, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_INS(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.c, ptr noundef %i.e) #14
  tail call void @tcg_gen_ext16u_i32(ptr noundef %i.c, ptr noundef %i.c) #14
  tail call fastcc void @gen_check_io(ptr noundef %0, i32 noundef %i.b, ptr noundef %i.c, i32 noundef 5)
  %i.f = tail call zeroext i1 @translator_io_start(ptr noundef %0) #14 ; 0 uses
  tail call fastcc void @do_gen_string(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull @gen_ins, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_OUTS(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.c, ptr noundef %i.e) #14
  tail call void @tcg_gen_ext16u_i32(ptr noundef %i.c, ptr noundef %i.c) #14
  tail call fastcc void @gen_check_io(ptr noundef %0, i32 noundef %i.b, ptr noundef %i.c, i32 noundef 4)
  %i.f = tail call zeroext i1 @translator_io_start(ptr noundef %0) #14 ; 0 uses
  tail call fastcc void @do_gen_string(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull @gen_outs, i1 noundef zeroext false)
  ret void
}

end_hunk_0
begin_hunk_1_@decode_group2:bb.a
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @decode_group2.group2_gen, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %2, align 8
  %i.g = icmp eq i8 %i.c, 7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -256
  %. = select i1 %i.g, i64 9, i64 10
  %i.k = or disjoint i64 %i.j, %.
  store i64 %i.k, ptr %i.h, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_RET(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 16711680
  %i.d = icmp eq i64 %i.c, 589824
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i16
  %i.h = sext i16 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = tail call fastcc i32 @gen_pop_T0(ptr noundef %0)
  %i.k = shl nuw i32 1, %i.j
  %i.l = add i32 %i.k, %i.i
  %i.m = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %.val = load i32, ptr %i.m, align 8             ; 3 uses
  %i.n = sext i32 %i.l to i64
  %i.o = tail call ptr @tcg_constant_i64(i64 noundef %i.n) #14 ; 2 uses
  %i.p = and i32 %.val, 32800
  %cond.i = icmp eq i32 %i.p, 0
  br i1 %cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.o) #14
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.s, ptr noundef %i.s, ptr noundef %i.q, i32 noundef 0, i32 noundef 16) #14
  br label %gen_stack_update.exit

bb.e:                                             ; preds = %bb.c
  %i.t = and i32 %.val, 32
  %.not2.i.i = icmp eq i32 %i.t, 0
  %i.u = and i32 %.val, 32768
  %.not.i.i = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not2.i.i, i32 1, i32 2
  %i.w = select i1 %.not.i.i, i32 %i.v, i32 3
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.x, ptr noundef %i.x, ptr noundef %i.o) #14
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.y, ptr noundef %i.y, i32 noundef %i.w) #14
  br label %gen_stack_update.exit

gen_stack_update.exit:                            ; preds = %bb.d, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr @cpu_eip, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.ab, ptr noundef %i.aa) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 2
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.f, label %gen_bnd_jmp.exit

bb.f:                                             ; preds = %gen_stack_update.exit
  %i.ah = load i32, ptr %i.m, align 8
  %i.ai = and i32 %i.ah, 100663296
  %or.cond.not.i = icmp eq i32 %i.ai, 100663296
  br i1 %or.cond.not.i, label %bb.g, label %gen_bnd_jmp.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr @tcg_env, align 8
  %i.ak = load ptr, ptr @helper_info_bnd_jmp, align 8
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  tail call void @tcg_gen_call1(ptr noundef %i.ak, ptr noundef nonnull @helper_info_bnd_jmp, ptr noundef null, ptr noundef %i.ao) #14
  br label %gen_bnd_jmp.exit

gen_bnd_jmp.exit:                                 ; preds = %gen_stack_update.exit, %bb.f, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 6, ptr %i.ap, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_LES(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.a, align 4
  %i.b = shl nuw i32 1, %.val
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %i.b to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.d, ptr noundef %i.d, i64 noundef %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 32768
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %gen_lxx_seg.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.i, ptr noundef %i.i) #14
  br label %gen_lxx_seg.exit

gen_lxx_seg.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr i8, ptr %0, i64 156
  %.val.i = load i32, ptr %i.m, align 4
  %i.n = sext i32 %.val.i to i64
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.k, ptr noundef %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i32 noundef 1, i32 noundef 1) #14
  %i.s = load ptr, ptr %i.j, align 8
  tail call fastcc void @gen_movl_seg(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.s, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_LDS(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.a, align 4
  %i.b = shl nuw i32 1, %.val
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %i.b to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.d, ptr noundef %i.d, i64 noundef %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 32768
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %gen_lxx_seg.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.i, ptr noundef %i.i) #14
  br label %gen_lxx_seg.exit

gen_lxx_seg.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr i8, ptr %0, i64 156
  %.val.i = load i32, ptr %i.m, align 4
  %i.n = sext i32 %.val.i to i64
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.k, ptr noundef %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i32 noundef 1, i32 noundef 1) #14
  %i.s = load ptr, ptr %i.j, align 8
  tail call fastcc void @gen_movl_seg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef %i.s, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @decode_group11(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @get_modrm(ptr noundef %0, ptr noundef %1)
  %i.b = and i8 %i.a, 56
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @gen_MOV, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_ENTER(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %.val59.i = load i32, ptr %i.h, align 8         ; 2 uses
  %i.i = and i32 %.val59.i, 32768
  %.not.i.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.j = icmp eq i32 %i.g, 1
  %i.k = select i1 %i.j, i32 1, i32 3
  %.0.i.i = select i1 %.not.i.i, i32 %i.g, i32 %i.k ; 8 uses
  %i.l = shl nuw i32 1, %.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  %i.p = sext i32 %i.l to i64
  tail call void @tcg_gen_subi_i64(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.p) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8              ; 3 uses
  %.val.i.i = load i32, ptr %i.h, align 8         ; 3 uses
  %i.t = and i32 %.val.i.i, 32768
  %.not.i.i.i = icmp eq i32 %i.t, 0               ; 2 uses
  %i.u = and i32 %.val.i.i, 32
  %.not2.i.i.i = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not2.i.i.i, i32 1, i32 2
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3   ; 3 uses
  %i.x = and i32 %.val.i.i, 64
  %.not27.i.i.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i.i.i, i32 2, i32 3      ; 2 uses
  br i1 %.not27.i.i.i, label %gen_lea_ss_ofs.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp samesign ult i32 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_ext_i64(ptr noundef %i.r, ptr noundef %i.s, i32 noundef %i.w) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.b ]
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.r, ptr noundef %.021.i.i.i, ptr noundef %i.aa) #14
  br label %gen_lea_ss_ofs.exit.i

gen_lea_ss_ofs.exit.i:                            ; preds = %bb.d, %bb.a
  %.1.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.a ]
  %.0.i.i.i = phi i32 [ %i.y, %bb.d ], [ %i.w, %bb.a ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.r, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8
  %i.ac = load ptr, ptr %i.q, align 8
  %i.ad = getelementptr i8, ptr %0, i64 156       ; 4 uses
  %.val58.i = load i32, ptr %i.ad, align 4
  %i.ae = sext i32 %.val58.i to i64
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.ab, ptr noundef %i.ai, i64 noundef range(i64 -2147483648, 2147483648) %i.ae, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.aj = and i32 %i.e, 31                        ; 3 uses
  switch i32 %i.aj, label %.lr.ph.preheader.i [
    i32 0, label %gen_enter.exit
    i32 1, label %.loopexit.i
  ]

.lr.ph.preheader.i:                               ; preds = %gen_lea_ss_ofs.exit.i
  %i.ak = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %wide.trip.count.i = and i64 %i.d, 31
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %gen_lea_ss_ofs.exit82.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %gen_lea_ss_ofs.exit82.i ] ; 2 uses
  %i.al = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8 ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.an = shl i32 %2, %.0.i.i                     ; 2 uses
  %i.ao = sub i32 0, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %.not.i63.i = icmp eq i32 %i.an, 0              ; 2 uses
  br i1 %.not.i63.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @tcg_gen_addi_i64(ptr noundef %i.al, ptr noundef %i.am, i64 noundef range(i64 -2147483648, 2147483648) %i.ap) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.i64.i = phi ptr [ %i.al, %bb.e ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %.val.i65.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.aq = and i32 %.val.i65.i, 32768
  %.not.i.i66.i = icmp eq i32 %i.aq, 0            ; 2 uses
  %i.ar = and i32 %.val.i65.i, 32
  %.not2.i.i67.i = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not2.i.i67.i, i32 1, i32 2
  %i.at = select i1 %.not.i.i66.i, i32 %i.as, i32 3 ; 3 uses
  %i.au = and i32 %.val.i65.i, 64
  %.not27.i.i68.i = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not.i.i66.i, i32 2, i32 3   ; 2 uses
  br i1 %.not27.i.i68.i, label %gen_lea_ss_ofs.exit72.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp samesign ult i32 %i.at, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @tcg_gen_ext_i64(ptr noundef %i.al, ptr noundef %.0.i64.i, i32 noundef %i.at) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.021.i.i69.i = phi ptr [ %i.al, %bb.h ], [ %.0.i64.i, %bb.g ]
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.al, ptr noundef %.021.i.i69.i, ptr noundef %i.ax) #14
  br label %gen_lea_ss_ofs.exit72.i

gen_lea_ss_ofs.exit72.i:                          ; preds = %bb.i, %bb.f
  %.1.i.i70.i = phi ptr [ %i.al, %bb.i ], [ %.0.i64.i, %bb.f ]
  %.0.i.i71.i = phi i32 [ %i.av, %bb.i ], [ %i.at, %bb.f ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.al, ptr noundef %.1.i.i70.i, i32 noundef %.0.i.i71.i) #14
  %i.ay = load ptr, ptr %i.q, align 8
  %.val.i = load i32, ptr %i.ad, align 4
  %i.az = sext i32 %.val.i to i64
  %i.ba = load ptr, ptr %i.af, align 8
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.ak, ptr noundef %i.bc, i64 noundef range(i64 -2147483648, 2147483648) %i.az, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.bd = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.be = load ptr, ptr %i.m, align 8             ; 2 uses
  br i1 %.not.i63.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %gen_lea_ss_ofs.exit72.i
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bd, ptr noundef %i.be, i64 noundef range(i64 -2147483648, 2147483648) %i.ap) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %gen_lea_ss_ofs.exit72.i
  %.0.i74.i = phi ptr [ %i.bd, %bb.j ], [ %i.be, %gen_lea_ss_ofs.exit72.i ] ; 3 uses
  %.val.i75.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.bf = and i32 %.val.i75.i, 32768
  %.not.i.i76.i = icmp eq i32 %i.bf, 0            ; 2 uses
  %i.bg = and i32 %.val.i75.i, 32
  %.not2.i.i77.i = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not2.i.i77.i, i32 1, i32 2
  %i.bi = select i1 %.not.i.i76.i, i32 %i.bh, i32 3 ; 3 uses
  %i.bj = and i32 %.val.i75.i, 64
  %.not27.i.i78.i = icmp eq i32 %i.bj, 0
  %i.bk = select i1 %.not.i.i76.i, i32 2, i32 3   ; 2 uses
  br i1 %.not27.i.i78.i, label %gen_lea_ss_ofs.exit82.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bd, ptr noundef %.0.i74.i, i32 noundef %i.bi) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.021.i.i79.i = phi ptr [ %i.bd, %bb.m ], [ %.0.i74.i, %bb.l ]
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.bd, ptr noundef %.021.i.i79.i, ptr noundef %i.bm) #14
  br label %gen_lea_ss_ofs.exit82.i

gen_lea_ss_ofs.exit82.i:                          ; preds = %bb.n, %bb.k
  %.1.i.i80.i = phi ptr [ %i.bd, %bb.n ], [ %.0.i74.i, %bb.k ]
  %.0.i.i81.i = phi i32 [ %i.bk, %bb.n ], [ %i.bi, %bb.k ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bd, ptr noundef %.1.i.i80.i, i32 noundef %.0.i.i81.i) #14
  %i.bn = load ptr, ptr %i.q, align 8
  %.val57.i = load i32, ptr %i.ad, align 4
  %i.bo = sext i32 %.val57.i to i64
  %i.bp = load ptr, ptr %i.af, align 8
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.ak, ptr noundef %i.br, i64 noundef range(i64 -2147483648, 2147483648) %i.bo, i32 noundef %.0.i.i, i32 noundef 1) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !21

.loopexit.i:                                      ; preds = %gen_lea_ss_ofs.exit82.i, %gen_lea_ss_ofs.exit.i
  %i.bs = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.bt = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bu = shl i32 %i.aj, %.0.i.i                  ; 3 uses
  %.not.i83.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i83.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  %i.bv = sub i32 0, %i.bu
  %i.bw = sext i32 %i.bv to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bs, ptr noundef %i.bt, i64 noundef range(i64 -2147483648, 2147483648) %i.bw) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit.i
  %.0.i84.i = phi ptr [ %i.bs, %bb.o ], [ %i.bt, %.loopexit.i ] ; 3 uses
  %.val.i85.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.bx = and i32 %.val.i85.i, 32768
  %.not.i.i86.i = icmp eq i32 %i.bx, 0            ; 2 uses
  %i.by = and i32 %.val.i85.i, 32
  %.not2.i.i87.i = icmp eq i32 %i.by, 0
  %i.bz = select i1 %.not2.i.i87.i, i32 1, i32 2
  %i.ca = select i1 %.not.i.i86.i, i32 %i.bz, i32 3 ; 3 uses
  %i.cb = and i32 %.val.i85.i, 64
  %.not27.i.i88.i = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not.i.i86.i, i32 2, i32 3   ; 2 uses
  br i1 %.not27.i.i88.i, label %gen_lea_ss_ofs.exit92.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp samesign ult i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bs, ptr noundef %.0.i84.i, i32 noundef %i.ca) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.021.i.i89.i = phi ptr [ %i.bs, %bb.r ], [ %.0.i84.i, %bb.q ]
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.bs, ptr noundef %.021.i.i89.i, ptr noundef %i.ce) #14
  br label %gen_lea_ss_ofs.exit92.i

gen_lea_ss_ofs.exit92.i:                          ; preds = %bb.s, %bb.p
  %.1.i.i90.i = phi ptr [ %i.bs, %bb.s ], [ %.0.i84.i, %bb.p ]
  %.0.i.i91.i = phi i32 [ %i.cc, %bb.s ], [ %i.ca, %bb.p ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bs, ptr noundef %.1.i.i90.i, i32 noundef %.0.i.i91.i) #14
  %i.cf = load ptr, ptr %i.m, align 8
  %i.cg = load ptr, ptr %i.q, align 8
  %.val56.i = load i32, ptr %i.ad, align 4
  %i.ch = sext i32 %.val56.i to i64
  %i.ci = load ptr, ptr %i.af, align 8
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.cf, ptr noundef %i.ck, i64 noundef range(i64 -2147483648, 2147483648) %i.ch, i32 noundef %.0.i.i, i32 noundef 1) #14
  br label %gen_enter.exit

gen_enter.exit:                                   ; preds = %gen_lea_ss_ofs.exit.i, %gen_lea_ss_ofs.exit92.i
  %.pre-phi.i = phi i32 [ %i.bu, %gen_lea_ss_ofs.exit92.i ], [ %i.aj, %gen_lea_ss_ofs.exit.i ]
  %i.cl = trunc i64 %i.b to i32
  %i.cm = and i32 %.val59.i, 32
  %.not2.i.i = icmp eq i32 %i.cm, 0
  %i.cn = select i1 %.not2.i.i, i32 1, i32 2
  %i.co = select i1 %.not.i.i, i32 %i.cn, i32 3
  %i.cp = load ptr, ptr %i.m, align 8
  %i.cq = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %.0.i.i, i32 noundef 5, ptr noundef null, ptr noundef %i.cp) ; 0 uses
  %i.cr = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.cs = add i32 %.pre-phi.i, %i.cl
  %i.ct = sext i32 %i.cs to i64
  tail call void @tcg_gen_subi_i64(ptr noundef %i.cr, ptr noundef %i.cr, i64 noundef %i.ct) #14
  %i.cu = load ptr, ptr %i.m, align 8
  %i.cv = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %i.co, i32 noundef 4, ptr noundef null, ptr noundef %i.cu) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_LEAVE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 160
  %.val16.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = and i32 %.val16.i, 32768
  %.not.i.i = icmp eq i32 %i.d, 0                 ; 3 uses
  %i.e = and i32 %.val16.i, 32
  %.not2.i.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not2.i.i, i32 1, i32 2
  %i.g = select i1 %.not.i.i, i32 %i.f, i32 3     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8 ; 3 uses
  %i.k = and i32 %.val16.i, 64
  %.not27.i.i.i = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not.i.i, i32 2, i32 3        ; 2 uses
  br i1 %.not27.i.i.i, label %gen_leave.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ult i32 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_ext_i64(ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.g) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.i, ptr noundef %.021.i.i.i, ptr noundef %i.n) #14
  br label %gen_leave.exit

gen_leave.exit:                                   ; preds = %bb.a, %bb.d
  %.1.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.a ]
  %.0.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.a ]
  %i.o = icmp eq i32 %i.b, 1
  %i.p = select i1 %i.o, i32 1, i32 3
  %.0.i.i = select i1 %.not.i.i, i32 %i.b, i32 %i.p ; 3 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.i, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = getelementptr i8, ptr %0, i64 156
  %.val.i = load i32, ptr %i.t, align 4
  %i.u = sext i32 %.val.i to i64
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.r, ptr noundef %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.u, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8
  %i.ac = shl nuw i32 1, %.0.i.i
  %i.ad = sext i32 %i.ac to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.ad) #14
  %i.ae = load ptr, ptr %i.q, align 8
  %i.af = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %.0.i.i, i32 noundef 5, ptr noundef null, ptr noundef %i.ae) ; 0 uses
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %i.g, i32 noundef 4, ptr noundef null, ptr noundef %i.ag) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_RETF(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 16711680
  %i.d = icmp eq i64 %i.c, 589824
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i16
  %i.h = sext i16 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = and i32 %i.k, 131200
  %or.cond = icmp eq i32 %i.l, 128
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 3 uses
  %i.p = and i32 %i.k, 32768
  %.not.i.i = icmp eq i32 %i.p, 0                 ; 2 uses
  %i.q = and i32 %i.k, 32
  %.not2.i.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not2.i.i, i32 1, i32 2
  %i.s = select i1 %.not.i.i, i32 %i.r, i32 3     ; 3 uses
  %i.t = and i32 %i.k, 64
  %.not27.i.i = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not.i.i, i32 2, i32 3        ; 2 uses
  br i1 %.not27.i.i, label %gen_lea_ss_ofs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @tcg_gen_ext_i64(ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.s) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.021.i.i = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.e ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.n, ptr noundef %.021.i.i, ptr noundef %i.w) #14
  br label %gen_lea_ss_ofs.exit

gen_lea_ss_ofs.exit:                              ; preds = %bb.d, %bb.g
  %.1.i.i = phi ptr [ %i.n, %bb.g ], [ %i.o, %bb.d ]
  %.0.i.i = phi i32 [ %i.u, %bb.g ], [ %i.s, %bb.d ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.n, ptr noundef %.1.i.i, i32 noundef %.0.i.i) #14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4
end_hunk_1
