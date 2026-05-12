inline.NumInlined: 701
inline.NumDeleted: 154
begin_hunk_0_@after_exec:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_execarg_addopt(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
end_hunk_0
begin_hunk_1_@rb_execarg_addopt:bb.a
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %i.j = alloca i64, align 8                      ; 15 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
end_hunk_1
begin_hunk_2_@rb_execarg_addopt:bb.a
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %rlimit_type_by_sym.exit
  %3 = load i64, ptr %i.j, align 8, !tbaa !47     ; 2 uses
  %i.bl = getelementptr i8, ptr %.1.i.i, i64 96   ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
end_hunk_2
begin_hunk_3_@rb_execarg_addopt:bb.a

bb.m:                                             ; preds = %bb.l, %bb.k
  %.017.i = phi i64 [ %i.bo, %bb.l ], [ %i.bm, %bb.k ]
  %i.br = call i64 @rb_check_array_type(i64 noundef %3) #26 ; 5 uses
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.t, label %bb.n

end_hunk_3
begin_hunk_4_@rb_execarg_addopt:bb.a
  unreachable

bb.t:                                             ; preds = %bb.m
  %i.ch = call i64 @rb_to_int(i64 noundef %3) #26 ; 2 uses
  br label %rb_execarg_addopt_rlimit.exit

rb_execarg_addopt_rlimit.exit:                    ; preds = %bb.q, %bb.r, %bb.t
end_hunk_4
begin_hunk_5_@rb_execarg_addopt:bb.a
  unreachable

bb.x:                                             ; preds = %bb.v
  %4 = load i64, ptr %i.j, align 8, !tbaa !47     ; 5 uses
  %i.cx = and i64 %4, -5
  %.not76 = icmp eq i64 %i.cx, 0
  br i1 %.not76, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = icmp eq i64 %4, 20
  br i1 %i.cy, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = trunc i64 %4 to i1
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = call i64 @rb_fix2int(i64 noundef %4) #26
  br label %rb_num2int_inline.exit

bb.ab:                                            ; preds = %bb.z
  %i.db = call i64 @rb_num2int(i64 noundef %4) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.aa, %bb.ab
end_hunk_5
begin_hunk_6_@rb_execarg_addopt:bb.a
  unreachable

bb.an:                                            ; preds = %bb.al
  %5 = load i64, ptr %i.j, align 8, !tbaa !47
  %i.eg = call i64 @rb_get_path(i64 noundef %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  store ptr %i.j, ptr %i.l, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.l) #26, !srcloc !89
end_hunk_6
begin_hunk_7_@rb_execarg_addopt:bb.a
  br i1 %i.es, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %6 = load i64, ptr %i.j, align 8, !tbaa !47
  %i.et = call i64 @rb_num2uint(i64 noundef %6) #26
  %i.eu = getelementptr i8, ptr %.1.i.i, i64 64   ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 8            ; 2 uses
  %i.ew = and i16 %i.ev, 4
end_hunk_7
begin_hunk_8_@rb_execarg_addopt:bb.a
  unreachable

check_uid_switch.exit:                            ; preds = %bb.be
  %7 = load i64, ptr %i.j, align 8, !tbaa !47
  %i.gf = call fastcc i32 @obj2uid0(i64 noundef %7)
  %i.gg = getelementptr i8, ptr %.1.i.i, i64 108
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !92
  %i.gh = load i16, ptr %i.ga, align 8
end_hunk_8
begin_hunk_9_@rb_execarg_addopt:bb.a
  unreachable

check_gid_switch.exit:                            ; preds = %bb.bj
  %8 = load i64, ptr %i.j, align 8, !tbaa !47
  %i.gq = call fastcc i32 @obj2gid0(i64 noundef %8)
  %i.gr = getelementptr i8, ptr %.1.i.i, i64 112
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !93
  %i.gs = load i16, ptr %i.gl, align 8
end_hunk_9
begin_hunk_10_@rb_execarg_addopt:bb.a

rb_type.exit.thread74:                            ; preds = %rb_type.exit.thread74.sink.split, %bb.f, %rb_type.exit, %rb_type.exit, %rb_type.exit
  %i.hk = phi i64 [ %1, %bb.f ], [ %1, %rb_type.exit ], [ %1, %rb_type.exit ], [ %1, %rb_type.exit ], [ %.sink, %rb_type.exit.thread74.sink.split ] ; 12 uses
  %9 = load i64, ptr %i.j, align 8, !tbaa !47     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %9, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.hl = icmp eq i64 %9, 0
  %i.hm = and i64 %9, 7
  %i.hn = icmp ne i64 %i.hm, 0
  %i.ho = or i1 %i.hl, %i.hn
  br i1 %i.ho, label %bb.br, label %rb_type.exit.i

bb.br:                                            ; preds = %rb_type.exit.thread74
  %i.hp = call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 62)
  switch i64 %i.hp, label %bb.bs [
    i64 0, label %rb_type.exit.thread.i
    i64 1, label %rb_type.exit.thread.i
end_hunk_10
begin_hunk_11_@rb_execarg_addopt:bb.a
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hq = trunc i64 %9 to i1
  br i1 %i.hq, label %rb_type.exit.thread79.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hr = and i64 %9, 254
  %i.hs = icmp eq i64 %i.hr, 12
  br i1 %i.hs, label %rb_type.exit.thread77.i, label %rb_type.exit.thread.i

rb_type.exit.i:                                   ; preds = %rb_type.exit.thread74
  %i.ht = inttoptr i64 %9 to ptr                  ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !71
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = and i32 %i.hv, 31
end_hunk_11
begin_hunk_12_@rb_execarg_addopt:bb.a
  unreachable

bb.cc:                                            ; preds = %rb_type.exit.thread.i, %rb_type.exit.i
  %i.iu = phi i64 [ %i.nl, %rb_type.exit.thread.i ], [ %9, %rb_type.exit.i ]
  %i.iv = call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.iu)
  br label %rb_type.exit.thread79.i

rb_type.exit.thread79.i:                          ; preds = %bb.cc, %rb_type.exit.i, %bb.bs
  %i.iw = phi i64 [ %9, %bb.bs ], [ %i.iv, %bb.cc ], [ %9, %rb_type.exit.i ]
  %i.ix = getelementptr i8, ptr %.1.i.i, i64 120  ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !95
  %i.iz = call fastcc i64 @check_exec_redirect1(i64 noundef %i.iy, i64 noundef %i.hk, i64 noundef %i.iw)
end_hunk_12
begin_hunk_13_@rb_execarg_addopt:bb.a
  br label %check_exec_redirect.exit

bb.cd:                                            ; preds = %rb_type.exit.i
  %i.ja = call i64 @rb_ary_entry(i64 noundef %9, i64 noundef 0) #27 ; 7 uses
  store i64 %i.ja, ptr %i.b, align 8, !tbaa !47
  %i.jb = load i64, ptr %i.ht, align 8, !tbaa !71 ; 2 uses
  %i.jc = and i64 %i.jb, 8192
end_hunk_13
begin_hunk_14_@rb_execarg_addopt:bb.a
  br i1 %i.ju, label %bb.ci, label %RB_SYMBOL_P.exit.thread81.i

bb.ci:                                            ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.jv = call i64 @rb_ary_entry(i64 noundef %9, i64 noundef 1) #27
  %i.jw = call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.jv)
  %i.jx = getelementptr i8, ptr %.1.i.i, i64 144  ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !96
end_hunk_14
begin_hunk_15_@rb_execarg_addopt:bb.a
  %i.kb = load ptr, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  store volatile i64 %i.ka, ptr %i.kb, align 8, !tbaa !47
  %10 = load i64, ptr %i.a, align 8, !tbaa !47    ; 2 uses
  %i.kc = call i64 @rb_ary_entry(i64 noundef %10, i64 noundef 1) #27 ; 6 uses
  store i64 %i.kc, ptr %i.c, align 8, !tbaa !47
  %i.kd = icmp eq i64 %i.kc, 4
  br i1 %i.kd, label %bb.cl, label %bb.cj
end_hunk_15
begin_hunk_16_@rb_execarg_addopt:bb.a
bb.cl:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit67.thread.i, %bb.ck, %RB_SYMBOL_P.exit.thread81.i
  %.sink.i = phi i64 [ %i.kq, %bb.ck ], [ %i.kr, %rbimpl_RB_TYPE_P_fastpath.exit67.thread.i ], [ 1, %RB_SYMBOL_P.exit.thread81.i ]
  store i64 %.sink.i, ptr %i.c, align 8, !tbaa !47
  %i.ks = call i64 @rb_ary_entry(i64 noundef %10, i64 noundef 2) #27 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 4
  br i1 %i.kt, label %bb.cn, label %bb.cm

end_hunk_16
begin_hunk_17_@rb_execarg_addopt:bb.a
  br label %check_exec_redirect.exit

bb.co:                                            ; preds = %rb_type.exit.i
  store i64 %9, ptr %i.b, align 8, !tbaa !47
  %i.lh = call i64 @rb_get_path(i64 noundef %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store ptr %i.b, ptr %i.e, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #26, !srcloc !99
end_hunk_17
begin_hunk_18_@rb_execarg_addopt:bb.a
  br label %check_exec_redirect.exit

rb_type.exit.thread.i:                            ; preds = %rb_type.exit.i, %bb.bt, %bb.br, %bb.br, %bb.br, %bb.br
  %i.nl = call i64 @rb_io_check_io(i64 noundef %9) #26 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, 4
  br i1 %i.nm, label %bb.cz, label %bb.cc

end_hunk_18
